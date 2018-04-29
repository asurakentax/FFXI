--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Requiescat sets: Req, Chant du Cygne sets: CDC, Expiacion sets: Expi, Savage Blade sets: Savage--
--Realm, FlashNova--
 
--E.g.   /console gs c toggle CDC set--
--              /console gs c toggle TP set--
--                              Reqi, etc, read at the bottom of the GS in the toggles for the names--
 
--I am sure there is outdated gear in here that I have probably even forgotten to change --
--Just look over it and fit it to your needs--
 
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle CDC set')
        send_command('bind f11 gs c toggle Req set')
        send_command('bind f12 gs c toggle Idle set')
        send_command('bind ^f9 input /ws "Chant du Cygne" <t>')
        send_command('bind ^f10 input /ws "Expiacion" <t>')
        send_command('bind ^f11 input /ws "Sanguine Blade" <t>')
        send_command('bind ^f12 input /ws "Requiescat" <t>')
        send_command('bind !f12 input /ws "Realmrazer" <t>')
        send_command('bind !f10 gs c toggle Rea set')
        send_command('bind !f11 gs c toggle Expi set')
       
        function file_unload()
     
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')
        send_command('unbind ^f12')
       
        send_command('unbind !f9')
        send_command('unbind !f10')
        send_command('unbind !f11')
        send_command('unbind !f12')
 
        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')
 
       
 
        end
 
 
