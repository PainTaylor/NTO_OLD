storage.fugaspell = nil

onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text:find('!setvoc ') then
      if text:find('Sasuke') then
        setvocSasuke()
      end
      if text:find('Chino') then
        setvocChino()
      end
      if text:find('Madara') then
        setvocMadara()
      end
      if text:find('Shisui') then
        setvocShisui()
      end
      if text == 'Tobirama' then
        setvocTobirama()
      end
      if text:find('Indra') then
        setvocIndra()
      end
      if text:find('Koji Kashin') then
        setvocKojikashin()
      end
      if text:find('Maito') then
        setvocMaito()
      end
      if text:find('Kaguya Otsutsuki') then
        setvocKaguya()
      end
      if text:find('Itachi') then
        setvocItachi()
      end
      if text:find('Momoshiki') then
        setvocMomoshiki()
      end
      if text:find('Orochimaru') then
        setvocOrochimaru()
      end
      if text:find('Sandaime Raikage') then
        setvocSRaikage()
      end
      if text:find('Code') then
        setvocCode()
      end
      if text == 'Tobi' then
        setvocTobi()
      end
      if text:find('Sarada') then
        setvocSarada()
      end
      if text:find('Tsunade') then
        setvocTsunade()
      end
      if text:find('Naruto Barion') then
        setvocNaruto()
      end
      if text:find('Kawaki') then
        setvocKawaki()
      end
      if text:find('Minato') then
        setvocMinato()
      end
      if text:find('Muu') then
        setvocMuu()
      end
      if text:find('Anko') then
        setvocAnko()
      end
    end
  end
end)


loadvoc = false
onTextMessage(function(mode, text)
  if loadvoc == true then return end
  if text:find('You see yourself') then
    startindex = text:find('are')
    endindex = text:find('VIP')
    if startindex and endindex then
      class = text:sub(startindex+4, endindex-3)
      if class:find('Sasuke') then
        setvocSasuke()
      end
      if class:find('Chino') then
        setvocChino()
      end
      if class:find('Madara') then
        setvocMadara()
      end
      if class:find('Shisui') then
        setvocShisui()
      end
      if class == 'Tobirama' then
        setvocTobirama()
      end
      if class:find('Indra') then
        setvocIndra()
      end
      if class:find('Koji Kashin') then
        setvocKojikashin()
      end
      if class:find('Maito') then
        setvocMaito()
      end
      if class:find('Kaguya Otsutsuki') then
        setvocKaguya()
      end
      if class:find('Itachi') then
        setvocItachi()
      end
      if class:find('Momoshiki') then
        setvocMomoshiki()
      end
      if class:find('Orochimaru') then
        setvocOrochimaru()
      end
      if class:find('Sandaime Raikage') then
        setvocSRaikage()
      end
      if class:find('Code') then
        setvocCode()
      end
      if class == 'Tobi' then
        setvocTobi()
      end
      if class:find('Sarada') then
        setvocSarada()
      end
      if class:find('Tsunade') then
        setvocTsunade()
      end
      if class:find('Naruto Barion') then
        setvocNaruto()
      end
      if class:find('Kawaki') then
        setvocKawaki()
      end
      if class:find('Minato') then
        setvocMinato()
      end
      if text:find('Muu') then
        setvocMuu()
      end
      if text:find('Anko') then
        setvocAnko()
      end
      loadvoc = true
    end
  end
end)

--Ordem Keys S1=R S2 = F S3 = X S4 = 1
setvocSasuke = function()
  storage.magia200 = 'Indoranoya'
  storage.magia250 = 'Hono-Ikazuchi'
  storage.magia300 = 'Fureimurappufaia'
  storage.magia400 = 'Kurohomura no maiso'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Utsushi wa me no kyosei'
  storage.special2 = 'Susanoo Kagutsuchi'
  storage.special3 = 'Senjutsu no susanoo'
  storage.special4 = nil
  storage.buff = 'Susanoo Protection'
  storage.buff2 = 'Susanoo Kagutsuchi'
  storage.AOE = 'Fenikkusufurawatekunikku'
  personagem = 'Sasuke'
  info('Load: ' .. personagem)
end


setvocChino = function()
  storage.magia200 = 'Chi no tatsumaki'
  storage.magia250 = 'Buraddokuro'
  storage.magia300 = 'Raizu obu za Buraddo doragon'
  storage.magia400 = 'Genjutsu torappu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Genjutsu: Ketsuryugan'
  storage.special2 = 'Ketsueki kanri'
  storage.special3 = nil
  storage.special4 = nil
  storage.buff = 'Susanoo Protection'
  storage.buff2 = 'Susanoo Kagutsuchi'
  storage.AOE = 'Shabontama ninjutsu'
  personagem = 'Chino'
  info('Load: ' .. personagem)
