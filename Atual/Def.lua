setDefaultTab("HP")
storage.exaustheal = now
storage.healspell = 'otsutsuki regeneration'

onTextMessage(function(mode, text)
  if text:find('precisa consumir uma momoshiki fruit para usar este jutsu') then
    storage.healspell = 'big regeneration'
  end
end)
macro(2000, function()
  if player:getLevel() < 450 then
    storage.healspell = 'big regeneration'
  end
end)

healmacro = macro(200, 'heal', function()
  if hppercent() < 99 and storage.exaustheal < now then
    say(storage.healspell)
  end
 end)


storage.defensekeep = now
macro(200, 'Chakra Defense', function()
  if not hasManaShield() and hppercent() < 50 then
    say('chakra defense')
  end
end)

--  if (hppercent() > 90 or manapercent() < 10) and storage.defensekeep < now then
--    say('kai')
--  end



onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text == 'chakra defense' then
      storage.defensekeep = now + 3000
    end
  end
end)

UI.Label('Item ID')
UI.TextEdit(storage.hpitem or "3077", function(widget, newText)
storage.hpitem = newText
end)

UI.Label('HP')
UI.TextEdit(storage.hppot or "60", function(widget, newText)
storage.hppot = newText
end)

itemhealmacro = macro(200, 'Item heal', function()
  if hppercent() < tonumber(storage.hppot) then
    storage.hpitem = tonumber(storage.hpitem)
    useWith(storage.hpitem, player)
  end
end)

UI.Separator()

UI.Label('Buff')
macro(200, 'Buff Party', function()
  if hasPartyBuff() then return end
  say(storage.buff)
end)

macro(1000, 'Buff Spam', function()
  say(storage.buff)
end)

storage.timebuff = now
macro(1000, 'Buff 30Sec', function()
  if storage.timebuff < now then
    say(storage.buff)
    storage.timebuff = now + 60000
  end
end)

------------------------------------------------------

macro(200, 'Buff2', function()
  if hasPartyBuff() and storage.tbuff2 < now then
    say(storage.buff2)
  end
end)

macro(1000, 'Buff2 Spam', function()
  if hasPartyBuff() and storage.tbuff2 < now then
    say(storage.buff2)
  end
end)

storage.tbuff2 = now
onTalk(function(name, level, mode, text, channelId, pos)
if name ~= player:getName() then return end
if text == storage.buff2 and storage.tbuff2 < now then
  storage.tbuff2 = now + 60000
end
end)

UI.Separator()


macro(200, 'Haste', function()
  if hasHaste() then return end
    say('Concentrate Chakra Feet')
end)



UI.Separator()

UI.Label('HP AutoFuga')
UI.TextEdit(storage.SpecialHP or "60", function(widget, newText)
storage.SpecialHP = newText
end)

macro(200, 'Special Def', function()
  if hppercent() < tonumber(storage.SpecialHP) then
    if storage.fugaspell then
      say(storage.fugaspell)
    end
  end
end)

UI.Separator()

--info('Loaded Def')