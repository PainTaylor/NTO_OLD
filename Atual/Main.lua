setDefaultTab("Main")
UI.Separator()

setDefaultTab("Main")
local windowUI = setupUI([[
MainWindow
  id: main
  !text: tr('Minoru Teleport by Kays')
  size: 230 310
  scrollable: true
    
  ScrollablePanel
    id: TpList
    anchors.top: parent.top
    anchors.left: parent.left
    size: 190 225
    vertical-scrollbar: mainScroll

    Button
      !text: tr('Konoha Gakure')
      anchors.top: parent.top
      anchors.left: parent.left
      width: 165

    Button
      !text: tr('Suna Gakure')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Vila Takumi')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Monte Myoboku')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165
      
    Button
      !text: tr('Forest')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Amegakure no Sato')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Suna Camp')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Iwagakure Island')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Yukigakure')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Iwagakure')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Vale do Fim')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Kumogakure')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Tsuki no Shima')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Templo do Fogo')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Kodai no Shima')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Ilha da Lua')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

    Button
      !text: tr('Ilha Genbu')
      anchors.top: prev.bottom
      anchors.left: parent.left
      margin-top: 5
      width: 165

  VerticalScrollBar  
    id: mainScroll
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    step: 48
    pixels-scroll: true
    
  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 21
    margin-top: 15
    margin-right: 15

]], g_ui.getRootWidget());
windowUI:hide();

TpMinoru = {};
local MainPanel = windowUI.main;
local TpList = windowUI.TpList;

TpMinoru.close = function()
  windowUI:hide()
  schedule(1000, function()
      NPC.say('bye');
end)
end

TpMinoru.show = function()
    windowUI:show();
    windowUI:raise();
    windowUI:focus();
end

windowUI.closeButton.onClick = function()
    TpMinoru.close();
end

TpMinoru.tpToCity = function(city)
    schedule(500, function()
        NPC.say(city);
    end);
end


for i, child in pairs(TpList:getChildren()) do
    child.onClick = function()
        TpMinoru.tpToCity(child:getText())
    end
end

onTalk(function(name, level, mode, text, channelId, pos)
  if (name ~= 'Minoru') then return; end              
  if (mode ~= 51) then return; end
  if (text:find('Eu posso te levar para')) then 
      TpMinoru.show();
  else
      TpMinoru.close();
  end
end);

onKeyDown(function(keys)
    if (keys == 'Escape' and windowUI:isVisible())  then
        TpMinoru.close();
    end
end);


-------------------------------------------------------------------------------------------

local discordTimes = {}
 -- insert your webhook link below
local WH0 = "https://discord.com/api/webhooks/1267540187647578255/jPVMuU6vhwbOtBkYKtwUJfr9eKa5CYZ4YwvEevgQqMX93hI_I-8DawYWAyNpo4fXwnY4"

local dd3 = {
  username = "Avistados Por Chars", -- name discord displays the message from
}

local embed = {
  color = 10038562, -- default color - dark red
}

function onHTTPResult(data, err)
  if err then
    print("Discord Webhook Error: ".. err)
  end
end

 -- This allows you to send messages to discord using a webhook.
 -- The "id" is to save the time it was last used and the "delayed" is the next time it can send (Player alert beeps every 1500ms, you can make it so it only sends the alert once every 10 seconds etc.)
function SDW3(data)
local id = data.id
  if id then
    local dTime = discordTimes[id]
    if dTime and os.time() < dTime then return end
    discordTimes[id] = os.time() + (0) -- delayed value or 10 seconds
  end

  local dEmbed = embed
  if data.color then dEmbed.color = data.color end
  dEmbed.title = "**".. data.title .."**"
  dEmbed.fields = {
    {
      name = "Name: ",
      value = data.name,
    },
    {
      name = "Message",
      value = data.message,
    }
  }

  local dataSend = dd3
  dataSend.embeds = { dEmbed }
  HTTP.postJSON(WH0, dataSend, onHTTPResult)
end

 --------------
 -- example --
 --------------

talkedSpecs = {}



aviso = macro(100, 'aviso guild', function()
    for name, _ in pairs(talkedSpecs) do
        if not getCreatureByName(name) then
            talkedSpecs[name] = nil
        end
    end
    for _, spec in ipairs(getSpectators()) do
        if spec ~= player and spec:isPlayer() and not isFriend(spec) then
            if spec:getEmblem() ~= 1 then
                specName = spec:getName()
                if not talkedSpecs[specName] then
                local data = {
                title = 'Player in Cave',
                name = specName,
                message = 'Loc: X: '.. posx() .. 'Y: ' .. posy() .. 'Z: ' .. posz() .. '. Avistado por: ' .. player:getName(),
                id = "pd",
                }
                SDW3(data)
                    talkedSpecs[specName] = true
                end
            end
        end
    end
end)

------------------------------------------------------------------------------------------------------------------------------------


setDefaultTab("Main")

-- allows to test/edit bot lua scripts ingame, you can have multiple scripts like this, just change storage.ingame_lua
UI.Button("Ingame macro editor", function(newText)
  UI.MultilineEditorWindow(storage.ingame_macros or "", {title="Macro editor", description="You can add your custom macros (or any other lua code) here"}, function(text)
    storage.ingame_macros = text
    reload()
  end)
end)
UI.Button("Ingame hotkey editor", function(newText)
  UI.MultilineEditorWindow(storage.ingame_hotkeys or "", {title="Hotkeys editor", description="You can add your custom hotkeys/singlehotkeys here"}, function(text)
    storage.ingame_hotkeys = text
    reload()
  end)
end)

UI.Separator()

for _, scripts in ipairs({storage.ingame_macros, storage.ingame_hotkeys}) do
  if type(scripts) == "string" and scripts:len() > 3 then
    local status, result = pcall(function()
      assert(load(scripts, "ingame_editor"))()
    end)
    if not status then 
      error("Ingame edior error:\n" .. result)
    end
  end
end