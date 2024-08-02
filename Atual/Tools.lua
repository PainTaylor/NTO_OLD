setDefaultTab("Tools")
Jumpss = macro(200, 'Jumps', function()end)
onKeyPress(function(keys)
  if Jumpss.isOff() then return end
  if keys == "W" then
    g_game.turn(0) -- north
    say "jump up"
    say "jump down"
  elseif keys == "S" then
    g_game.turn(2) -- south
    say "jump up"
    say "jump down"
  elseif keys == "A" then
    g_game.turn(3) -- west
    say "jump up"
    say "jump down"
  elseif keys == "D" then
    g_game.turn(1) -- east
    say "jump up"
    say "jump down"
   end
end)

UI.Separator()


local showhp = macro(10000,"- % HP Monstros -", function() end)
onCreatureHealthPercentChange(function(creature, healthPercent)
    if showhp:isOff() or creature == player then return end
    if creature:getPosition() and pos() then
        if getDistanceBetween(pos(), creature:getPosition()) <= 10 then
            creature:setText(healthPercent .. "%")
        else
            creature:clearText()
        end
    end
end)

local windowUI = setupUI([[
Panel
  id: mainWindow
  anchors.verticalCenter: parent.verticalCenter
  anchors.horizontalCenter: parent.horizontalCenter
  height: 100
  width: 270
  margin-bottom: 150
  phantom: true

  Label
    id: creatureName
    text: Name: Beez
    color: white
    margin-left: 80
    margin-top: 25
    anchors.top: parent.top
    anchors.left: creature.left
    width: 100
    font: verdana-11px-rounded
    text-horizontal-auto-resize: true
  UICreature
    id: creature
    size: 70 70
    margin-bottom: 30
    anchors.bottom: parent.bottom

  MiniWindowContents
    size: 300 300
    margin: 40 22
    id: secondaryWindow
    HealthBar
      id: healthBar
      background-color: green
      height: 12
      anchors.left: parent.left
      text: 100/100
      text-offset: 0 1
      text-align: center
      font: verdana-11px-rounded
      margin-left: 60
      width: 180
      margin-right: 5

]], modules.game_interface.gameMapPanel);

windowUI:hide();

macro(100, 'TargetNaTela', function()
    local target = g_game.getAttackingCreature();

    if target and not target:isNpc() then
        local hp = target:getHealthPercent();
        if(hp >= 76) then
            windowUI.secondaryWindow.healthBar:setBackgroundColor("#14fe17")
        elseif (hp > 50) then
            windowUI.secondaryWindow.healthBar:setBackgroundColor("#ffff29")
        elseif (hp > 25) then
            windowUI.secondaryWindow.healthBar:setBackgroundColor("#ff9b29")
        elseif (hp > 1) then
            windowUI.secondaryWindow.healthBar:setBackgroundColor("#ff2929")
        end
        windowUI.creature:setOutfit(target:getOutfit());
        windowUI.creatureName:setText(target:getName());

        if (windowUI:isHidden()) then
            windowUI:show();
        end
        windowUI.secondaryWindow.healthBar:setValue(hp, 0, 100);
        windowUI.secondaryWindow.healthBar:setText(hp .. "/100");
    elseif (not target and not windowUI:isHidden()) then
        windowUI:hide();
    end
end);

UI.Separator()


-- config

local keyUp = "="
local keyDown = "-"

-- script

local lockedLevel = pos().z

onPlayerPositionChange(function(newPos, oldPos)
    lockedLevel = pos().z
    modules.game_interface.getMapPanel():unlockVisibleFloor()
end)

onKeyPress(function(keys)
    if keys == keyDown then
        lockedLevel = lockedLevel + 1
        modules.game_interface.getMapPanel():lockVisibleFloor(lockedLevel)
    elseif keys == keyUp then
        lockedLevel = lockedLevel - 1
        modules.game_interface.getMapPanel():lockVisibleFloor(lockedLevel)
    end
end)


-- Target
local creatureId = nil;
local stopAttackRequested = false;
 
keepTarget = {
  setTarget = function(_creatureId)
    creatureId = _creatureId;
  end,
 
  stopAttack = function()
    stopAttackRequested = true;
  end
};
 
 
 
Target = {
 KeyCancel = 'Escape',
 cancelTime = 0,
 cancel = function()
  Target.Id = nil
  Target.get = nil
  Target.cancelTime = now + 100
  g_game.cancelAttack()
 end
 }
 
hotkey(Target.KeyCancel, function()
 Target.cancel()
end)
 
macro(100, 'Target', function()
 if Target.cancelTime >= now then return end
 if g_game.isAttacking() then
  Target.Id = g_game.getAttackingCreature():getId()
 elseif Target.Id then
  Target.get = getCreatureById(Target.Id)
  if Target.get then
   g_game.attack(Target.get)
  end
 end
end)

