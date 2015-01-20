-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'PDT', 'Reraise')
    state.WeaponskillMode:options('Normal', 'Acc', 'Mod')
    state.PhysicalDefenseMode:options('PDT', 'Reraise')

    update_combat_form()
    
    -- Additional local binds
    send_command('bind ^` input /ja "Hasso" <me>')
    send_command('bind !` input /ja "Seigan" <me>')

    select_default_macro_book()
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Hasso = buffactive.Hasso or false
    state.Buff.Seigan = buffactive.Seigan or false
    state.Buff.Sekkanoki = buffactive.Sekkanoki or false
    state.Buff.Sengikori = buffactive.Sengikori or false
    state.Buff['Meikyo Shisui'] = buffactive['Meikyo Shisui'] or false
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    
    -- Precast Sets
    -- Precast sets to enhance JAs
    sets.precast.JA.Meditate = {head="Wakido Kabuto",hands="Sakonji Kote"}
    sets.precast.JA['Warding Circle'] = {head="Wakido Kabuto"}
    sets.precast.JA['Blade Bash'] = {hands="Sakonji Kote"}
	
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {ammo="Sonia's Plectrum",head="Yaoyotl Helm",
        body="Mikinaak Breastplate",hands="Wakido Kote +1",ring1="Spiral Ring",
        back="Shadow Mantle",legs="Wakido Haidate +1",feet="Otronif Boots +1"}
		
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = 
		{
		range="Cibitshavore",
        	head="Gavialis Helm",
		neck="Ganesha's Mala",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
        	body="Phorcys Korazin",
		hands="Miki. Gauntlets",
		ring1="Pyrosoul Ring",
		ring2="Pyrosoul Ring",
        	back="Buquwik Cape",
		waist="Prosilio Belt",
		legs="Wakido Haidate +1",
		feet="Sak. Sune-Ate +1"
		}
		
	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Tachi: Fudo'] = set_combine(sets.precast.WS, {neck="Snow Gorget"})
	sets.precast.WS['Tachi: Shoha'] = set_combine(sets.precast.WS, {neck="Breeze Gorget",waist="Windbuffet Belt +1",back="Atheling Mantle",feet="Ejekamal Boots"})
	sets.precast.WS['Tachi: Gekko'] = set_combine(sets.precast.WS, {neck="Snow Gorget",waist="Snow Belt"})
	sets.precast.WS['Tachi: Yukikaze'] = set_combine(sets.precast.WS, {neck="Snow Gorget",waist="Snow Belt"})
	sets.precast.WS['Tachi: Ageha'] = set_combine(sets.precast.WS, {neck="Soil Gorget",waist="Soil Belt"})
    	sets.precast.WS['Tachi: Jinpu'] = set_combine(sets.precast.WS, {neck="Soil Gorget",waist="Soil Belt"})
	sets.precast.WS['Tachi: Rana'] = set_combine(sets.precast.WS, {body="Mes. Haubergeon",neck="Snow Gorget",waist="Windbuffet Belt +1",ear1="Bladeborn Earring",ear2="Steelflash Earring",back="Atheling Mantle"})
	sets.precast.WS['Tachi: Kasha'] = set_combine(sets.precast.WS, {neck="Light Gorget",waist="Light Belt"})
	
	-- Resting sets
    	sets.resting = {neck="Wiglen Gorget",ring1="Sheltered Ring",ring2="Paguroidea Ring"}
    

	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
    	sets.idle.Town = {main="Tsurumaru", sub="Bloodrain Strap",range="Cibitshavore",
        head="Gavialis Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Emet Harness +1",hands="Wakido Kote +1",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        back="Shadow Mantle",waist="Flume Belt",legs="Otronif Brais +1",feet="Danzo Sune-ate"}
		
	sets.idle.Field = {main="Tsurumaru", sub="Bloodrain Strap",range="Cibitshavore",
        head="Gavialis Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Emet Harness +1",hands="Wakido Kote +1",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        back="Shadow Mantle",waist="Flume Belt",legs="Otronif Brais +1",feet="Danzo Sune-ate"}
		
	sets.idle.Weak = {main="Tsurumaru", sub="Bloodrain Strap",range="Cibitshavore",
        head="Gavialis Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Twilight Body",hands="Wakido Kote +1",ring1="Sheltered Ring",ring2="Paguroidea Ring",
        back="Shadow Mantle",waist="Flume Belt",legs="Otronif Brais +1",feet="Danzo Sune-ate"}
	
	-- Defense sets	
	sets.Reraise = {head="Twilight Helm",body="Twilight Mail"}
	
	sets.engaged = {range="Cibitshavore",sub="Bloodrain Strap",
        head="Otomi Helm",neck="Ganesha's Mala",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Mes. Haubergeon",hands="Wakido Kote +1",ring1="Rajas Ring",ring2="K'ayres Ring",
        back="Takaha Mantle",waist="Windbuffet Belt +1",legs="Otronif Brais +1",feet="Otronif Boots +1"}		
		
	sets.engaged.Acc = {range="Cibitshavore",sub="Bloodrain Strap",
        head="Yaoyotl Helm",neck="Iqabi Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Mes. Haubergeon",hands="Wakido Kote +1",ring1="Rajas Ring",ring2="Patricius Ring",
        back="Takaha Mantle",waist="Anguinus Belt",legs="Xaddi Cuisses",feet="Otronif Boots +1"}
		
	sets.engaged.Reraise = set_combine(sets.engaged, {head="Twilight Helm", body="Twilight Mail"})
	
	sets.engaged.PDT = set_combine(sets.engaged, {body="Emet Harness +1",neck="Agitator's Collar",ring2="Patricius Ring",back="Shadow Mantle"})
	
	sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, {body="Emet Harness +1",neck="Agitator's Collar"})
		
	sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc, sets.Reraise)
end
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic target handling to be done.
function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        -- Change any GK weaponskills to polearm weaponskill if we're using a polearm.
        if player.equipment.main=='Quint Spear' or player.equipment.main=='Quint Spear' then
            if spell.english:startswith("Tachi:") then
                send_command('@input /ws "Penta Thrust" '..spell.target.raw)
                eventArgs.cancel = true
            end
        end
    end
end

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type:lower() == 'weaponskill' then
        if state.Buff.Sekkanoki then
            equip(sets.buff.Sekkanoki)
        end
        if state.Buff.Sengikori then
            equip(sets.buff.Sengikori)
        end
        if state.Buff['Meikyo Shisui'] then
            equip(sets.buff['Meikyo Shisui'])
        end
    end
end


-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    -- Effectively lock these items in place.
    if state.HybridMode.value == 'Reraise' or
        (state.DefenseMode.value == 'Physical' and state.PhysicalDefenseMode.value == 'Reraise') then
        equip(sets.Reraise)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    update_combat_form()
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function update_combat_form()
    if areas.Adoulin:contains(world.area) and buffactive.ionis then
        state.CombatForm:set('Adoulin')
    else
        state.CombatForm:reset()
    end
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
        set_macro_page(1, 3)
end
