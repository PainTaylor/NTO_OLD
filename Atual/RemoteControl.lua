------------------------Declarar Funçoes-----------

travelkonoha = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Konoha Gakure')
  end)
  delay(2600)
end

travelsuna = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Suna Gakure')
  end)
  delay(2600)
end

travelvtakumi = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Vila Takumi')
  end)
  delay(2600)
end

travelMonteMyuboki = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Monte Myoboku')
  end)
  delay(2600)
end

travelforest = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Forest')
  end)
  delay(2600)
end

travelamegakure = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Amegakure no Sato')
  end)
  delay(2600)
end

travelsunacamp = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Suna Camp')
  end)
  delay(2600)
end

traveliwagakureisl = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Iwagakure Island')
  end)
  delay(2600)
end

travelYukigakure = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Yukigakure')
  end)
  delay(2600)
end

traveliwagakure = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Iwagakure')
  end)
  delay(2600)
end

travelvdf = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Vale do Fim')
  end)
  delay(2600)
end

travelkumogakure = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Kumogakure')
  end)
  delay(2600)
end

travelTsuki = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Tsuki no Shima')
  end)
  delay(2600)
end

travelTFogo = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Templo do Fogo')
  end)
  delay(2600)
end

travelKodai = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Kodai no Shima')
  end)
  delay(2600)
end

travelmoon = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Ilha da Lua')
  end)
  delay(2600)
end

travelgenbu = function()
  for _, spec in ipairs(getSpectators(posz())) do
    if spec:getName() == 'Minoru' then
      g_game.follow(spec)
    end
  end
  schedule(1000, function()
    NPC.say('hi')
  end)
  schedule(1500, function()
    NPC.say('Ilha Genbu')
  end)
  delay(2600)
end

--------------Comandos de Controle Remoto--------------
setDefaultTab("Main")

followmacro = macro(100, 'Follow', function() 
if g_game.isAttacking() or g_game.isFollowing() then return end
  for _, spec in ipairs(getSpectators()) do
    if spec:getName() == storage.follow3 then
      g_game.follow(spec)
    end
  end
end)

configList = modules.game_bot.contentsPanel.config
onTalk(function(name, level, mode, text, channelId, pos)
local setStanceMode = g_game.setChaseMode;
  if channelId ~= 1 then return end
    if text == 'CarregarHunt' then
      configList:setCurrentOption(player:getName())
    end
    if text == 'CarregarTreino' then
      configList:setCurrentOption('Treino')
    end
    if text == 'ligar target' then
      TargetBot.setOn()
    end
    if text == 'desligar target' then
      TargetBot.setOff()
      Target.Id = nil
      Target.get = nil
      g_game.cancelAttack()
    end
    if text == 'pare de seguir' then
      followmacro.setOff()
      g_game.cancelFollow()
    end
    if text == 'Siga' then
      followmacro.setOn()
    end
    if text == 'desbugar Follow' then
      g_game.cancelFollow()
    end
    if text == 'ataquefollow' then
      setStanceMode(1)
    end
    if text == 'ataquestand' then
      setStanceMode(0)
    end
    if text == 'entrartp' then
      useGroundItem(1949)
      useGroundItem(5022)
    end
    if text == 'entrarporta' then
      useGroundItem(7725)
      useGroundItem(1646)
    end
    if text == 'ligarcave' then
      CaveBot.setOn()
    end
    if text == 'desligarcave' then
      CaveBot.setOff()
    end
    if text == 'enemyon' then
      chicletao.setOn()
      g_game.setSafeFight(0)
    end
    if text == 'enemyoff' then
      chicletao.setOff()
      g_game.setSafeFight(1)
    end
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if text:find('!seguir ') then
    startindex = text:find('seguir')
    endindex = text:find('%.')
      if startindex and endindex then
    storage.follow = nil
    storage.follow2 = nil
    storage.follow3 = text:sub(startindex+7,endindex-1)
    end
  end
end)