local STANCE_MODE_CHASE = 1;
local STANCE_MODE_STAND = 0;
local setStanceMode = g_game.setChaseMode;
local getStanceMode = g_game.getChaseMode;
onKeyDown(function(key)
    if (key ~= "6") then return; end
    local stanceMode = getStanceMode();
    if (stanceMode ~= STANCE_MODE_CHASE) then
        return setStanceMode(STANCE_MODE_CHASE);
    end
    setStanceMode(STANCE_MODE_STAND);
end)



BugLock = {};


local availableKeys = {
  ['W'] = { 0, -5 },
  ['S'] = { 0, 5 },
  ['A'] = { -5, 0 },
  ['D'] = { 5, 0 },
  ['C'] = { 5, 5 },
  ['Z'] = { -5, 5 },
  ['Q'] = { -5, -5 },
  ['E'] = { 5, -5 }
};

BugMap = macro(1, "BugMap", function()
if modules.game_walking.wsadWalking then
  BugLock.logic();
end
end)

function BugLock.logic()
  local playerPos = pos();
  local tile;
  for key, value in pairs(availableKeys) do
    if (modules.corelib.g_keyboard.isKeyPressed(key)) then
      playerPos.x = playerPos.x + value[1];
      playerPos.y = playerPos.y + value[2];
      tile = g_map.getTile(playerPos);
      break;
    end
  end
  if (not tile) then return end;
  g_game.use(tile:getTopUseThing());
end

BugLock.icon = addIcon("Bug Map", {item=10384, text="Bug Map", hotkey="Ctrl+Space"}, function(icon, isOn) 
  BugMap.setOn(isOn); 
end);

BugMap.setOn() 

UI.Label("Mana training")
if type(storage.manaTrain) ~= "table" then
  storage.manaTrain = {on=false, title="MP%", text="utevo lux", min=80, max=100}
end

local manatrainmacro = macro(1000, function()
  if TargetBot and TargetBot.isActive() then return end -- pause when attacking
  local mana = math.min(100, math.floor(100 * (player:getMana() / player:getMaxMana())))
  if storage.manaTrain.max >= mana and mana >= storage.manaTrain.min then
    say(storage.manaTrain.text)
  end
end)
manatrainmacro.setOn(storage.manaTrain.on)

UI.DualScrollPanel(storage.manaTrain, function(widget, newParams) 
  storage.manaTrain = newParams
  manatrainmacro.setOn(storage.manaTrain.on)
end)

UI.Separator()

local idz = {13328, 13329, 13330, 13331, 13332, 13333, 13334, 13335, 13336, 13337, 13338, 13339, 13340, 13341, 13342, 13428, 14256, 13429, 13427, 13422, 13430, 13424, 13426, 14255, 13431, 13423, 13421, 13425, 14261, 14263, 14126, 14127, 13344, 14128, 14258, 14259, 14344, 14125, 14253, 14252, 14614}

macro(300, "Ground Collect", function()
    local playerPos = g_game.getLocalPlayer():getPosition()
    local z = playerPos.z 
    local tiles = g_map.getTiles(posz()) 
    for _, tile in ipairs(tiles) do 
        if z ~= playerPos.z then return end 
        if g_game.getAttackingCreature() == nil then
            if getDistanceBetween(pos(), tile:getPosition()) <= 8 then
                local topThing = tile:getTopMoveThing()
                if topThing and table.find(idz, topThing:getId()) then 
                    g_game.move(topThing, {x = 65535, y = SlotAmmo, z = 0}, topThing:getCount()) 
                end
            end
        end
    end
end)

setDefaultTab("Tools")
  ClosestStair = {};
ClosestStair.tile = nil;
ClosestStair.aditionalTiles = { 1067, 595, 5293, 5542,  1648, 1678, 13296, 1646, 5111, 1948, 7771, 8657, 1680, 6264, 1664, 6262, 5291, 6905, 1646, 435 };
ClosestStair.ignoredTiles = { 1949 }
ClosestStair.flags = { ignoreNonPathable = true, precision = 1, ignoreCreatures = false }
ClosestStair.walkTime = now;

local keyToPress = "Space";

ClosestStair.macro = macro(50, 'Escadas', function()
    local tiles = g_map.getTiles(posz());
    local playerPos = pos();
    local closestTile = nil;
    for i, tile in ipairs(tiles) do
        local tilePosition = tile:getPosition();
        local minimapColor = g_map.getMinimapColor(tilePosition);
        local StairColor = minimapColor >= 210 and minimapColor <= 213;
        if (StairColor and not tile:isPathable()) then
            local hasIgnoredTiles = false;
            for index, item in ipairs(tile:getItems()) do
                if (table.find(ClosestStair.ignoredTiles, item:getId())) then
                    hasIgnoredTiles = true;
                    break;
                end
            end
            if (
                not hasIgnoredTiles and
                (closestTile == nil or 
                getDistanceBetween(playerPos, tilePosition) < getDistanceBetween(playerPos, closestTile:getPosition()) or 
                closestTile:getPosition().z ~= posz())
            )  then
                closestTile = tile;
            end
        else
            for index, item in ipairs(tile:getItems()) do
                if (table.find(ClosestStair.aditionalTiles, item:getId())) then
                    if (closestTile == nil or 
                        getDistanceBetween(playerPos, tilePosition) < getDistanceBetween(playerPos, closestTile:getPosition()) or 
                        closestTile:getPosition().z ~= posz()
                    ) then
    
                        closestTile = tile;
    
                        break;
                    end
                end
            end
        end
    end
    
    if (ClosestStair.tile) then
        ClosestStair.tile:setText("");
    end

    ClosestStair.tile = closestTile;

    if (not ClosestStair.tile) then return end;
    
    ClosestStair.tile:setText("Press " .. keyToPress);
end);