end

setvocMadara = function()
  storage.magia200 = 'Akuma no zo no kusari'
  storage.magia250 = 'Yasaka Magatama'
  storage.magia300 = 'Madara: kamui'
  storage.magia400 = 'Ki no ryu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Madara: Chibaku Tensei'
  storage.special2 = 'Pafekutosusanoo'
  storage.special3 = 'Limbo'
  storage.special4 = nil
  storage.buff = 'Madara Susanoo'
  storage.buff2 = 'Pafekutosusanoo'
  storage.AOE = 'Gureto fureimu furawa'
  personagem = 'Madara'
  info('Load: ' .. personagem)
end

setvocShisui = function()
  storage.magia200 = 'Susanoo Barrage'
  storage.magia250 = 'Kotoamatsukami'
  storage.magia300 = 'Magen Kasegui no Jutsu'
  storage.magia400 = 'Katon Houenka'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = 'Shokanamatsukami'
  storage.special3 = 'Susanoo Tsukumo'
  storage.special4 = nil
  storage.buff = 'Sharingan Kotetsu'
  storage.buff2 = nil  
  storage.AOE = 'Shunka Shuto'
  personagem = 'Shisui'
  info('Load: ' .. personagem)
end

setvocTobirama = function()
  storage.magia200 = 'Suiton Suidanha'
  storage.magia250 = 'Suiton Suishoha'
  storage.magia300 = 'Suiton Teppodama'
  storage.magia400 = 'Suiton Suikosogyoku no Jutsu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Gottsunko'
  storage.special2 = 'Kokuangyo no Jutsu'
  storage.special3 = nil
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = 'Suiro no Muchi'
  storage.buff2 = 'Mawashi no Jutsu'
  storage.AOE = 'Dai Suiton Dragon no Jutsu'
  personagem = 'Tobirama'
  info('Load: ' .. personagem)
end

setvocIndra = function()
  storage.magia200 = 'Bodipiasusanda'
  storage.magia250 = 'Vajra'
  storage.magia300 = 'Shizen no raimei goon'
  storage.magia400 = 'Indra: amaterasu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Guretofaiaborute'
  storage.special2 = 'Kaminari no hassei'
  storage.special3 = 'Ninshuu Hono'
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = 'Indra: susanoo'
  storage.buff2 = 'Ninshuu Hono'
  storage.AOE = 'Mangekyou Amaterasu'
  personagem = 'Indra'
  info('Load: ' .. personagem)
end

setvocKojikashin = function()
  storage.magia200 = 'Sennin-jutsu: Go pinukan no hi ogi'
  storage.magia250 = 'Faiasutairu: Fureimuatakku'
  storage.magia300 = 'Shokan: Hono yama no shin no hono'
  storage.magia400 = 'Samadi no shin no hono'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Cho cho rasen'
  storage.special2 = "Hari Jizo"
  storage.special3 = 'Shokan: Boiragama'
  storage.special4 = "Kanzen'naru sen'nin modo"
  storage.fugaspell = nil
  storage.buff = 'Hamittomodo'
  storage.buff2 = "Kanzen'naru sen'nin modo"
  storage.AOE = 'Mangekyou Amaterasu'
  personagem = 'KashinKoji'
  info('Load: ' .. personagem)
end

setvocMaito = function()
  storage.magia200 = 'Sekizo'
  storage.magia250 = 'Hirudora'
  storage.magia300 = 'Asa Kujaku'
  storage.magia400 = 'Yagai'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Dai Yagai'
  storage.special2 = "Undo Cho Kosoku"
  storage.special3 = 'Open Gates Of Death'
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = "Open Gates Of Life"
  storage.buff2 = "Open Gates Of Death"
  storage.AOE = 'Konoha Reppu'
  personagem = 'Maito'
  info('Load: ' .. personagem)
end

setvocKaguya = function()
  storage.magia200 = 'Togebari'
  storage.magia250 = 'Bocho Gudodama'
  storage.magia300 = 'Konnichisama'
  storage.magia400 = 'Yomotsu Hirasaka'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Amenominaka'
  storage.special2 = "Yomotsu Hirasaka"
  storage.special3 = 'Kankaku-teki tekunikku'
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = "Rinne Sharingan"
  storage.buff2 = "Kankaku-teki tekunikku"
  storage.AOE = 'Yachihoko no Kami'
  personagem = 'Kaguya'
  info('Load: ' .. personagem)
end

