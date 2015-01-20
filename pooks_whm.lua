-- Local Settings, setting the zones prior to use
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}
 
naSpells = S{"Paralyna","Silena","Viruna","Erase","Stona","Blindna","Poisona"}
 
resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
        "Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}
 
cureSpells = S{"Cure","Cure II","Cure III","Cure IV","Cure V","Cure VI"}
curagaSpells = S{"Curaga","Curaga II","Curaga III","Curaga IV","Curaga V"}
regenSpells = S{"Regen","Regen II","Regen III","Regen IV"}
whiteDmgSpells = S{"Banish","Banishga","Banish II","Banishga II","Banishga II","Banish III","Holy","Holy II"}
healingFCSpells = S{"Reraise","Reraise II","Reraise III","Raise","Raise II","Raise III","Arise"}
 
-- Start Functions here
-- Gear Sets
function get_sets()
               
        sets.aftercast_Idle_refresh = 
			{
				main="Bolelabunga", 
				sub="Genbu's Shield", 
				ammo="Oreiad's Tathlum", 
				body="Respite Cloak", 
				hands="Serpentes Cuffs",
				legs="Assid. Pants +1", 
				feet="Serpentes Sabots", 
				neck="Twilight torque", 
				waist="Bishop's Sash",
				left_ear="Lifestorm Earring", 
				right_ear="Nourish. Earring +1", 
				left_ring="Sirona's Ring",
				right_ring="Ephedra Ring", 
				back="Shadow Mantle"
			}
       
        sets.aftercast_Move = set_combine(sets.aftercast_Idle_refresh,{feet="Herald's Gaiters"})
       
        sets.aftercast_Idle = sets.aftercast_Idle_refresh
       
        sets.aftercast_Engaged = {main="Cagliostro's Rod",sub="Thuellaic Ecu +1",range=empty,ammo="Hasty Pinion +1",
                head="Gende. Caubeen +1",neck="Iqabi Necklace",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",
                body="Ischemia Chasu.",hands="Theo. Mitts +1",left_ring="Dark Ring",right_ring="Dark Ring",
                back="Umbra Cape",waist="Ninurta's Sash",legs="Piety Pantaloons",feet="Battlecast Gaiters"}
       
        sets.precast_JA_Benediction = {body="Piety Briault"}
       
        sets.precast_JA_Devotion = {head="Piety Cap"}
       
        sets.precast_HealingFC = 
			{
				main="Ababinili +1", 
				sub="Curatio Grip", 
				ammo="Oreiad's Tathlum", 
				head="Piety Cap",
				body="Nefer Kalasiris", 
				hands="Gendewitha Gages", 
				legs="Orsn. Pantaln. +2", 
				feet="Regal Pumps +1",
				neck="Jeweled Collar",
				waist="Witful Belt",
				left_ear="Lifestorm Earring", 
				right_ear="Loquac. Earring", 
				left_ring="Weather. Ring", 
				right_ring="Ephedra Ring", 
				back="Pahtli Cape"
			}
       
        sets.precast_StoneskinFC = 
			{
				main="Bolelabunga",
				sub="Chanter's Shield",
				ammo="Oreiad's Tathlum",
				head="Nahtirah Hat",
				body="Vanir Cotehardie",
				hands="Gendewitha Gages",
				legs="Piety Pantaloons",
				feet="Regal Pumps +1",
				neck="Jeweled Collar",
				waist="Siegel Sash",
				left_ear="Lifestorm Earring",
				right_ear="Loquac. Earring",
				left_ring="Weather. Ring",
				right_ring="Ephedra Ring",
				back="Swith Cape"
			}
       
        sets.precast_FastCast = {main="Winged Wand",sub="Chanter's Shield",range=empty,ammo="Incantor Stone",
                head="Nahtirah Hat",neck="Jeweled Collar",left_ear="Loquac. Earring",
                body="Vanir Cotehardie",hands="Gendewitha Gages",left_ring="Weather. Ring",right_ring="Ephedra Ring",
                back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Regal Pumps +1"}
               
        sets.precast_WS = {range=empty,ammo="Oreiad's Tathlum",
                head="Sukeroku Hachi.",neck="Twilight Torque",left_ear="Steelflash Earring",right_ear="Bladeborn Earring",
                body="Theo. Briault +1",hands="Theo. Mitts +1",left_ring="Levia. Ring +1",right_ring="Dark Ring",
                back="Umbra Cape",waist="Ninurta's Sash",legs="Piety Pantaloons",feet="Piety Duckbills +1"}
               
        sets.precast_Devotion = {}
 
       
        sets.Resting = {main="Bolelabunga",sub="Genbu's Shield",range=empty,ammo="Incantor Stone",
                neck="Twilight Torque",left_ear="Lifestorm Earring",right_ear="Nourish. Earring +1",
                body="Respite Cloak",hands="Serpentes Cuffs",left_ring="Sirona's Ring",right_ring="Ephedra Ring",
                back="Shadow Mantle",waist="Slipor Sash",legs="Nares Trews",feet="Serpentes Sabots"}
       
        sets.midcast_EnfeeblingMagic = {main="Ababinili +1",sub="Mephitis Grip",ammo="Kalboron Stone",
                head="Nahtirah Hat",neck="Nuna Gorget",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",
                body="Vanir Cotehardie",hands="Gendewitha Gages",left_ring="Sangoma Ring",right_ring="Levia. Ring",
                back="Refraction Cape",waist="Ovate Rope",legs="Mes'yohi Slacks",feet="Artsieq Boots"}
       
        sets.midcast_BarSpells_Solace = {main="Beneficus",sub="Thuellaic Ecu +1",
                head="Orison Cap +1",neck="Colossus's Torque",left_ear="Andoaa Earring",right_ear="Gifted Earring",
                body="Orison Bliaud +2",hands="Orison Mitts +2",
                back="Mending Cape",waist="Olympus Sash",legs="Piety Pantaloons",feet="Orison Duckbills +2"}
               
        sets.midcast_Barspells_noSolace = set_combine(sets.midcast_BarSpells_Solace,{body="Blessed Briault"})
 
        sets.midcast_EnhancingMagic =
			{
				main="Ababinili +1",
				sub="Curatio Grip",
				ammo="Oreiad's Tathlum",
				head="Theophany Cap",
				body="Hyksos Robe",
				hands="Gendewitha Gages",
				legs="Piety Pantaloons",
				feet="Orsn. Duckbills +2",
				neck="Nuna Gorget",
				waist="Witful Belt",
				left_ear="Lifestorm Earring",
				right_ear="Nourish. Earring +1",
				left_ring="Sirona's Ring",
				right_ring="Ephedra Ring",
				back="Swith Cape"
			}
       
               
        sets.midcast_Protectra5 = set_combine(sets.midcast_EnhancingMagic,{feet="Piety Duckbills"})
        sets.midcast_Shellra5 = set_combine(sets.midcast_EnhancingMagic,{pants="Piety Pantaloons"})
       
        sets.midcast_Haste = 
			{
				main="Ababinili +1",
				sub="Curatio Grip",
				ammo="Oreiad's Tathlum",
				head="Theophany Cap",
				body="Hyksos Robe",
				hands="Gendewitha Gages",
				legs="Piety Pantaloons",
				feet="Orsn. Duckbills +2",
				neck="Nuna Gorget",
				waist="Witful Belt",
				left_ear="Lifestorm Earring",
				right_ear="Loquac. Earring",
				left_ring="Sirona's Ring",
				right_ring="Ephedra Ring",
				back="Swith Cape"
			}
 
        sets.midcast_ElementalMagic = {main="Lehbrailg +1",sub="Mephitis Grip",ammo="Oreiad's Tathlum",
                head="Nahtirah Hat",neck="Eddy Necklace",left_ear="Friomisi Earring",right_ear="Strophadic Earring",
                body="Vanir Cotehardie",hands="Otomi Gloves",left_ring="Sangoma Ring",right_ring="Perception Ring",
                back="Toro Cape",waist="Yamabuki-no-Obi",legs="Orvail Pants +1",feet="Gende. Galosh. +1"}
       
        sets.midcast_Divine = {main="Mes'Yohi Rod",sub="Mephitis Grip",ammo="Oreiad's Tathlum",
                head="Nahtirah Hat",neck="Orunmila's Torque",left_ear="Lifestorm Earring",right_ear="Friomisi Earring",
                body="Vanir Cotehardie",hands="Piety Mitts +1",left_ring="Sangoma Ring",right_ring="Levia. Ring +1",
                back="Refraction Cape",waist="Pythia Sash +1",legs="Orvail Pants +1",feet="Gende. Galosh. +1"}
       
        sets.midcast_MAB = {}
       
        sets.midcast_Regen = 
			{
				main="Bolelabunga",
				sub="Genbu's Shield",
				head="Theophany Cap",
				neck="Nuna Gorget",
				right_ear="Gifted Earring",
                body="Piety Briault",
				hands="Orison Mitts +2",
                waist="Bishop's Sash",
				legs="Theo. Pantaloons",
				feet="Regal Pumps +1"
			}
       
        sets.midcast_Auspice = {feet="Orison Duckbills +2"}
       
        sets.midcast_Cursna = {main="Ababinili +1",sub="Arbuda Grip",empty=range,ammo="Hasty Pinion +1",
                head="Nahtirah Hat",neck="Debilis Medallion",left_ear="Loquac. Earring",right_ear="Beatific Earring",
                body="Vanir Cotehardie",hands="Hieros Mittens",left_ring="Sirona's Ring",right_ring="Ephedra Ring",
                back="Mending cape",waist="Witful Belt",legs="Theo. Pant.",feet="Regal Pumps +1"}
               
        sets.midcast_Stun = {main="Lehbrailg +1",sub="Mephitis Grip",range="Aureole",ammo=empty,
                head="Artsieq Hat",neck="Weike Torque",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",
                body="Vanir Cotehardie",hands="Lurid Mitts",left_ring="Sangoma Ring",right_ring="Levia. Ring +1",
                back="Refraction Cape",waist="Ovate Rope",legs="Mes'yohi Slacks",feet="Artsieq Boots"} 
 
        sets.midcast_Cure = 
			{
				main="Ababinili +1",
				sub="Curatio Grip",
				ammo="Oreiad's Tathlum",
				head="Theophany Cap",
				body="Orison Bliaud +2",
				hands="Theophany Mitts +1",
				legs="Orsn. Pantaln. +2",
				feet="Regal Pumps +1",
				neck="Nuna Gorget",
				waist="Bishop's Sash",
				left_ear="Lifestorm Earring",
				right_ear="Nourish. Earring +1",
				left_ring="Sirona's Ring",
				right_ring="Ephedra Ring",
				back="Oretan. Cape +1",
			}
       
        sets.midcast_Curaga = 
			{
				main="Ababinili +1",
				sub="Curatio Grip",
				ammo="Oreiad's Tathlum",
				head="Theophany Cap",
				body="Theo. Briault +1",
				hands="Theophany Mitts +1",
				legs="Orsn. Pantaln. +2",
				feet="Regal Pumps +1",
				neck="Nuna Gorget",
				waist="Bishop's Sash",
				left_ear="Lifestorm Earring",
				right_ear="Nourish. Earring +1",
				left_ring="Leviathan Ring",
				right_ring="Leviathan Ring",
				back="Pahtli Cape",
			}
               
        sets.midcast_Stoneskin = {main="Ababinili +1",body="Hyksos Robe",neck="Stone Gorget",waist="Siegel Sash",legs="Shedir Seraweels"}
       
        sets.midcast_DebuffRemoval = {main="Beneficus",sub="Genbu's Shield",empty=range,ammo="Hasty Pinion +1",
                head="Orison Cap +1",neck="Orunmila's Torque",left_ear="Loquac. Earring",
                body="Orison Bliaud +2",hands="Orison Mitts +2",left_ring="Prolix Ring",right_ring="Ephedra Ring",
                back="Mending Cape",waist="Bishop's Sash",legs="Orsn. Pantaln. +2",feet="Chelona Boots +1"}
       
    sets.Caress = {main="Yagrush",hands="Orison Mitts +2",back="Mending Cape"}
               
        sets.Obi = {}
        sets.Obi.Fire = {waist='Karin Obi',back='Twilight Cape'}
        sets.Obi.Earth = {waist='Dorin Obi',back='Twilight Cape'}
        sets.Obi.Water = {waist='Suirin Obi',back='Twilight Cape'}
        sets.Obi.Wind = {waist='Furin Obi',back='Twilight Cape'}
        sets.Obi.Ice = {waist='Hyorin Obi',back='Twilight Cape'}
        sets.Obi.Lightning = {waist='Rairin Obi',back='Twilight Cape'}
        sets.Obi.Light = {waist='Korin Obi',back='Twilight Cape'}
        sets.Obi.Dark = {waist='Anrin Obi',back='Twilight Cape'}
       
        sets.staves = {}
       
        sets.staves.damage = {}
       
        sets.staves.accuracy = {}
        sets.staves.damage.Lightning = {main="Apamajas II"}
 
 
end
 
-- --- Precast ---
--function pretarget(spell,action)
--        if naSpells:contains(spell.english) or spell.english == "Cursna"  then -- Auto Divine Caress --
--        if windower.ffxi.get_ability_recasts()[32] < 1 and (spell.target.type == 'PLAYER' or spell.target.name == player.name) and not buffactive.amnesia and not buffactive.charm and spell.english ~= "Erase" then
--        cancel_spell()
--        send_command('DivineCaress;wait 1.7;input /ma "'..spell.english..'" '..spell.target.name)
--        end
--        end
--end    
function precast(spell)
        if spell.skill=="Elemental Magic" then
                equip(sets.midcast_ElementalMagic)
                if spell.element == world.weather_element or spell_element == world.day_element and sets.Obi[spell.element] then
                        equip(sets.Obi[spell.element])
                end
        elseif spell.skill=="Healing Magic" then
                        equip(sets.precast_HealingFC)
        elseif spell.english =="Stoneskin" then
                        equip(sets.precast_StoneskinFC)
        elseif spell.type == "WeaponSkill" then
            equip(sets.precast_WS)
    elseif spell.english == "Devotion" then
                equip(sets.precast_JA_Devotion)
        elseif spell.english == "Benediction" then     
                equip(sets.precast_JA_Benediction)
        else
                equip(sets['precast_FastCast'])
        end    
end
-- --- MidCast ---
function midcast(spell,action)
        if spell.skill=="Healing Magic" then   
                        if cureSpells:contains(spell.name) then
                                equip(sets.midcast_Cure)
                        elseif curagaSpells:contains(spell.name) then
                                equip(sets.midcast_Curaga)
                        elseif naSpells:contains(spell.name) then
                                equip(sets.midcast_DebuffRemoval)      
                        elseif healingFCSpells:contains(spell.name) then
                                equip(sets.midcast_Haste)
                        elseif spell.name == "Cursna" then
                                equip(sets.midcast_Cursna)
                        elseif spell.name == "Stun" then
                                equip(sets.midcast_Stun)       
                        end            
        elseif spell.skill=="Elemental Magic" then
                equip(sets.midcast_ElementalMagic)
                if spell.element == world.weather_element or spell_element == world.day_element then
                        equip(sets.Obi[spell.element])
                end
               
    if world.day_element == spell.element or world.weather_element == spell.element then
        equipSet = set_combine(equipSet,sets.Obi[spell.element])
    end
       
        elseif regenSpells:contains(spell.name) then
                        equip(sets.midcast_Regen)      
        elseif spell.english == "Haste" then
                equip(sets.midcast_Haste)
        elseif spell.english == "Stoneskin" then
                equip(sets['midcast_Stoneskin'])
        elseif spell.english == "Protectra V" then
                equip(sets.midcast_Protectra5)
        elseif spell.english == "Shellra V" then
                equip(sets.midcast_Shellra5)
               
        elseif spell.skill == "Enhancing Magic" then
                        equip(sets.midcast_EnhancingMagic)
        elseif spell.skill == "Enfeebling Magic" then
                        equip(sets.midcast_EnfeeblingMagic)
        elseif spell.skill == "Divine Magic" then
                if whiteDmgSpells:contains(spell.name) then
                        equip(sets.midcast_Divine)
                else
                        equip(sets.midcast_EnfeeblingMagic)
                end
        elseif resSpells:contains(spell.name) then
            equip(sets.midcast_BarSpells_Solace)
               
                weathercheck(spell.element,sets["midcast_"..spell.skill])
        end
end            
 
-- --- Aftercast ---
 
function aftercast(spell)
        if toau_zones:contains(zone) then
                equip(sets.aftercast_Idle,{left_ring="Balrahn's Ring"})
        elseif player.status == "Engaged" then
                equip(sets.aftercast_Engaged)
        else
                equip(sets.aftercast_Idle)
        end
        if spell.english == "Sleep" or spell.english == "Sleepga" then
                send_command('@wait 50;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
        elseif spell.english == "Sleep II" or spell.english == "Sleepga II" then
                send_command('@wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
        elseif spell.english == "Break" or spell.english == "Breakga" then
                send_command('@wait 20;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
        elseif spell.english == "Repose" then
                send_command('@wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
        end
end
 
-- Status Change - ie. Resting
 
function status_change(new,tab)
        if new == 'Resting' then
                equip(sets['Resting'])
        elseif new == "Engaged" then
                equip(sets.aftercast_Engaged)
        else
                equip(sets['aftercast_Idle'])
        end
end
 
-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.
 
function weathercheck(spell_element,set)
        if spell_element == world.weather_element or spell_element == world.day_element then
                equip(set,sets['Obi_'..spell_element])
        else
                equip(set)
        end
end