onKeyPress(function(keys) 
    if (ClosestStair.macro.isOff()) then return; end
    if (keys ~= keyToPress) then return; end
    if (ClosestStair.tile == nil) then
        return modules.game_textmessage.displayGameMessage('Nenhuma escada/buraco/teleporte');
    end
    local tile = g_map.getTile(ClosestStair.tile:getPosition());
    local tilePosition = tile:getPosition();
    local distance = getDistanceBetween(pos(), tilePosition);

    if (tile:canShoot()) then
        use(tile:getTopUseThing());
    else
        autoWalk(tilePosition, 100, { ignoreNonPathable = true, precision = 1, ignoreCreatures = false, ignoreStairs = true });
    end
    if (ClosestStair.walkTime and ClosestStair.walkTime < now and distance == 1) then
        CaveBot.walkTo(tilePosition, 1, { precision = 1 }); 
        ClosestStair.walkTime = (now + 225);
    end
end)

UI.Separator()

setDefaultTab("Tools")

say('!frags')

onTextMessage(function(mode, text)
  if text:find('Frags diarios:') then
    startindex = text:find(':')
    endindex = text:find('/')
    if startindex and endindex then
        fragdiario = tonumber(text:sub(startindex+1, endindex-1))
        info(fragdiario)
    end
  end
end)

onTextMessage(function(mode, text)
  if text:find('Frags diarios:') then
    sindex = text:find('/')
    eindex = text:find('%.')
    if sindex and eindex then
        LimiteFragDiario = tonumber(text:sub(sindex+1, eindex-1))
        info(LimiteFragDiario)
    end
  end
end)

onTextMessage(function(mode, text)
  if text:find('The murder of') then
    fragdiario = fragdiario + 1
  end
end)

macro(100, 'Safe Red', function()
  if fragdiario == nil and LimiteFragDiario == nil then return end
  if (fragdiario >= LimiteFragDiario) then
    g_game.setSafeFight(1)
    atkname.setOff()
  end
end)

xfrag = 200
yfrag = 175

local widget = setupUI([[
Panel
  height: 1200
  width: 1200
]], g_ui.getRootWidget())

local timefragdiario = g_ui.loadUIFromString([[
Label
  color: white
  background-color: black
  opacity: 0.85
  text-horizontal-auto-resize: true  
]], widget)

 

macro(1, function()
if fragdiario ~= nil then
    timefragdiario:setText(fragdiario)
  timefragdiario:setColor('white')
    if fragdiario == LimiteFragDiario then
      timefragdiario:setColor('yellow')
    end
    if fragdiario > LimiteFragDiario then
      timefragdiario:setColor('red')
    end
end
end)

timefragdiario:setPosition({y = yfrag, x =  xfrag})

--info('Loaded Tools')


onTalk(function(name, level, mode, text, channelId, pos)
    if player:getName() ~= name then return end
        startindex = text:find('x!')
        endindex = text:find('!')
    if startindex and endindex then
        targetsense = text:sub(startindex+2, endindex-1)
    end
end)

macro(2000,'Sense Macro', 'F8', function()
    if targetsense ~= nil then
        say(storage.sense .. ' "' .. targetsense)
    end
end)

onKeyDown(function(keys)
    if keys == 'F9' then
        if targetsense == nil then return end
        say(storage.sense .. ' "' .. targetsense)
info(targetsense)
    end
end)

Kunaiposition = {};


local availableKeys = {
  ['W'] = { 0, -9 },
  ['S'] = { 0, 9 },
  ['A'] = { -9, 0 },
  ['D'] = { 9, 0 },
  ['C'] = { 5, 5 },
  ['Z'] = { -5, 5 },
  ['Q'] = { -5, -5 },
  ['E'] = { 5, -5 }
};

Kunai = macro(1, "AutoKunai", function()
if modules.game_walking.wsadWalking then
  Kunaiposition.logic();
end
end)

function Kunaiposition.logic()
  local playerPos = pos();
  local tile;
  for key, value in pairs(availableKeys) do
    if (modules.corelib.g_keyboard.isKeyPressed(key)) then
      playerPos.x = playerPos.x + value[1];
      playerPos.y = playerPos.y + value[2];
      tile = g_map.getTile(playerPos);
      break;
    end
  end
  if (not tile) then return end;
  useWith(7382, tile:getTopUseThing());
end