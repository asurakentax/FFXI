-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
        Custom commands:

        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.

                                        Light Arts              Dark Arts

        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
--]]



-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    info.addendumNukes = S{"Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
        "Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
    update_active_strategems()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant', 'Burst')
    state.IdleMode:options('Normal', 'PDT')


    info.low_nukes = S{"Stone", "Water", "Aero", "Fire", "Blizzard", "Thunder"}
    info.mid_nukes = S{"Stone II", "Water II", "Aero II", "Fire II", "Blizzard II", "Thunder II",
                       "Stone III", "Water III", "Aero III", "Fire III", "Blizzard III", "Thunder III",
                       "Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",}
    info.high_nukes = S{"Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    send_command('bind ^` input /ma Stun <t>')

    select_default_macro_book()
    include("Augmented-Gear.lua")
end

function user_unload()
    send_command('unbind ^`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

    -- Precast Sets

    -- Precast sets to enhance JAs

    sets.precast.JA['Tabula Rasa'] = {legs="Pedagogy Pants"}


    -- Fast cast sets for spells

    sets.precast.FC = {sub="Clerisy Strap",ammo="Impatiens",
        head=MerlinicHood.FC,neck="Voltsurge Torque",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Anhur Robe",hands=MerlinicDastanas.FC,ring1="Rahab Ring",ring2="Weather. Ring",
        back="Swith Cape +1",waist="Witful Belt",legs=PsyclothLapps.D,feet=MerlinicCrackows.FC}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris",back="Pahtli Cape",legs="Kaykaus Tights",feet=VanyaClogs.D})

    sets.precast.FC.Curaga = sets.precast.FC.Cure

    sets.precast.FC.Impact = set_combine(sets.precast.FC['Elemental Magic'], {head=empty,body="Twilight Cloak"})


    -- Midcast Sets

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.Cure = {ammo="Hydrocera",
        head=VanyaHood.C,neck="Nuna Gorget",ear1="Mendi. Earring",ear2="Gifted Earring",
        body="Vrikodara Jupon",hands="Kaykaus Cuffs",ring1="Ephedra Ring",ring2="Ephedra Ring",
        back="Pahtli Cape",waist="Luminary Sash",legs=LengoPants.MACC,feet=VanyaClogs.D}

    sets.midcast.CureWithLightWeather = sets.midcast.Cure

    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast.Regen = {main="Bolelabunga",ammo="Impatiens",
    head="Arbatel Bonnet +1",neck="Twilight Torque",ear1="Gifted Earring",ear2="Mendi. Earring",
    body={name="Telchine Chas.", augments={'"Regen" potency+3',}},hands={name="Kaykaus Cuffs", augments={'MP+60','"Conserve MP"+6','"Fast Cast"+3',}},
    back={name="Bookworm's Cape", augments={'INT+1','MND+1','Helix eff. dur. +11','"Regen" potency+10',}},waist="Luminary Sash",legs={name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},feet={name="Telchine Pigaches", augments={'"Regen" potency+3',}}}

    sets.midcast.Cursna = {
        neck="Malison Medallion",
        hands="Hieros Mittens",ring1="Ephedra Ring",ring2="Ephedra Ring",
        feet="Gende. Galosh. +1"}

    sets.midcast['Enhancing Magic'] = {main="Akademos",head="Befouled Crown",body="Anhur Robe",
        waist="Olympus Sash",feet="Kaykaus Boots"} --500 w/ Light Arts

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})

    sets.midcast.Storm = set_combine(sets.midcast['Enhancing Magic'], {feet="Pedagogy Loafers"})

    sets.midcast.Protect = {ring1="Sheltered Ring"}
    sets.midcast.Protectra = sets.midcast.Protect

    sets.midcast.Shell = {ring1="Sheltered Ring"}
    sets.midcast.Shellra = sets.midcast.Shell


    -- Custom spell classes
    sets.midcast.MndEnfeebles = {main="Akademos",sub="Clerisy Strap",ammo="Pemphredo Tathlum",
        head="Befouled Crown",neck="Imbodla Necklace",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanya Robe",hands="Kaykaus Cuffs",ring1="Weather. Ring",ring2="Rahab Ring",
        back="Lugh's Cape",waist="Luminary Sash",legs=PsyclothLapps.D,feet=MerlinicCrackows.MACC}

    sets.midcast.IntEnfeebles = {main="Akademos",sub="Clerisy Strap",ammo="Pemphredo Tathlum",
        head="Befouled Crown",neck="Imbodla Necklace",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanya Robe",hands="Kaykaus Cuffs",ring1="Weather. Ring",ring2="Rahab Ring",
        back="Lugh's Cape",waist="Luminary Sash",legs=PsyclothLapps.D,feet=MerlinicCrackows.MACC}

    sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

    sets.midcast['Dark Magic'] = {main="Akademos",sub="Clerisy Strap",ammo="Incantor Stone",
        head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
        back="Refraction Cape",waist="Goading Belt",legs="Bokwus Slops",feet="Bokwus Boots"}

    sets.midcast.Kaustra = {main="Akademos",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Mizu. Kubikazari",ear1="Barkaro. Earring",ear2="Friomisi Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Shiva Ring",ring2="Strendu Ring",
        back="Lugh's Cape",waist="Hachirin-no-obi",legs=MerlinicShalwar.MB,feet=MerlinicCrackows.MB}

    sets.midcast.Drain = {main="Akademos",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Deceiver's Torque",ear1="Gifted Earring",ear2="Barkaro. Earring",
        body="Merlinic Jubbah",hands=MerlinicDastanas.FC,ring1="Evanescence Ring",ring2="Weather. Ring",
        back="Bookworm's Cape",waist="Fucho-no-Obi",legs=MerlinicShalwar.Drain,feet=MerlinicCrackows.MB}

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = {main="Akademos",sub="Clerisy Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.FC,neck="Sanctity Necklace",ear1="Barkaro. Earring",ear2="Lifestorm Earring",
        body="Merlinic Jubbah",hands="Kaykaus Cuffs",ring1="Weather. Ring",ring2="Rahab Ring",
        back="Lugh's Cape",waist="Luminary Sash",legs=MerlinicShalwar.MB,feet=MerlinicCrackows.MACC}

    sets.midcast.Stun.Resistant = set_combine(sets.midcast.Stun, {main="Akademos"})


    -- Elemental Magic sets are default for handling low-tier nukes.
    sets.midcast['Elemental Magic'] = {main="Akademos",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Sanctity Necklace",ear1="Barkaro. Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Shiva Ring",ring2="Acumen Ring",
        back="Lugh's Cape",waist="Eschan Stone",legs="Amalric Slops +1",feet=MerlinicCrackows.MB}

    sets.midcast['Elemental Magic'].Resistant = set_combine(sets.midcast['Elemental Magic'], {body="Merlinic Jubbah",legs=MerlinicShalwar.MB})

    sets.midcast['Elemental Magic'].Burst = {main="Akademos",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Mizu. Kubikazari",ear1="Barkaro. Earring",ear2="Friomisi Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Locus Ring",ring2="Mujin Band",
        back="Lugh's Cape",waist="Eschan Stone",legs="Amalric Slops +1",feet=MerlinicCrackows.MB}

    -- Custom refinements for certain nuke tiers
    sets.midcast['Elemental Magic'].HighTierNuke = sets.midcast['Elemental Magic']

    sets.midcast['Elemental Magic'].HighTierNuke.Resistant = sets.midcast['Elemental Magic'].Resistant

    sets.midcast.Impact = {main="Akademos",sub="Clerisy Strap",ammo="Dosis Tathlum",
        head=empty,neck="Eddy Necklace",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Twilight Cloak",hands=gear.macc_hagondes,ring1="Icesoul Ring",ring2="Sangoma Ring",
        back="Toro Cape",waist="Demonry Sash",legs="Hagondes Pants",feet="Bokwus Boots"}
    
    -- Helix set
    sets.midcast.Helix = {main="Akademos",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Mizu. Kubikazari",ear1="Barkaro. Earring",ear2="Static",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Locus Ring",ring2="Mujin Band",
        back=Bookworm.Duration,waist="Eschan Stone",legs="Amalric Slops +1",feet="Arbatel Loafers +1"}


    -- Sets to return to when not performing an action.

    -- Resting sets
    sets.resting = {main="Chatoyant Staff",sub="Clerisy Strap",
        head="Nefer Khat +1",neck="Wiglen Gorget",
        body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        waist="Austerity Belt",legs="Nares Trews",feet="Serpentes Sabots"}


    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

    sets.idle = {main="Akademos",sub="Niobid Strap",ammo="Homiliary",
        head="Befouled Crown",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Genmei Earring",
        body="Amalric Doublet +1",hands=MerlinicDastanas.Refresh,ring1="Defending Ring",ring2="Vertigo Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Assid. Pants +1",feet="Gende. Galosh. +1"}

    sets.idle.Weak = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
        head="Nahtirah Hat",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        body="Hagondes Coat",hands=MerlinicDastanas.Refresh,ring1="Sheltered Ring",ring2="Meridian Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Nares Trews",feet="Gende. Galosh. +1"}

    -- Defense sets

    sets.idle.PDT = {main="Terra's Staff", sub="Niobid Strap",ammo="Impatiens",
        head="Hagones Hat +1",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Genmei Earring",
        body="Merlinic Jubbah",hands="Hagones Cuffs +1",ring1="Defending Ring",ring2="Vertigo Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Hagondes Pants +1",feet="Gende. Galosh. +1"}

    sets.Kiting = {feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Normal melee group
    sets.engaged = sets.idle

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    sets.buff['Ebullience'] = {head="Arbatel Bonnet +1"}
    sets.buff['Rapture'] = {head="Arbatel Bonnet +1"}
    sets.buff['Perpetuance'] = {hands="Savant's Bracers +2"}
    sets.buff['Immanence'] = {hands="Savant's Bracers +2"}
    sets.buff['Penury'] = {legs="Savant's Pants +2"}
    sets.buff['Parsimony'] = {legs="Savant's Pants +2"}
    sets.buff['Celerity'] = {feet="Pedagogy Loafers"}
    sets.buff['Alacrity'] = {feet="Pedagogy Loafers"}

    sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}

    sets.buff.FullSublimation = {head="Academic's Mortarboard",ear1="Savant's Earring",body="Pedagogy Gown"}
    sets.buff.PDTSublimation = {head="Academic's Mortarboard",ear1="Savant's Earring"}

    --sets.buff['Sandstorm'] = {feet="Desert Boots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the general midcast() is done.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' then
        apply_grimoire_bonuses(spell, action, spellMap, eventArgs)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if buff == "Sublimation: Activated" then
        handle_equipping_gear(player.status)
    end
end

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Normal' then
            disable('main','sub','range')
        else
            enable('main','sub','range')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if world.weather_element == 'Light' then
                return 'CureWithLightWeather'
            end
        elseif spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Elemental Magic' then
            if info.low_nukes:contains(spell.english) then
                return 'LowTierNuke'
            elseif info.mid_nukes:contains(spell.english) then
                return 'MidTierNuke'
            elseif info.high_nukes:contains(spell.english) then
                return 'HighTierNuke'
            end
        end
    end
end

function customize_idle_set(idleSet)
    if state.Buff['Sublimation: Activated'] then
        if state.IdleMode.value == 'Normal' then
            idleSet = set_combine(idleSet, sets.buff.FullSublimation)
        elseif state.IdleMode.value == 'PDT' then
            idleSet = set_combine(idleSet, sets.buff.PDTSublimation)
        end
    end

    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end

    return idleSet
end

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    if cmdParams[1] == 'user' and not (buffactive['light arts']      or buffactive['dark arts'] or
                       buffactive['addendum: white'] or buffactive['addendum: black']) then
        if state.IdleMode.value == 'Stun' then
            send_command('@input /ja "Dark Arts" <me>')
        else
            send_command('@input /ja "Light Arts" <me>')
        end
    end

    update_active_strategems()
    update_sublimation()
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for direct player commands.
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1]:lower() == 'scholar' then
        handle_strategems(cmdParams)
        eventArgs.handled = true
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Reset the state vars tracking strategems.
function update_active_strategems()
    state.Buff['Ebullience'] = buffactive['Ebullience'] or false
    state.Buff['Rapture'] = buffactive['Rapture'] or false
    state.Buff['Perpetuance'] = buffactive['Perpetuance'] or false
    state.Buff['Immanence'] = buffactive['Immanence'] or false
    state.Buff['Penury'] = buffactive['Penury'] or false
    state.Buff['Parsimony'] = buffactive['Parsimony'] or false
    state.Buff['Celerity'] = buffactive['Celerity'] or false
    state.Buff['Alacrity'] = buffactive['Alacrity'] or false

    state.Buff['Klimaform'] = buffactive['Klimaform'] or false
