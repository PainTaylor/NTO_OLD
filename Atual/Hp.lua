setDefaultTab("Def")

if storage.healspell == nil then
  storage.healspell = 'regeneration'
end

schedule(2000, function()
  if player:getLevel() < 200 then
    storage.healspell = 'regeneration'
  elseif player:getLevel() >= 200 then
    storage.healspell = 'super regeneration'
  end
end)

healmacro = macro(200, 'heal', function()
  if hppercent() < 99 then
    say(storage.healspell)
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
    use(tonumber(storage.hpitem))
  end
end)

UI.Separator()

UI.Label('Hp Special')
UI.TextEdit(storage.SpecialHP or "60", function(widget, newText)
storage.SpecialHP = newText
end)

macro(200, 'Special Def', function()
  if hppercent() < tonumber(storage.SpecialHP) then
    say(storage.ultimate)
  end
end)

UI.Separator()

--info('Loaded Def')