setvocItachi = function()
  storage.magia200 = 'Amaterasuu'
  storage.magia250 = 'Iatsu Sharingan'
  storage.magia300 = 'Katon Fenix Gouenkyuu'
  storage.magia400 = 'Susanoo Noshuku'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = "Karasuamatsukami"
  storage.special3 = 'Izanami'
  storage.special4 = 'Karasu Bunshin'
  storage.fugaspell = 'Karasuamatsukami'
  storage.buff = "Fuumetsu Susanoo"
  storage.buff2 = "Kankaku-teki tekunikku"
  storage.AOE = 'Mangekyou Amaterasu'
  personagem = 'Itachi'
  info('Load: ' .. personagem)
end

setvocMomoshiki = function()
  storage.magia200 = 'Shinku no hono'
  storage.magia250 = 'Karuma: Seigyo funo'
  storage.magia300 = 'Otsutsuki jiku ninjutsu'
  storage.magia400 = 'Biji yuubakudan'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Guren no rasen'
  storage.special2 = "Kankaku"
  storage.special3 = 'Saishu keitai otsutsuki'
  storage.special4 = nil
  storage.fugaspell = 'Kankaku'
  storage.buff = "Kinniku kakucho"
  storage.buff2 = "Saishu keitai otsutsuki"
  storage.AOE = 'Yakusa-no-Ikazuchi'
  personagem = 'Momoshiki'
  info('Load: ' .. personagem)
end

setvocOrochimaru = function()
  storage.magia200 = 'Sunekuatakku'
  storage.magia250 = 'Hebi ni kamareta'
  storage.magia300 = 'Sodosuneku'
  storage.magia400 = 'Kusanagi notsurugi'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Edo Tensei Tobirama'
  storage.special2 = "Daijamaru-ryu migawari-jutsu"
  storage.special3 = 'Orochi no noroi'
  storage.special4 = nil
  storage.fugaspell = 'Daijamaru-ryu migawari-jutsu'
  storage.buff = "Noroi shirushi"
  storage.buff2 = "Orochi no noroi"
  storage.AOE = 'Mandara no Jin'
  personagem = 'Orochimaru'
  info('Load: ' .. personagem)
end

setvocSRaikage = function()
  storage.magia200 = 'Kuroi inazuma'
  storage.magia250 = 'Raigaponpu'
  storage.magia300 = 'Jigoku no sashi kizu'
  storage.magia400 = 'Ritoruburakkuraitoningu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Najji'
  storage.special2 = "Keimusho no mon no tenohira soko"
  storage.special3 = 'Massuguna inazuma'
  storage.special4 = nil
  storage.magiastack = 'Keimusho no mon no tenohira soko'
  storage.fugaspell = 'Daijamaru-ryu migawari-jutsu'
  storage.buff = "Raitoningusutairuchakuramodo"
  storage.buff2 = "Massuguna inazuma"
  storage.AOE = 'Boryoku-tekina inazuma yoko'
  personagem = 'S.Raikage'
  info('Load: ' .. personagem)
end

setvocCode = function()
  storage.magia200 = 'Karumahowaitoburedo'
  storage.magia250 = 'Karumahowaitosufia'
  storage.magia300 = 'Karumahowaitoshokku'
  storage.magia400 = 'Karumahowaitoerekutorikkusufia'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Tsumeato'
  storage.special2 = "Shisutemukodingu"
  storage.special3 = 'Kosho shita reseputakuru'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = nil
  storage.buff = "Howaitokaruma"
  storage.buff2 = "Kosho shita reseputakuru"
  storage.AOE = 'Karumahowaitoparusu'
  personagem = 'Code'
  info('Load: ' .. personagem)
end

setvocTobi = function()
  storage.magia200 = 'Fenikkusufurawa'
  storage.magia250 = 'Tobi: kamui'
  storage.magia300 = 'Gedo no ma-zo'
  storage.magia400 = 'Muttsu no akai'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Tobi: kamui in'
  storage.special2 = 'Izanagi'
  storage.special3 = 'Uchi wa kikan'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = nil
  storage.buff = 'Akuma no zo no hogo'
  storage.buff2 = 'Uchi wa kikan'
  storage.AOE = 'Fenikkusufurawatekunikku'
  personagem = 'Tobi'
  info('Load: ' .. personagem)
end


setvocSarada = function()
  storage.magia200 = 'Yunikuna sakura'
  storage.magia250 = 'Sarada: chidori'
  storage.magia300 = 'Susanoo: magatama magatama'
  storage.magia400 = 'Raitoningusufia'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Raitoningusutoraikuama'
  storage.special2 = 'Utsushi wa me no kyosei'
  storage.special3 = 'Raitoningusutoraikuama'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = 'Raitoningusutoraikuama'
  storage.buff = 'Sarada: susanoo'
  storage.buff2 = nil
  storage.AOE = 'Fenikkusufurawatekunikku'
  personagem = 'Sarada'
  info('Load: ' .. personagem)
end