end

function update_sublimation()
    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
end

-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
    if state.Buff.Perpetuance and spell.type =='WhiteMagic' and spell.skill == 'Enhancing Magic' then
        equip(sets.buff['Perpetuance'])
    end
    if state.Buff.Rapture and (spellMap == 'Cure' or spellMap == 'Curaga') then
        equip(sets.buff['Rapture'])
    end
    if spell.skill == 'Elemental Magic' and spellMap ~= 'ElementalEnfeeble' then
        if state.Buff.Ebullience and spell.english ~= 'Impact' then
            equip(sets.buff['Ebullience'])
        end
        if state.Buff.Immanence then
            equip(sets.buff['Immanence'])
        end
        if state.Buff.Klimaform and spell.element == world.weather_element then
            equip(sets.buff['Klimaform'])
        end
    end

    if state.Buff.Penury then equip(sets.buff['Penury']) end
    if state.Buff.Parsimony then equip(sets.buff['Parsimony']) end
    if state.Buff.Celerity then equip(sets.buff['Celerity']) end
    if state.Buff.Alacrity then equip(sets.buff['Alacrity']) end
end


-- General handling of strategems in an Arts-agnostic way.
-- Format: gs c scholar <strategem>
function handle_strategems(cmdParams)
    -- cmdParams[1] == 'scholar'
    -- cmdParams[2] == strategem to use

    if not cmdParams[2] then
        add_to_chat(123,'Error: No strategem command given.')
        return
    end
    local strategem = cmdParams[2]:lower()

    if strategem == 'light' then
        if buffactive['light arts'] then
            send_command('input /ja "Addendum: White" <me>')
        elseif buffactive['addendum: white'] then
            add_to_chat(122,'Error: Addendum: White is already active.')
        else
            send_command('input /ja "Light Arts" <me>')
        end
    elseif strategem == 'dark' then
        if buffactive['dark arts'] then
            send_command('input /ja "Addendum: Black" <me>')
        elseif buffactive['addendum: black'] then
            add_to_chat(122,'Error: Addendum: Black is already active.')
        else
            send_command('input /ja "Dark Arts" <me>')
        end
    elseif buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: White" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    elseif buffactive['dark arts']  or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('input /ja Immanence <me>')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: Black" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    else
        add_to_chat(123,'No arts has been activated yet.')
    end
end


-- Gets the current number of available strategems based on the recast remaining
-- and the level of the sch.
function get_current_strategem_count()
    -- returns recast in seconds.
    local allRecasts = windower.ffxi.get_ability_recasts()
    local stratsRecast = allRecasts[231]

    local maxStrategems = (player.main_job_level + 10) / 20

    local fullRechargeTime = 4*60

    local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

    return currentCharges
end


-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 2)
end