function get_sets()
   
    HerculeanHelm={}
        HerculeanHelm.Nuke={name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','INT+9','Mag. Acc.+9','"Mag.Atk.Bns."+12',}}
        HerculeanHelm.DT={name="Herculean Helm", augments={'Attack+12','Phys. dmg. taken -4%','STR+9','Accuracy+8',}}
        HerculeanHelm.Refesh={name="Herculean Helm", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Waltz" potency +2%','"Refresh"+1',}}
        HerculeanHelm.WSD={name="Herculean Helm", augments={'Weapon skill damage +4%','Pet: Crit.hit rate +4','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}}
       
    HerculeanGloves={}
        HerculeanGloves.WSD={name="Herculean Gloves", augments={'Accuracy+21 Attack+21','Weapon skill damage +4%','Accuracy+9','Attack+10',}}
        HerculeanGloves.DT={name="Herculean Gloves", augments={'Accuracy+13','Damage taken-3%','AGI+1','Attack+5',}}
        HerculeanGloves.HighAcc={name="Herculean Gloves", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','DEX+15','Accuracy+11','Attack+13',}}
        HerculeanGloves.Refresh={name="Herculean Gloves", augments={'DEX+7','Weapon skill damage +2%','"Refresh"+1',}}
        HerculeanGloves.Crit={name="Herculean Gloves", augments={'Attack+23','Crit. hit damage +4%','DEX+8','Accuracy+11',}}
       
    HerculeanLegs={}
        HerculeanLegs.DT={name="Herculean Trousers", augments={'Accuracy+22','Damage taken-2%','VIT+6',}}
        HerculeanLegs.WSD={name="Herculean Trousers", augments={'Attack+28','Weapon skill damage +3%','STR+10','Accuracy+9',}}
        HerculeanLegs.Crit={name="Herculean Trousers", augments={'Attack+22','Crit. hit damage +4%','Accuracy+9',}}
        HerculeanLegs.TP={name="Herculean Trousers", augments={'Dex+6','Accuracy+30','"Triple Atk."+3'}}
 
    TaeonBoots={}
        TaeonBoots.RA={name="Taeon Boots", augments={'Rng. Atk.+17','Crit.hit rate +2'}}
        TaeonBoots.TA={name="Taeon Boots", augments={'STR+6 DEX+6','Accuracy+15 Attack+15','"Triple Atk."+2'}}     
   
    TelchineFeet={}
        TelchineFeet.CP={name="Telchine Pigaches", augments={'"Cure" Potency +4%'}}
        TelchineFeet.FC={name="Telchine Pigaches", augments={'"Fast Cast" +3'}}
   
    HerculeanFeet={}
        HerculeanFeet.QA={name="Herculean Boots", augments={'AGI+4','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+4 Attack+4',}}
        HerculeanFeet.TA={name="Herculean Boots", augments={'Accuracy+22','Attack+11','"Triple Atk."+2'}}
        HerculeanFeet.DT={name="Herculean Boots", augments={'Accuracy+22','Attack+11','"Triple Atk."+2'}}
        HerculeanFeet.Idle={name="Herculean Boots", augments={'Enmity+2','Accuracy+2 Attack+2','"Refresh"+2',}}
        HerculeanFeet.CritDmg={name="Herculean Boots", augments={'Accuracy+8','Crit. hit damage +2%','DEX+1','Attack+30',}}
        HerculeanFeet.WSD={name="Herculean Boots", augments={'Attack+22','Weapon skill damage +4%','Accuracy+15',}}
       
    sets.Idle = {}
       
    --Idle Sets--  
    sets.Idle.index = {'Standard','DT'}
    Idle_ind = 3           
   
    sets.Idle.Standard = {ammo="Inlamvuyeso",
            head="Rawhide Mask",neck="Wiglen Gorget", ear1="Genmei Earring", ear2="Infused earring",
            body="Amalric doublet +1",hands="Serpentes cuffs",ring1="Defending Ring",ring2="Defending Ring",
            back="Solemnity Cape",waist="Fucho-no-Obi",legs="Carmine Cuisses +1",feet=HerculeanFeet.Idle}
                         
    sets.Idle.DT = {ammo="Inlamvuyeso",
            head="Ayanmo zucchetto +1",neck="Twilight torque", ear1="Genmei Earring", ear2="Infused earring",
            body="Emet Harness +1",hands="Ayanmo manopolas +1",ring1="Defending ring",ring2="Vertigo Ring",
            back="Solemnity Cape",waist="Flume belt +1",legs="Ayanmo cosciales +1",feet="Ayanmo gambieras +1"}
			
    --TP Sets--
    sets.TP = {}
 
    sets.TP.index = {'StandardNoTrusts', 'Marches', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull', 'DT', 'DTAccuracy', 'DTHighAccuracy', 'MDT'}
    --1=StandardNoTrusts, 2=Marches, 3=AccuracyLite, 4=AccuracyMid, 5=AccuracyFull, 6=DT, 7=DTAccuracy 8=DTHighAccuracy 9=MDT--
    TP_ind = 1
   
    --DW III +1200JP--
    sets.TP.StandardNoTrusts = {ammo="Ginsen",
                    head="Adhemar Bonnet",
                    neck="Lissome Necklace",
                    ear1="Suppanomimi", ear2="Brutal Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring", ring2="Petrov ring",
                    back="Rosmerta's Cape",
                    waist="Windbuffet Belt +1",
					legs=HerculeanLegs.TP,
                    feet=HerculeanFeet.TA}
       
    sets.TP.Marches = {ammo="Ginsen",
                    head="Adhemar Bonnet",
                    neck="Asperity necklace",
                    ear1="Suppanomimi", ear2="Brutal Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring", ring2="Hetairoi Ring",
                    back="Rosmerta's Cape",
                    waist="Kentarch belt +1",
                    legs=HerculeanLegs.TP,
                    feet=HerculeanFeet.TA}
                   
    sets.TP.AccuracyLite = {ammo="Ginsen",
                    head="Adhemar Bonnet",
                    neck="Lissome Necklace",
                    ear1="Suppanomimi", ear2="Cessance Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring", ring2="Petrov ring",
                    back="Rosmerta's Cape",
                    waist="Windbuffet Belt +1",
                    legs=HerculeanLegs.TP,
                    feet=HerculeanFeet.TA}
                   
    sets.TP.AccuracyMid = {ammo="Falcon Eye",
                    head="Dampening Tam",
                    neck="Lissome Necklace",
                    ear1="Zennaroi earring", ear2="Cessance Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring", ring2="Ramuh Ring +1",
                    back="Rosmerta's Cape",
                    waist="Olseni Belt",
                    legs=HerculeanLegs.TP,
                    feet=HerculeanFeet.TA}
 
    sets.TP.AccuracyFull = {ammo="Falcon Eye",
                    head="Carmine Mask +1",
                    neck="Subtlety Spectacles",
                    ear1="Zennaroi Earring", ear2="Dignitary's Earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.HighAcc,
                    ring1="Cacoethic Ring +1",ring2="Ramuh Ring +1",
                    back="Rosmerta's Cape",
                    waist="Olseni Belt",
                    legs="Carmine Cuisses +1",
                    feet=HerculeanFeet.CritDmg}
                           
    sets.TP.DT = {ammo="Falcon Eye",
                    head=HerculeanHelm.DT,
                    neck="Loricate Torque +1",
                    ear1="Suppanomimi",ear2="Odnowa Earring +1",
                    body="Emet Harness +1",
                    hands=HerculeanGloves.DT,
                    ring1="Defending ring",ring2="Gelatinous Ring +1",
                    back="Umbra Cape",
                    waist="Flume belt",
                    legs=HerculeanLegs.DT,
                    feet=HerculeanFeet.DT}
                 
    sets.TP.DTAccuracy = {ammo="Falcon Eye",
                    head=HerculeanHelm.DT,
                    neck="Loricate Torque +1",
                    ear1="Suppanomimi", ear2="Cessance Earring",
                    body="Emet Harness +1",
                    hands=HerculeanGloves.DT,
                    ring1="Defending Ring",ring2="Patricius Ring",
                    back="Xucau Mantle",
                    waist="Olseni Belt",
                    legs=HerculeanLegs.DT,
                    feet=HerculeanFeet.DT}
                   
    sets.TP.DTHighAccuracy = {ammo="Falcon Eye",
                    head="Carmine Mask +1",
                    neck="Loricate Torque +1",
                    ear1="Suppanomimi", ear2="Zennaroi Earring",
                    body="Emet Harness +1",
                    hands=HerculeanGloves.DT,
                    ring1="Defending Ring",ring2="Patricius Ring",
                    back="Rosmerta's Cape",
                    waist="Olseni Belt",
                    legs="Carmine Cuisses +1",
                    feet=HerculeanFeet.DT}
                   
    sets.TP.MDT = {ammo="Ginsen",
                    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
                    neck="Asperity Necklace",
                    ear1="Suppanomimi", ear2="Brutal Earring",
                    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
                    hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
                    ring1="Defending ring",ring2="Epona's Ring",
                    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+1','Crit.hit rate+10',}},
                    waist="Windbuffet Belt +1",
                    legs={ name="Herculean Trousers", augments={'Accuracy+30','"Triple Atk."+3','DEX+6',}},
                    feet=HerculeanFeet.DT}
   
   
   
   
   
   
    --Weaponskill Sets-- Cornflower for Requiescat because it saves a spot as it is the ONLY thing I would need to carry Bleating Mantle for...
    sets.WS = {}
   
    sets.Requiescat = {}
   
    sets.Requiescat.index = {'Attack','Accuracy'}
    Requiescat_ind = 1
   
    sets.Requiescat.Attack = {ammo="Hydrocera",
                    head="Carmine Mask",
                    neck="Fotia Gorget",
                    ear1="Moonshade Earring",ear2="Brutal Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring",ring2="Rufescent Ring",
                    back="Rosmerta's Cape",
                    waist="Fotia Belt",
                    legs="Telchine Braconi",
                    feet="Carmine Greaves +1"}
                                 
    sets.Requiescat.Accuracy = {ammo="Falcon Eye",
                    head="Carmine Mask",
                    neck="Fotia Gorget",
                    ear1="Cessance Earring",ear2="Zennaroi Earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring",ring2="Ramuh Ring +1",
                    back="Aptitude Mantle +1",
                    waist="Fotia Belt",
                    legs="Telchine Braconi",
                    feet="Carmine Greaves +1"}
                             
    sets.ChantDuCygne = {}
   
    sets.ChantDuCygne.index = {'Attack','Accuracy','AccuracyHigh'}
    ChantDuCygne_ind = 1
   
    sets.ChantDuCygne.Attack = {ammo="Jukukik Feather",
                    head="Adhemar Bonnet",
                    neck="Fotia Gorget",
                    ear1="Mache Earring",ear2="Brutal Earring",
                    body="Herculean Vest",
                    hands="Adhemar Wristbands",
                    ring1="Epona's ring",ring2="Hetairoi ring",
                    back="Rosmerta's cape",
                    waist="Fotia Belt",
                    legs=HerculeanLegs.Crit,
                    feet=HerculeanFeet.CritDmg}
                   
    sets.ChantDuCygne.Accuracy = {ammo="Falcon Eye",
                      head="Adhemar Bonnet",
                      neck="Fotia Gorget",
                      ear1="Moonshade earring",ear2="Cessance Earring",
                      body="Abnoba Kaftan",
                      hands=HerculeanGloves.HighAcc,
                      ring1="Epona's ring",ring2="Begrudging Ring",
                      back="Rosmerta's Cape",
                      waist="Fotia Belt",
                      legs="Samnuha Tights",
                      feet=HerculeanFeet.CritDmg}                          
                               
    sets.ChantDuCygne.AccuracyHigh = {ammo="Falcon Eye",
                      head="Dampening Tam",
                      neck="Fotia Gorget",
                      ear1="Moonshade earring",ear2="Zennaroi earring",
                      body="Abnoba Kaftan",
                      hands=HerculeanGloves.HighAcc,
                      ring1="Begrudging Ring",ring2="Ramuh Ring +1",
                      back="Rosmerta's Cape",
                      waist="Fotia Belt",
                      legs="Samnuha Tights",
                      feet=HerculeanFeet.CritDmg}
                               
    sets.Expiacion = {}
   
    sets.Expiacion.index = {'Attack','Accuracy'}
    Expiacion_ind = 1
   
    sets.Expiacion.Attack = {ammo="Floestone",
                    head=HerculeanHelm.WSD,
                    neck="Caro Necklace",
                    ear1="Ishvara Earring",ear2="Brutal Earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.WSD,
                    ring1="Rufescent Ring",ring2="Ifrit Ring +1",
                    back="Cornflower Cape",
                    waist="Grunfeld Rope",
                    legs=HerculeanLegs.WSD,
                    feet=HerculeanFeet.WSD}
                   
    sets.Expiacion.Accuracy = {ammo="Falcon Eye",
                    head=HerculeanHelm.WSD,
                    neck="Fotia Gorget",
                    ear1="Ishvara Earring",ear2="Cessance Earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.WSD,
                    ring1="Rufescent Ring",ring2="Ramuh ring +1",
                    back="Rosmerta's Cape",
                    waist="Grunfeld Rope",
                    legs=HerculeanLegs.WSD,
                    feet=HerculeanFeet.WSD}        
                     
    sets.WS.SanguineBlade = {}
   
    sets.WS.SanguineBlade = {ammo="Pemphredo Tathlum",
                    head="Pixie Hairpin +1",
                    neck="Sanctity Necklace",
                    ear1="Friomisi Earring",ear2="Hecate's earring",
                    body="Amalric Doublet",
                    hands="Amalric Gages",
                    ring1="Archon Ring",ring2="Rufescent Ring",
                    back="Cornflower cape",
                    waist="Grunfeld Rope",
                    legs="Amalric Slops",
                    feet="Hashishin Basmak +1"}
           
    sets.WS.CircleBlade = {ammo="Floestone",
                   head="Adhemar Bonnet",
                   neck="Asperity necklace",
                   ear1="Cessance Earring",ear2="Brutal Earring",
                   body="Adhemar Jacket",
                   hands="Adhemar Wristbands",
                   ring1="Epona's ring",ring2="Apate Ring",
                   back="Rosmerta's Cape",
                   waist="Windbuffet Belt +1",
                   legs="Samnuha Tights",
                   feet=TaeonBoots.TA}
   
    sets.SavageBlade = {}
   
    sets.SavageBlade.index = {'Attack','Accuracy'}
    SavageBlade_ind = 1
 
    sets.SavageBlade.Attack ={ammo="",
                   head="",
                   neck="",
                   ear1="",ear2="",
                   body="",
                   hands="",
                   ring1="",ring2="",
                   back="",
                   waist="",
                   legs="",
                   feet=""}
                               
    sets.SavageBlade.Accuracy ={ammo="",
                   head="",
                   neck="",
                   ear1="",ear2="",
                   body="",
                   hands="",
                   ring1="",ring2="",
                   back="",
                   waist="",
                   legs="",
                   feet=""}
   
    sets.Realmrazer = {}
   
    sets.Realmrazer.index = {'Attack','Accuracy'}
    Realmrazer_ind = 1 
 
    sets.Realmrazer.Attack ={ammo="Hydrocera",
                    head="Carmine Mask",
                    neck="Fotia Gorget",
                    ear1="Moonshade Earring",ear2="Brutal Earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.WSD,
                    ring1="Epona's ring",ring2="Rufescent Ring",
                    back="Cornflower Cape",
                    waist="Fotia Belt",
                    legs="Telchine Braconi",
                    feet="Carmine Greaves +1"}
                               
    sets.Realmrazer.Accuracy ={ammo="",
                   head="",
                   neck="",
                   ear1="",ear2="",
                   body="",
                   hands="",
                   ring1="",ring2="",
                   back="",
                   waist="",
                   legs="",
                   feet=""}
                   
    sets.FlashNova = {}            
                   
    sets.FlashNova.index = {'Attack','Accuracy'}
    FlashNova_ind = 1  
 
    sets.FlashNova.Attack ={ammo="",
                   head="Helios Band",
                   neck="Sanctity Necklace",
                   ear1="Hecate's Earring",ear2="Friomisi Earring",
                   body="Amalric Doublet",
                   hands="Amalric Gages",
                   ring1="Shiva Ring +1",ring2="Weatherspoon Ring",
                   back="Cornflower Cape",
                   waist="Eschan Stone",
                   legs="Amalric Slops",
                   feet="Hashishin Basmak +1"}
                               
    sets.FlashNova.Accuracy ={ammo="",
                   head="",
                   neck="",
                   ear1="",ear2="",
                   body="",
                   hands="",
                   ring1="",ring2="",
                   back="",
                   waist="",
                   legs="",
                   feet=""}            
 
   
                   
    --Blue Magic Sets--
    sets.BlueMagic = {}
   
    sets.BlueMagic.STR = {ammo="Floestone",
                  head="Adhemar Bonnet",
                  neck="Caro Necklace",
                  ear1="Zennaroi Earring",ear2="Kuwunga Earring",
                  body="Adhemar Jacket",
                  hands="Adhemar Wristbands",
                  ring1="Ifrit Ring +1",ring2="Apate Ring",
                  back="Aptitude Mantle +1",
                  waist="Grunfeld Rope",
                  legs="Samnuha Tights",
                  feet=HerculeanFeet.TA}
                         
    sets.BlueMagic.STRDEX = set_combine(sets.BlueMagic.STR,{
                 })
                           
        sets.BlueMagic.STRVIT = set_combine(sets.BlueMagic.STR,{
                 })
                             
        sets.BlueMagic.STRMND = set_combine(sets.BlueMagic.STR,{
                 })
                               
    sets.BlueMagic.AGI = set_combine(sets.BlueMagic.STR,{
                feet="Thereoid Greaves"})
       
    sets.BlueMagic.INT = {ammo="Pemphredo Tathlum",
                head="Herculean Helm",
                neck="Sanctity Necklace",
                ear1="Hecate's earring",ear2="Friomisi earring",
                body="Amalric Doublet +1",
                hands="Amalric Gages +1",
                ring1="Shiva Ring +1",ring2="Acumen ring",
                back="Cornflower Cape",
                waist="Aswang sash",
                legs="Amalric Slops +1",
                feet="Amalric nails"}
                 
    sets.BlueMagic.LightNuke = set_combine(sets.BlueMagic.INT,{
                ring2="Weatherspoon Ring",})
                 
    sets.BlueMagic.DarkNuke = set_combine(sets.BlueMagic.INT,{
                head="Pixie Hairpin +1",
                ring2="Archon Ring",})
                         
    sets.BlueMagic.Cures = {ammo="Hydrocera",
                    head="Carmine Mask",
                    neck="Phalaina Locket",
                    ear1="Mendicant's Earring",ear2="Ethereal Earring",
                    body="Vrikodara Jupon",
                    hands="Telchine Gloves",
                    ring1="Kunaji Ring",ring2="Rufescent Ring",
                    back="Cornflower Cape",
                    waist="Gishdubar Sash",
                    legs="Gyve Trousers",
                    feet="Medium's Sabots"}
   
    sets.BlueMagic.Battery = {ammo="Pemphredo Tathlum",
                    head="Amalric Coif",
                    neck="Incanter's Torque",
                    ear1="Suppanomimi",ear2="Ethereal earring",
                    body="Emet Harness +1",
                    hands=HerculeanGloves.DT,
                    ring1="Dark ring",ring2="Defending Ring",
                    back="Umbra Cape",
                    waist="Gishdubar Sash",
                    legs="Iuitl Tights +1",
                    feet="Carmine Greaves +1"}
                           
    sets.BlueMagic.Stun = {ammo="Pemphredo Tathlum",
                    head="Carmine Mask +1",
                    neck="Sanctity Necklace",
                    ear1="Zennaroi Earring",ear2="Dignitary's Earring",
                    body="Amalric Doublet",
                    hands="Adhemar Wristbands",
                    ring1="Ramuh Ring +1",ring2="Weatherspoon Ring",
                    back="Cornflower cape",
                    waist="Eschan Stone",
                    legs="Hashishin Tayt +1",
                    feet=TaeonBoots.TA}
                           
    sets.BlueMagic.HeavyStrike = {ammo="Falcon Eye",
                    head="Adhemar Bonnet",
                    neck="Caro Necklace",
                    ear1="Zennaroi Earring",ear2="Kuwunga Earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.Crit,
                    ring1="Ifrit Ring +1",ring2="Apate Ring",
                    back="Rosmerta's Cape",
                    waist="Grunfeld Rope",
                    legs="Samnuha Tights",
                    feet=HerculeanFeet.TA}
                                 
    sets.BlueMagic.ChargedWhisker = {ammo="Pemphredo Tathlum",
                    head="Amalric Coif",
                    neck="Sanctity Necklace",
                    ear1="Hecate's earring",ear2="Friomisi earring",
                    body="Adhemar Jacket",
                    hands="Adhemar Wristbands",
                    ring1="Shiva ring",ring2="Ramuh Ring +1",
                    back="Cornflower cape",
                    waist="Saline Belt",
                    legs="Amalric Slops",
                    feet="Hashishin Basmak +1"}
   
    sets.BlueMagic.WhiteWind = {ammo="Pemphredo Tathlum",
                    head="Adhemar Bonnet",
                    neck="Phalaina Locket",
                    ear1="Mendicant's Earring",ear2="Ethereal Earring",
                    body="Vrikodara Jupon",
                    hands="Telchine Gloves",
                    ring1="Kunaji Ring",ring2="Rufescent Ring",
                    back="Cornflower Cape",
                    waist="Gishdubar Sash",
                    legs="Gyve Trousers",
                    feet="Medium's Sabots"}
                                     
    sets.BlueMagic.MagicAccuracy = {ammo="Pemphredo Tathlum",
                    head="Amalric Coif",
                    neck="Sanctity Necklace",
                    ear1="Psystorm earring",ear2="Lifestorm earring",
                    body="Amalric Doublet",
                    hands="Leyline Gloves",
                    ring1="Ramuh Ring +1",ring2="Weatherspoon Ring",
                    back="Cornflower cape",
                    waist="Olseni Belt",
                    legs="Amalric Slops",
                    feet="Hashishin Basmak +1"}
                                     
    sets.BlueMagic.Skill = {ammo="Pemphredo Tathlum",
                    head="Luhlaza Keffiyah",
                    neck="Incanter's Torque",
                    ear1="Loquac. Earring",ear2="Ethereal earring",
                    body="Assim. jubbah +1",
                    hands="Rawhide Gloves",
                    ring1="Lebeche ring",ring2="Weatherspoon Ring",
                    back="Cornflower cape",
                    waist="Gishdubar Sash",
                    legs="Hashishin Tayt +1",
                    feet="Luhlaza charuqs +1"}
                     
    sets.BlueMagic.Enmity = {ammo="None",
                    head="Rabid Visor",
                    neck="Warder's Charm +1",
                    ear1="None",ear2="None",
                    body="Emet Harness +1",
                    hands="None",
                    ring1="None",ring2="Petrov Ring",    
                    back="Mubvumbamiri mantle",
                    waist="None",
                    legs="Obatala Subligar",
                    Feet="None"}     
                                 
                                 
                       
                       
    --Utility Sets--
    --Sets such as Phalanx/Steps are out of date because I don't fucking cast/use that shit!
   
    sets.Utility = {}
   
    sets.Utility.Stoneskin = {ammo="Hydrocera",
                    head="Carmine Mask",
                    neck="Stone Gorget",
                    ear1="Loquac. earring",ear2="Earthcry earring",
                    body="Assim. jubbah +1",
                    hands="Stone Mufflers",
                    ring1="None",ring2="Rufescent Ring",
                    back="Swith cape",
                    waist="Siegel sash",
                    legs="Haven hose",
                    feet=HerculeanFeet.DT}
                             
    sets.Utility.Phalanx = {ammo="Pemphredo Tathlum",
                    head="Amalric Coif",
                    neck="Colossus's torque",
                    ear1="Loquac. earring",ear2="Augment. earring",
                    body="Assim. jubbah +1",
                    hands="Assim. bazu. +1",
                    ring1="Lebeche ring",ring2="Weatherspoon ring",
                    back="Swith cape",
                    waist="Pythia sash +1",
                    legs="Portent pants",
                    feet=HerculeanFeet.DT}
                           
    sets.Utility.Steps = {ammo="Falcon Eye",
                    head="Adhemar Bonnet",
                    ear1="Dudgeon Earring",ear2="Heartseeker earring",
                    body="Adhemar Jacket",
                    hands=HerculeanGloves.WSD,
                    back="Rosmerta's Cape",
                    waist="Chaac Belt",
                    legs="Samnuha Tights",
                    feet=HerculeanFeet.DT}
                         
    sets.Utility.PDT = {ammo="Falcon Eye",
                    head=HerculeanHelm.DT,
                    neck="Loricate Torque +1",
                    ear1="Odnowa Earring +1",ear2="Ethereal Earring",
                    body="Emet Harness +1",
                    hands=HerculeanGloves.DT,
                    ring1="Defending ring",ring2="Dark ring",
                    back="Umbra Cape",
                    waist="Flume belt",
                    legs="Iuitl tights +1",
                    feet=HerculeanFeet.DT}
                       
    sets.Utility.MDT = {ammo="Floestone",
                    head="Dampening Tam",
                    neck="Loricate Torque +1",
                    ear1="Flashward Earring",ear2="Odnowa Earring +1",
                    body="Amalric Doublet",
                    hands=HerculeanGloves.DT,
                    ring1="Defending ring",ring2="Dark ring",
                    back="Mubvumbamiri Mantle",
                    waist="Flax Sash",
                    legs=HerculeanLegs.DT,
                    feet=HerculeanFeet.DT}
                           
    sets.Enhancing = {ammo="Pemphredo Tathlum",
                    head="Carmine Mask +1",
                    neck="Incanter's Torque",
                    ear1="Suppanomimi",ear2="Ethereal earring",
                    body="Telchine Chasuble",
                    ring1="Dark ring",ring2="Defending Ring",
                    back="Umbra Cape",
                    waist="Gishdubar Sash",
                    legs="Carmine Cuisses +1",
                    feet="Carmine Greaves +1"}
   
   
   
    --Job Ability Sets--
   
    sets.JA = {}
   
    sets.JA.ChainAffinity = {feet="Assim. charuqs +1"}
   
    sets.JA.BurstAffinity = {feet="Hashishin Basmak +1"}
   
    sets.JA.Efflux = {legs="Hashishin Tayt +1"}
   
    sets.JA.AzureLore = {hands="Luhlaza bazubands"}
   
    sets.JA.Diffusion = {ammo="Pemphredo Tathlum", neck="Incanter's Torque", head="Amalric Coif", feet="Luhlaza Charuqs +1", waist="Gishdubar Sash"}
   
    sets.JA.Provoke = set_combine(sets.BlueMagic.Enmity,{})
   
    sets.JA.Warcry = set_combine(sets.BlueMagic.Enmity,{})
 
                               
                               
           
           
           
           
    --Precast Sets--
    sets.precast = {}
   
    sets.precast.FC = {}
   
    sets.precast.FC.Standard = {ammo="Impatiens",
                    head="Herculean Helm",
                    neck="Voltsurge Torque",
                    ear1="Loquac. Earring",ear2="Etiolation Earring",
                    body="Taeon Tabard",
                    hands="Leyline Gloves",
                    ring1="Prolix Ring",ring2="Weatherspoon Ring",
                    back="Swith cape +1",
                    waist="Witful Belt",
                    legs="Lengo pants",
                    feet="Carmine Greaves"}
   
    sets.precast.FC.Blue = {ammo="Impatiens",
                    head="Herculean Helm",
                    neck="Voltsurge Torque",
                    ear1="Loquac. Earring",ear2="None",
                    body="Hashishin Mintan",
                    hands="Leyline Gloves",
                    ring1="Prolix Ring",ring2="Weatherspoon Ring",
                    back="Swith cape +1",
                    waist="Witful Belt",
                    legs="Enif Cosciales",
                    feet="Carmine Greaves"} 
end
 
 
 
 
 
 
function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC.Standard)
               
        elseif spell.action_type == 'BlueMagic' then
        equip(sets.precast.FC.Blue)
    end
   
    if spell.english == 'Azure Lore' then
        equip(sets.JA.AzureLore)
    end
   
    if spell.english == 'Requiescat' then
        equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
    end
   
    if spell.english == 'Chant du Cygne' then
        equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
    end
   
    if spell.english == 'Expiacion' then
        equip(sets.Expiacion[sets.Expiacion.index[Expiacion_ind]])
    end
 
    if spell.english == 'Savage Blade' then
        equip(sets.Expiacion[sets.Expiacion.index[Expiacion_ind]])
    end
   
    if spell.english == 'Realmrazer' then
        equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
    end
   
    if spell.english == 'Flash Nova' then
        equip(sets.FlashNova[sets.FlashNova.index[FlashNova_ind]])
    end
   
    if spell.english == 'Circle Blade' then
        equip(sets.WS.CircleBlade)
    end
   
    if spell.english == 'Sanguine Blade' or spell.english == 'Red Lotus Blade' then
        equip(sets.WS.SanguineBlade)
    end
   
    if spell.english == 'Box Step' then
        equip(sets.Utility.Steps)
    end
end
   
function midcast(spell,act)
    if spell.english == 'Vertical Cleave'   or spell.english == 'Death Scissors'    or spell.english == 'Empty Thrash'
    or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike'      or spell.english == 'Bloodrake'
    or spell.english == 'Sweeping Gouge'    then
        equip(sets.BlueMagic.STR)
        if buffactive['Chain Affinity'] then
            equip(sets.JA.ChainAffinity)
        end
        if buffactive['Efflux'] then
            equip(sets.JA.Efflux)
        end
    end
       
    if spell.english == 'Disseverment'      or spell.english == 'Hysteric Barrage'  or spell.english == 'Frenetic Rip'
    or spell.english == 'Seedspray'         or spell.english == 'Vanity Dive'       or spell.english == 'Goblin Rush'
    or spell.english == 'Paralyzing Triad'  or spell.english == 'Thrashing Assault'  then
        equip(sets.BlueMagic.STRDEX)
        if buffactive['Chain Affinity'] then
            equip(sets.JA.ChainAffinity)
        end
        if buffactive['Efflux'] then
            equip(sets.JA.Efflux)
        end
    end
   
    if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball'
    or spell.english == 'Glutinous Dart'  or spell.english == 'Sinker Drill' then
        equip(sets.BlueMagic.STRVIT)
        if buffactive['Chain Affinity'] then
            equip(sets.JA.ChainAffinity)
        end
        if buffactive['Efflux'] then
            equip(sets.JA.Efflux)
        end
    end
   
    if spell.english == 'Whirl of Rage' then
        equip(sets.BlueMagic.STRMND)
        if buffactive['Chain Affinity'] then
            equip(sets.JA.ChainAffinity)
        end
        if buffactive['Efflux'] then
            equip(sets.JA.Efflux)
        end
    end
   
    if spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' then
        equip(sets.BlueMagic.AGI)
        if buffactive['Chain Affinity'] then
            equip(sets.JA.ChainAffinity)
        end
        if buffactive['Efflux'] then
            equip(sets.JA.Efflux)
        end
    end
   
    if spell.english == 'Gates of Hades'    or spell.english == 'Leafstorm'         or spell.english == 'Firespit'
    or spell.english == 'Acrid Stream'      or spell.english == 'Regurgitation'     or spell.english == 'Corrosive Ooze'    
    or spell.english == 'Thermal Pulse'     or spell.english == 'Evryone. Grudge'   or spell.english == 'Water Bomb'       
    or spell.english == 'Dark Orb'          or spell.english == 'Thunderbolt'       or spell.english == 'Tem. Upheaval'
    or spell.english == 'Embalming Earth'   or spell.english == 'Foul Waters'       or spell.english == 'Rending Deluge'
    or spell.english == 'Droning Whirlwind' or spell.english == 'Subduction'        or spell.english == 'Polar Roar'       
    or spell.english == 'Entomb'            or spell.english == 'Spectral Floe'    
    or spell.english == 'Scouring Spate'    or spell.english == 'Searing Tempest'   or spell.english == 'Anvil Lightning'
    or spell.english == 'Silent Storm'      or spell.english == 'Swipe'             or spell.english == 'Lunge' then
        equip(sets.BlueMagic.INT)
        if buffactive['Burst Affinity'] then
            equip(sets.JA.BurstAffinity)
        end
    end
       
    if spell.english == 'Magic Hammer'      or spell.english == 'Retinal Glare'     or spell.english == 'Uproot'
    or spell.english == 'Blinding Fulgor'   or spell.english == 'Diffusion Ray'     or spell.english == 'Rail Cannon' then
        equip(sets.BlueMagic.LightNuke)
        if buffactive['Burst Affinity'] then
            equip(sets.JA.BurstAffinity)
        end
    end
   
    if spell.english == 'Tenebral Crush'    or spell.english == 'Palling Salvo'     or spell.english == 'Eyes on Me'
    or spell.english == 'Evryone. Grudge'  or spell.english == 'Dark Orb' then
        equip(sets.BlueMagic.DarkNuke)
        if buffactive['Burst Affinity'] then
            equip(sets.JA.BurstAffinity)
        end
    end
   
    if spell.english == 'Magic Fruit'   or spell.english == 'Plenilune Embrace'     or spell.english == 'Wild Carrot'
    or spell.english == 'Pollen'        or spell.english == 'Cure IV'               or spell.english == 'Restoral' then
        equip(sets.BlueMagic.Cures)
    end
   
    if spell.english == 'White Wind' then
        equip(sets.BlueMagic.WhiteWind)
    end
   
    if spell.english == 'Battery Charge'    or spell.english == 'Refresh' then
        equip(sets.BlueMagic.Battery)
    end
   
    if spell.english == 'Barstone'      or spell.english == 'Barsleep'              or spell.english == 'Barwater'
    or spell.english == 'Barfire'       or spell.english == 'Barfire'               or spell.english == 'Barblind'
    or spell.english == 'Barblizzard'   or spell.english == 'Barsilence'            or spell.english == 'Barthunder'
    or spell.english == 'Barvirus'      or spell.english == 'Barpetrify'            or spell.english == 'Regen'
    or spell.english == 'Regen II'      or spell.english == 'Aquaveil'              or spell.english == 'Protect II'
    or spell.english == 'Shell II'      or spell.english == 'Regeneration' then
        equip(sets.Enhancing)
    end
   
    if spell.english == 'Head Butt'     or spell.english == 'Sudden Lunge'          or spell.english == 'Blitzstrahl' then
        equip(sets.BlueMagic.Stun)
    end
   
    if spell.english == 'Heavy Strike' then
        equip(sets.BlueMagic.HeavyStrike)
    end
   
    if spell.english == 'Actinic Burst' or spell.english == 'Fantod'                or spell.english == 'Jettatura'
    or spell.english == 'Exuviation'    or spell.english == 'Temporal Shift'        or spell.english == 'Flash'then
        equip(sets.BlueMagic.Enmity)
    end
   
    if spell.english == 'Charged Whisker' then
        equip(sets.BlueMagic.ChargedWhisker)
        if buffactive['Burst Affinity'] then
            equip(sets.JA.BurstAffinity)
        end
    end
   
    if spell.english == 'Frightful Roar'    or spell.english == 'Infrasonics'           or spell.english == 'Barbed Crescent'
    or spell.english == 'Tourbillion'       or spell.english == 'Cimicine Discharge'    or spell.english == 'Sub-zero smash'
    or spell.english == 'Filamented Hold'   or spell.english == 'Mind Blast'            or spell.english == 'Sandspin'
    or spell.english == 'Hecatomb Wave'     or spell.english == 'Cold Wave'             or spell.english == 'Terror Touch'
    or spell.english == 'Dream Flower'      or spell.english == 'Absolute Terror'       or spell.english == 'Temporal Shift'
    or spell.english == 'Blank Gaze' then
        equip(sets.BlueMagic.MagicAccuracy)
    end
   
    if spell.english == 'MP Drainkiss'      or spell.english == 'Digest'                or spell.english == 'Blood Saber'
    or spell.english == 'Blood Drain'       or spell.english == 'Osmosis'               or spell.english == 'Occultation'
    or spell.english == 'Magic Barrier'     or spell.english == 'Diamondhide'           or spell.english == 'Metallic Body'
    or spell.english == 'Mighty Guard' then
        equip(sets.BlueMagic.Skill)
        if buffactive['Diffusion'] then
            equip(sets.JA.Diffusion)
        end
    end
   
    if spell.english == 'Cocoon'            or spell.english == 'Harden Shell'          or spell.english == 'Animating Wail'
    or spell.english == 'Nat. Meditation'   or spell.english == 'Carcharian Verve'     
    or spell.english == 'O. Counterstance'  or spell.english == 'Barrier Tusk'          or spell.english == 'Saline Coat' then
        if buffactive['Diffusion'] then
            equip(sets.JA.Diffusion)
        end
    end
 
end
 
function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end
 
function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end
 
function self_command(command)
    if command == 'toggle TP set' then
        TP_ind = TP_ind +1
        if TP_ind > #sets.TP.index then TP_ind = 1 end
        send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind +1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    elseif command == 'toggle Req set' then
        Requiescat_ind = Requiescat_ind +1
        if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
        send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
    elseif command == 'toggle CDC set' then
        ChantDuCygne_ind = ChantDuCygne_ind +1
        if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
        send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
    elseif command == 'toggle Expi set' then
        Expiacion_ind = Expiacion_ind +1
        if Expiacion_ind > #sets.Expiacion.index then Expiacion_ind = 1 end
        send_command('@input /echo <----- Expiacion Set changed to '..sets.Expiacion.index[Expiacion_ind]..' ----->')
    elseif command == 'toggle Savage set' then
        SavageBlade_ind = SavageBlade_ind +1
        if SavageBlade_ind > #sets.SavageBlade.index then Expiacion_ind = 1 end
        send_command('@input /echo <----- Savage Blade Set changed to '..sets.SavageBlade.index[SavageBlade_ind]..' ----->')
    elseif command == 'toggle Realm set' then
        Realmrazer_ind = Realmrazer_ind +1
        if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
    elseif command == 'toggle FlashNova set' then
        FlashNova_ind = FlashNova_ind +1
        if FlashNova_ind > #sets.FlashNova.index then FlashNova_ind = 1 end
        send_command('@input /echo <----- Savage Blade Set changed to '..sets.FlashNova.index[FlashNova_ind]..' ----->')
     elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer Bar & AM3 Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(159,'AM3: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer Bar --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
end