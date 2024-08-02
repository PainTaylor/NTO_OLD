xth,yth = 300, 200


local widget = setupUI([[
Panel
  height: 400
  width: 900
]], g_ui.getRootWidget())

local timespellc1 = g_ui.loadUIFromString([[
Label
  color: white
  background-color: black
  opacity: 0.85
  text-horizontal-auto-resize: true  
]], widget)

 

macro(1, function()
if not storage.tkunai.t or storage.tkunai.t < now then
  timespellc1:setText('Kunai: OK! ')
  timespellc1:setColor('green')
else  
  timespellc1:setColor('red')
  timespellc1:setText("Kunai: ".. string.format("%.0f",(storage.tkunai.t-now)/1000).. "s ")
end
end)

onTalk(function(name, level, mode, text, channelId, pos)
if name ~= player:getName() then return end
if text == 'Shunshin' and storage.tkunai.t < now then
  storage.tkunai.t = now + 5000
end
end)
 

if type(storage.tkunai) ~= 'table' or (storage.tkunai.t - now) > 5000 then
storage.tkunai = {t = 0, a = 0}
end

 

timespellc1:setPosition({y = yth, x =  xth})