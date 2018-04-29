function init_include() 
-- Herculean Gear
HerculeanHelm={}
    HerculeanHelm.Nuke={name="Herculean Helm", augments={'Mag. Acc.+8','"Fast Cast"+2','MND+10','"Mag.Atk.Bns."+8',}}
       
HerculeanGloves={}
    HerculeanGloves.WSD={name="Herculean Gloves", augments={'Accuracy+21 Attack+21','Weapon skill damage +4%','Accuracy+9','Attack+10',}}
    HerculeanGloves.DT={name="Herculean Gloves", augments={'Accuracy+13','Damage taken-3%','AGI+1','Attack+5',}}
    HerculeanGloves.HighAcc={name="Herculean Gloves", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','DEX+15','Accuracy+11','Attack+13',}}
    HerculeanGloves.Refresh={name="Herculean Gloves", augments={'"Cure" potency +1%','Pet: Phys. dmg. taken -1%','"Refresh"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18',}}
    HerculeanGloves.Crit={name="Herculean Gloves", augments={'Attack+23','Crit. hit damage +4%','DEX+8','Accuracy+11',}}
    HerculeanGloves.TP={name="Herculean Gloves", augments={'Accuracy+2 Attack+2','"Triple Atk."+4','DEX+10','Accuracy+14',}}
    
HerculeanLegs={}
    HerculeanLegs.DT={name="Herculean Trousers", augments={'Accuracy+22','Damage taken-2%','VIT+6',}}
    HerculeanLegs.WSD={name="Herculean Trousers", augments={'Attack+28','Weapon skill damage +3%','STR+10','Accuracy+9',}}
    HerculeanLegs.Crit={name="Herculean Trousers", augments={'Attack+22','Crit. hit damage +4%','Accuracy+9',}}
    HerculeanLegs.TP={name="Herculean Trousers", augments={'Dex+6','Accuracy+30','"Triple Atk."+3'}}

HerculeanFeet={}
    HerculeanFeet.TA={name="Herculean Boots", augments={'Accuracy+22','"Triple Atk."+2','Attack+11',}}
    HerculeanFeet.Idle={name="Herculean Boots", augments={'Enmity+2','Accuracy+2 Attack+2','"Refresh"+2',}}
    HerculeanFeet.CritDmg={name="Herculean Boots", augments={'Accuracy+8','Crit. hit damage +2%','DEX+1','Attack+30',}}
    HerculeanFeet.WSD={name="Herculean Boots", augments={'Attack+22','Weapon skill damage +4%','Accuracy+15',}}

HerculeanVest={}
    HerculeanVest.CritDmg={name="Herculean Vest", augments={'Attack+18','Crit. hit damage +4%','STR+7','Accuracy+12',}}

-- Telchine Gear
TelchineFeet={}
    TelchineFeet.CP={name="Telchine Pigaches", augments={'"Cure" Potency +4%'}}
    TelchineFeet.FC={name="Telchine Pigaches", augments={'"Fast Cast" +3'}}

TelchineBraconi={}
    TelchineBraconi.Duration={name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +3',}}

-- JSE Capes
Rosmerta={}
    Rosmerta.CritDmg={name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+1','Crit.hit rate+10',}}
    Rosmerta.MB={}

Bookworm={}
    Bookworm.Duration={name="Bookworm's Cape", augments={'INT+1','MND+1','Helix eff. dur. +11','"Regen" potency+10',}}

Bane={}
    Bane.Dark={name="Bane Cape", augments={'Elem. magic skill +9','Dark magic skill +10','"Mag.Atk.Bns."+3','"Fast Cast"+3',}}

-- Merlinic Gear
MerlinicJubbah={}

MerlinicHood={}
    MerlinicHood.FC={name="Merlinic Hood", augments={'Mag. Acc.+27','"Fast Cast"+6','"Mag.Atk.Bns."+7',}}
    MerlinicHood.MB={name="Merlinic Hood", augments={'Mag. Acc.+14','Magic burst dmg.+10%','INT+6','"Mag.Atk.Bns."+8',}}

MerlinicCrackows={}
    MerlinicCrackows.FC={name="Merlinic Crackows", augments={'Mag. Acc.+24','"Fast Cast"+5','CHR+5',}}
    MerlinicCrackows.MB={name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+7%','CHR+7',}}
    MerlinicCrackows.MACC={name="Merlinic Crackows", augments={'Mag. Acc.+19','Mag. Acc.+25 "Mag.Atk.Bns."+25',}}

MerlinicDastanas={}
    MerlinicDastanas.FC={name="Merlinic Dastanas", augments={'Mag. Acc.+12','"Fast Cast"+6',}}
    MerlinicDastanas.Refresh={name="Merlinic Dastanas", augments={'Pet: Haste+2','Crit.hit rate+2','"Refresh"+1','Accuracy+18 Attack+18','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}

MerlinicShalwar={}
    MerlinicShalwar.Drain={name="Merlinic Shalwar", augments={'"Drain" and "Aspir" potency +9','MND+4','Mag. Acc.+1','"Mag.Atk.Bns."+10',}}
    MerlinicShalwar.MB={name="Merlinic Shalwar", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Magic burst dmg.+5%','INT+5','Mag. Acc.+15',}}

-- Psycloth Gear
PsyclothLapps={}
    PsyclothLapps.D={name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}

-- Vanya Gear
VanyaHood={}
    VanyaHood.C={name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}}

VanyaClogs={}
    VanyaClogs.D={name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}

-- Random
LengoPants={}
    LengoPants.MACC={name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}}

-- Weapons
Grioavolr={}
    Grioavolr.MB={name="Grioavolr", augments={'Enh. Mag. eff. dur. +9','Mag. Acc.+22','"Mag.Atk.Bns."+21','Magic Damage +3',}}

Samnuha={}
    Samnuha.TP={name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}}
end
init_include()