setvocTsunade = function()
  storage.magia200 = 'Ten no itami no ashi'
  storage.magia250 = 'Yuka no hibiware'
  storage.magia300 = 'Adamantainfisuto'
  storage.magia400 = 'Sukaisupiakikku'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Densetsu no Henrin'
  storage.special2 = 'Hyaku-gun no insho'
  storage.special3 = 'In no fuin: Kaijo'
  storage.special4 = 'Kuchiyose Katsuyu'
  storage.magiastack = nil
  storage.fugaspell = ''
  storage.SHEAL = 'Hyaku-gun no insho'
  storage.SHEAL1 = 'Shousen no Jutsu'
  storage.buff = 'Sozo no saisei'
  storage.buff2 = 'In no fuin: Kaijo'
  storage.AOE = 'Kentoshiki shogai'
  personagem = 'Tsunade'
  info('Load: ' .. personagem)
end

setvocNaruto = function()
  storage.magia200 = 'Baryon Mode: Borutekkusu'
  storage.magia250 = 'Baryon Mode: Disupureisumento'
  storage.magia300 = 'Baryon Mode: Dai Hoko'
  storage.magia400 = 'Baryon Mode: Bakuhatsu tagu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Cho cho rasen'
  storage.special2 = 'Kage No Kuron'
  storage.special3 = 'Baryon Mode'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = 'Kage No Kuron'
  storage.SHEAL = 'Hyaku-gun no insho'
  storage.buff = 'Kurama Protection'
  storage.buff2 = 'Baryon Mode'
  storage.AOE = 'Baryon Mode: Dankotaru ken'
  personagem = 'Naruto'
  info('Load: ' .. personagem)
end

setvocKawaki = function()
  storage.magia200 = 'Karma: Hakai'
  storage.magia250 = 'Karma: Seigyo funo'
  storage.magia300 = 'Rasengan: Yunizonansu'
  storage.magia400 = 'Karma: Jiku Potaru'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Kumade'
  storage.special2 = 'Fairu no kakikomi'
  storage.special3 = 'Burst Mode'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = ''
  storage.SHEAL = nil
  storage.buff = 'Karma Protection'
  storage.buff2 = 'Burst Mode'
  storage.AOE = nil
  personagem = 'Kawaki'
  info('Load: ' .. personagem)
end

setvocMinato = function()
  storage.magia200 = 'Hiraishinnojutsu'
  storage.magia250 = 'Rasen maru basuto'
  storage.magia300 = 'Bijuu yuubakudan'
  storage.magia400 = 'Hi raijin: Reberu'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Shinigami no fuin'
  storage.special2 = 'Shadoukurontekunikku'
  storage.special3 = 'Tsudzurao chakuramodo'
  storage.special4 = 'Hiraishin No Jutsu'
  storage.magiastack = nil
  storage.fugaspell = 'Shadoukurontekunikku'
  storage.SHEAL = nil
  storage.buff = 'Kiiro no furasshu'
  storage.buff2 = 'Tsudzurao chakuramodo'
  storage.AOE = nil
  personagem = 'Minato'
  info('Load: ' .. personagem)
end

setvocMuu = function()
  storage.magia200 = 'Gensho sekai ridatsu'
  storage.magia250 = 'Gensho sekai no disupureisumento'
  storage.magia300 = 'Genshi sekai no sutotchatekunikku'
  storage.magia400 = 'Raitorokkutekunikku'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = 'Shuriken Kogeki'
  storage.special1 = 'Irokkutekunikku'
  storage.special2 = 'Fukaina hokori no nai'
  storage.special3 = 'Bunkatsu tekunikku'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = ''
  storage.SHEAL = nil
  storage.buff = 'Sutairupaudapurotekushon'
  storage.buff2 = 'Bunkatsu tekunikku'
  storage.AOE = 'Ishi no sutairu'
  personagem = 'Muu'
  info('Load: ' .. personagem)
end

setvocAnko = function()
  storage.magia200 = 'Kyodaina jihebi'
  storage.magia250 = 'Megasuneku'
  storage.magia300 = 'Hebi no kuchi'
  storage.magia400 = 'Takusan no hebi'
  storage.magiabijuu = 'Biju Attack'
  storage.spellextra = nil
  storage.special1 = 'Mahi suru hebi'
  storage.special2 = 'Tsuinsuneku sogo'
  storage.special3 = 'Noroi shirushi henshini'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = 'Tsuinsuneku sogo'
  storage.SHEAL = nil
  storage.buff = 'Norowareta fuin'
  storage.buff2 = 'Noroi shirushi henshini'
  storage.AOE = 'Mandara no Jin'
  personagem = 'Anko'
  info('Load: ' .. personagem)
end



g_game.look(player)
