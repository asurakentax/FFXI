-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant', 'Proc', 'Burst', 'CP')
    state.IdleMode:options('Normal', 'PDT')
    
    state.MagicBurst = M(false, 'Magic Burst')

    lowTierNukes = S{'Stone', 'Water', 'Aero', 'Fire', 'Blizzard', 'Thunder',
        'Stone II', 'Water II', 'Aero II', 'Fire II', 'Blizzard II', 'Thunder II',
        'Stone III', 'Water III', 'Aero III', 'Fire III', 'Blizzard III', 'Thunder III',
        'Stonega', 'Waterga', 'Aeroga', 'Firaga', 'Blizzaga', 'Thundaga',
        'Stonega II', 'Waterga II', 'Aeroga II', 'Firaga II', 'Blizzaga II', 'Thundaga II'}
    
    -- Additional local binds
    send_command('bind ^` input /ma Stun <t>')
    send_command('bind @1 gs c activate MagicBurst')

    select_default_macro_book()

    include("Augmented-Gear.lua")
end

-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind ^`')
    send_command('unbind @`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    
    ---- Precast Sets ----
    
    -- Precast sets to enhance JAs
    sets.precast.JA['Mana Wall'] = {feet="Goetia Sabots +2"}

    sets.precast.JA.Manafont = {body="Sorcerer's Coat +2"}
    
    -- equip to maximize HP (for Tarus) and minimize MP loss before using convert
    sets.precast.JA.Convert = {}


    -- Fast cast sets for spells

    sets.precast.FC = {ammo="Impatiens",
        head=MerlinicHood.FC,neck="Voltsurge Torque",ear1="Etiolation Earring",ear2="Loquacious Earring",
        body="Anhur Robe",hands=MerlinicDastanas.FC,ring1="Rahab Ring",ring2="Weather. Ring",
        back="Swith Cape +1",waist="Witful Belt",legs=PsyclothLapps.D,feet=MerlinicCrackows.FC}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

    --sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris", back="Pahtli Cape",feet=VanyaClogs.D})

    sets.precast.FC.Curaga = sets.precast.FC.Cure

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        head="Hagondes Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Rajas Ring",ring2="Icesoul Ring",
        back="Taranus's Cape",waist="Cognition Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Vidohunir'] = {ammo="Dosis Tathlum",
        head="Hagondes Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",
        body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
        back="Toro Cape",waist="Thunder Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

    sets.precast.WS['Myrkr'] = {sub="Elder's Grip +1",
        head="Xux Hat",neck="Dualism Collar",ear1="Etiolation Earring",ear2="Moonshade Earring",
        body="Amalric Doublet +1",hands="Otomi Gloves",ring1="Rahab Ring",ring2="",
        back=Bane.Dark,waist="Fucho-no-obi",legs="Amalric Slops +1",feet="Amalric Nails"}    
    
    ---- Midcast Sets ----

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.Cure = {ammo="Hydrocera",
        head=VanyaHood.C,neck="Nuna Gorget",ear1="Mendi. Earring",ear2="Gifted Earring",
        body="Vrikodara Jupon",hands="Telchine Gloves",ring1="Ephedra Ring",ring2="Ephedra Ring",
        back="Pahtli Cape",waist="Luminary Sash",legs=LengoPants.MACC,feet=VanyaClogs.D}

    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast['Enhancing Magic'] = {ammo="Pemphredo Tathlum",
        head="Befouled Crown",
        body="Anhur Robe",
        waist="Olympus Sash",legs=TelchineBraconi.Duration,feet="Regal Pumps +1"}
    
    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})

    sets.midcast['Enfeebling Magic'] = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head="Befouled Crown",neck="Imbodla Necklace",ear1="Barkaro. Earring",ear2="Lifestorm Earring",
        body="Vanya Robe",hands="Hagondes Cuffs +1",ring1="Weather. Ring",ring2="Rahab Ring",
        back="Taranus's Cape",waist="Luminary Sash",legs=PsyclothLapps.D,feet=MerlinicCrackows.MACC}
        
    sets.midcast.ElementalEnfeeble = sets.midcast['Enfeebling Magic']

    sets.midcast['Dark Magic'] = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head="Nahtirah Hat",neck="Deceiver's Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
        back="Taranus's Cape",waist="Goading Belt",legs=PsyclothLapps.D,feet=MerlinicCrackows.MACC}

    sets.midcast.Drain = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Deceiver's Torque",ear1="Gifted Earring",ear2="Barkaro. Earring",
        body="Merlinic Jubbah",hands=MerlinicDastanas.FC,ring1="Evanescence Ring",ring2="Weather. Ring",
        back=Bane.Dark,waist="Fucho-no-Obi",legs=MerlinicShalwar.Drain,feet=MerlinicCrackows.MB}
    
    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = {main="Lathi",sub="Clerisy Strap",ammo="Hydrocera",
        head=MerlinicHood.FC,neck="Sanctity Necklace",ear1="Barkaro. Earring",ear2="Lifestorm Earring",
        body="Merlinic Jubbah",hands="Hagondes Cuffs +1",ring1="Weather. Ring",ring2="Rahab Ring",
        back="Taranus's Cape",waist="Luminary Sash",legs=MerlinicShalwar.MB,feet=MerlinicCrackows.MACC}

    sets.midcast.BardSong = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head="Nahtirah Hat",neck="Weike Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
        body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
        back="Taranus's Cape",legs=PsyclothLapps.D,feet=MerlinicCrackows.MACC}


    -- Elemental Magic sets
    
    sets.midcast['Elemental Magic'] = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Sanctity Necklace",ear1="Barkaro. Earring",ear2="Friomisi Earring",
        body="Amalric Doublet +1",hands="Amalric Gages +1",ring1="Shiva Ring +1",ring2="Shiva Ring +1",
        back="Taranus's Cape",waist="Eschan Stone",legs="Amalric Slops +1",feet=MerlinicCrackows.MB}

    sets.midcast['Elemental Magic'].Resistant = set_combine(sets.midcast['Elemental Magic'], {body="Merlinic Jubbah",legs=MerlinicShalwar.MB})

    -- Minimal damage gear for procs.
    sets.midcast['Elemental Magic'].Proc = {main="Earth Staff", sub="Niobid Strap",ammo="Impatiens",
        head="Nahtirah Hat",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        body="Manasa Chasuble",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        back="Swith Cape +1",waist="Witful Belt",legs="Assid. Pants +1",feet="Chelona Boots +1"}

    sets.midcast['Elemental Magic'].Burst = {main="Lathi",sub="Niobid Strap",ammo="Pemphredo Tathlum",
        head=MerlinicHood.MB,neck="Mizu. Kubikazari",ear1="Barkaro. Earring",ear2="Friomisi Earring",
        body="Merlinic Jubbah",hands="Amalric Gages +1",ring1="Locus Ring",ring2="Mujin Band",
        back="Taranus's Cape",waist="Eschan Stone",legs="Amalric Slops +1",feet=MerlinicCrackows.MB}

    sets.midcast['Elemental Magic'].CP = set_combine(sets.midcast['Elemental Magic'].Burst, {body="Spae. Coat +1"})

    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {main="Chatoyant Staff",ammo="Clarus Stone",
        head="Nefer Khat +1",neck="Grandiose Chain",
        body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        waist="Austerity Belt",legs="Assid. Pants +1",feet="Serpentes Sabots"}
    

    -- Idle sets
    
    -- Normal refresh idle set
    sets.idle = {main="Lathi", sub="Niobid Strap",ammo="Impatiens",
        head="Befouled Crown",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Genmei Earring",
        body="Amalric Doublet +1",hands=MerlinicDastanas.Refresh,ring1="Defending Ring",ring2="Vertigo Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Assid. Pants +1",feet="Herald's Gaiters"}

    -- Idle mode that keeps PDT gear on, but doesn't prevent normal gear swaps for precast/etc.
    sets.idle.PDT = {main="Terra's Staff", sub="Zuuxowu Grip",ammo="Impatiens",
        head="Hagones Hat +1",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Genmei Earring",
        body="Merlinic Jubbah",hands="Hagones Cuffs +1",ring1="Defending Ring",ring2="Vertigo Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Hagondes Pants +1",feet="Herald's Gaiters"}

    -- Idle mode scopes:
    -- Idle mode when weak.
    
    -- Town gear.
    sets.idle.Town = sets.idle
        
    -- Defense sets

    sets.defense.PDT = {main="Terra's Staff",sub="Niobid Strap",
        head="Hagondes Hat +1",neck="Twilight Torque",ear1="Etiolation Earring",ear2="Genmei Earring",
        body="Merlinic Jubbah",hands="Hagondes Cuffs +1",ring1="Defending Ring",ring2="Vertigo Ring",
        back="Solemnity Cape",waist="Fucho-no-obi",legs="Hagondes Pants +1",feet="Hagondes Sabots"}

    sets.defense.MDT = {ammo="Demonry Stone",
        head=MerlinicHood.MB,neck="Warder's Charm",ear1="Etiolation Earring",ear2="Static Earring",
        body="Merlinic Jubbah",hands="Hagondes Cuffs +1",ring1="Defending Ring",ring2="Vertigo Ring",
        back="Tuilha Cape",waist="Fucho-no-obi",legs="Hagondes Pants +1",feet="Amalric Nails"}

    sets.Kiting = {feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    
    sets.buff['Mana Wall'] = {feet="Goetia Sabots +2"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
    sets.engaged = {
        head="Zelus Tiara",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Hagondes Coat",hands="Bokwus Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
        back="Solemnity Cape",waist="Goading Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    if spellMap == 'Cure' or spellMap == 'Curaga' then
        gear.default.obi_waist = "Goading Belt"
    elseif spell.skill == 'Elemental Magic' then
        gear.default.obi_waist = "Sekhmet Corset"
        if state.CastingMode.value == 'Proc' then
            classes.CustomClass = 'Proc'
        end
    end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)

end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == 'Elemental Magic' and state.MagicBurst.value then
        equip(sets.magic_burst)
    end    
    if spell.skill == 'Elemental Magic' then    
        if spell.element == world.day_element or spell.element == world.weather_element then
            if state.MagicBurst.value then
                equipSet = set_combine(sets.midcast['Elemental Magic'].CastingMode, sets.magic_burst)
                equipSet = set_combine(equipSet, {waist="Hachirin-No-Obi"})
                equip(equipSet)
                add_to_chat(122, "Weather Magic Burst")
            else 
                equipSet = set_combine(sets.midcast['Elemental Magic'].CastingMode, {waist="Hachirin-No-Obi"})
                equip(equipSet)
                add_to_chat(122, "Weather Nuke")
            end
        elseif state.MagicBurst.value then
                equipSet = set_combine(sets.midcast['Elemental Magic'].CastingMode, sets.magic_burst)
                equip(equipSet)
                add_to_chat(122, "Magic Burst")
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    -- Lock feet after using Mana Wall.
    if not spell.interrupted then
        if spell.english == 'Mana Wall' then
            enable('feet')
            equip(sets.buff['Mana Wall'])
            disable('feet')
        elseif spell.skill == 'Elemental Magic' then
            state.MagicBurst:reset()
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    -- Unlock feet when Mana Wall buff is lost.
    if buff == "Mana Wall" and not gain then
        enable('feet')
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
    if spell.skill == 'Elemental Magic' and default_spell_map ~= 'ElementalEnfeeble' then
        --[[ No real need to differentiate with current gear.
        if lowTierNukes:contains(spell.english) then
            return 'LowTierNuke'
        else
            return 'HighTierNuke'
        end
        --]]
    end
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    
    return idleSet
end


-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 4)
end