onTalk(function(name, level, mode, text, channelId, pos)
    startindex = text:find('Attack: ')
    endindex = text:find('%.')
      if startindex and endindex then
    target = text:sub(startindex+7,endindex-1)
    --pegar criaturas por id, e comparar IDs dps colocar o callback de targetar.
  end
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if channelId ~= 1 then return end
  if text:find('Travel: ') then
    if text:find('konoha') then
      travelkonoha()
    end
    if text:find('Sunagakure') then
      travelsuna()
    end
    if text:find('takumi') then
      travelvtakumi()
    end
    if text:find('monte') then
      travelMonteMyuboki()
    end
    if text:find('forest') then
      travelforest()
    end
    if text:find('amegakure') then
      travelamegakure()
    end
    if text:find('suna camp') then
      travelsunacamp()
    end
    if text:find('ilha iwa') then
      traveliwagakureisl()
    end
    if text:find('yuki') then
      travelYukigakure()
    end
    if text:find('iwagakure') then
      traveliwagakure()
    end
    if text:find('vdf') then
      travelvdf()
    end
    if text:find('kumogakure') then
      travelkumogakure()
    end
    if text:find('tsuki') then
      travelTsuki()
    end
    if text:find('templo') then
      travelTFogo()
    end
    if text:find('kodai') then
      travelKodai()
    end
    if text:find('lua') then
      travelmoon()
    end
    if text:find('genbu') then
      travelgenbu()
    end
  end
end)

macro(1, function()
if player:getShield() > 0 then return end
for _,PT in ipairs(getSpectators(posz())) do
if PT:getEmblem() == 1 and PT:getShield() > 0 then 
 return g_game.partyJoin(PT:getId())
end

end

delay(100)

end)

macro(2000, function()
  if getChannelId('Party') then return end
  if player:getShield(3) or player:getShield(2) then
    g_game.joinChannel(1)
  end
end)

storage.cooldowncomand = now

remotecontrol = macro(1000, 'RemoteControl', function()end)
onKeyDown(function(keys)
    if not getChannelId('Party') then return end
  if modules.game_console:isChatEnabled() or remotecontrol.isOff() then return end
    if storage.cooldowncomand < now then
  if keys == '' then
    sayChannel(1, 'pare de seguir')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'Siga')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'ligar target')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'desligar target')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'desbugar Follow')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'ataquefollow')
    storage.cooldowncomand = now + 2000
  end
  if keys == '' then
    sayChannel(1, 'ataquestand')
    storage.cooldowncomand = now + 2000
  end
  --if keys == 'H' then
  --  sayChannel(1, 'Attack: ' .. Target .. '%,')
  --end
end
end)


n = 0
onKeyDown(function(keys)
    if not getChannelId('Party') then return end
  if modules.game_console:isChatEnabled() or remotecontrol.isOff() then return end
  if storage.cooldowncomand < now then
    if keys == 'I' then
      sayChannel(1, 'moveC' .. n)
      n = n + 1
      if n > 10 then
        n=0
        storage.cooldowncomand = now + 2000
      end
    end
    if keys == 'L' then
      sayChannel(1, 'moveD' .. n)
      n = n + 1
      if n > 10 then
        n=0
        storage.cooldowncomand = now + 2000
      end
    end
    if keys == 'K' then
      sayChannel(1, 'moveB' .. n)
      n = n + 1
      if n > 10 then
        n=0
        storage.cooldowncomand = now + 2000
      end
    end
    if keys == 'J' then
      sayChannel(1, 'moveE' .. n)
      n = n + 1
      if n > 10 then
        n=0
        storage.cooldowncomand = now + 2000
      end
    end
  end
end)

--onTalk(function(name, level, mode, text, channelId, pos)
--  if name == player:getName() then
--    if text == lastmensage then
--      say('xD')
--    end
--    lastmensage = text
--  end
--end)

onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then return end
  if text:find('moveC') then
    walk(0)
  end
  if text:find('moveD') then
    walk(1)
  end
  if text:find('moveB') then
    walk(2)
  end
  if text:find('moveE') then
    walk(3)
  end
--  if text:find('moveCD') then
--    walk(4)
--  end
--  if text:find('moveBD') then
--    walk(5)
--  end
--  if text:find('moveBE') then
--    walk(6)
--  end
--  if text:find('moveCE') then
--    walk(7)
--  end
end)