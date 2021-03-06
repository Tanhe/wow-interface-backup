
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Tanhe - Area 52"] = "Tanhe - Area 52",
		["Taneh - Area 52"] = "Taneh - Area 52",
		["Tanhe - Eonar"] = "Tanhe - Eonar",
		["Hanet - Eonar"] = "Hanet - Eonar",
		["Borsuczek - Aerie Peak"] = "Borsuczek - Aerie Peak",
		["Leapinleper - Area 52"] = "Leapinleper - Area 52",
		["Holyshelf - Eonar"] = "Holyshelf - Eonar",
		["Fayzed - Eonar"] = "Fayzed - Eonar",
		["Corsanguis - Area 52"] = "Default",
		["Ghark - Area 52"] = "Default",
	},
	["profiles"] = {
		["Tanhe - Area 52"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[266] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["damage"] = true,
					["package"] = "Demonology",
					["cycle"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[267] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["damage"] = true,
					["package"] = "Destruction",
					["cycle"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[265] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Affliction",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Demonology"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200124,
					["spec"] = 266,
					["desc"] = "# Demonology Warlock\n# https://github.com/simulationcraft/simc/\n# January 24, 2020\n\n# Changes:\n# - Spell Lock.\n# - Use buff.nether_portal.up instead of remaining CD time for Nether Portal active phase.\n# - Only recommend Demonbolt pre-combat if it is instant (or hardcast for bosses).\n# - Power Siphon allowed pre-combat to proc instant Demonbolt.\n# - Use \"time_to_die\" (expected encounter end) rather than \"target.time_to_die\" (expected current target's death) to avoid excessive burning of racial CDs.",
					["profile"] = "# Demonology Warlock\n# https://github.com/simulationcraft/simc/\n# January 24, 2020\n\n# Changes:\n# - Spell Lock.\n# - Use buff.nether_portal.up instead of remaining CD time for Nether Portal active phase.\n# - Only recommend Demonbolt pre-combat if it is instant (or hardcast for bosses).\n# - Power Siphon allowed pre-combat to proc instant Demonbolt.\n# - Use \"time_to_die\" (expected encounter end) rather than \"target.time_to_die\" (expected current target's death) to avoid excessive burning of racial CDs.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/summon_pet\n# actions.precombat+=/inner_demons,if=talent.inner_demons.enabled\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/power_siphon,if=buff.wild_imps.stack>1&buff.demonic_core.stack<=2\nactions.precombat+=/potion\nactions.precombat+=/demonbolt,if=boss||action.demonbolt.cast=0\nactions.precombat+=/shadow_bolt\n\n# Executed every time the actor is available.\nactions=spell_lock\nactions+=/potion,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)&(!talent.nether_portal.enabled||buff.nether_portal.up)||time_to_die<30\nactions+=/use_item,name=azsharas_font_of_power,if=cooldown.summon_demonic_tyrant.remains<=20&!talent.nether_portal.enabled\nactions+=/use_items,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15\nactions+=/berserking,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15\nactions+=/blood_fury,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15\nactions+=/fireblood,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15\nactions+=/blood_of_the_enemy,if=pet.demonic_tyrant.active&pet.demonic_tyrant.remains<=15-gcd*3&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)\nactions+=/worldvein_resonance,if=buff.lifeblood.stack<3&(pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15)\nactions+=/ripple_in_space,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major||!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)||time_to_die<=15\nactions+=/use_item,name=pocketsized_computation_device,if=cooldown.summon_demonic_tyrant.remains>=20&cooldown.summon_demonic_tyrant.remains<=cooldown.summon_demonic_tyrant.duration-15||time_to_die<=30\nactions+=/use_item,name=rotcrusted_voodoo_doll,if=(cooldown.summon_demonic_tyrant.remains>=25||time_to_die<=30)\nactions+=/use_item,name=shiver_venom_relic,if=(cooldown.summon_demonic_tyrant.remains>=25||time_to_die<=30)\nactions+=/use_item,name=aquipotent_nautilus,if=(cooldown.summon_demonic_tyrant.remains>=25||time_to_die<=30)\nactions+=/use_item,name=tidestorm_codex,if=(cooldown.summon_demonic_tyrant.remains>=25||time_to_die<=30)\nactions+=/use_item,name=vial_of_storms,if=(cooldown.summon_demonic_tyrant.remains>=25||time_to_die<=30)\nactions+=/call_action_list,name=opener,if=!talent.nether_portal.enabled&time<30&!cooldown.summon_demonic_tyrant.remains\nactions+=/use_item,name=azsharas_font_of_power,if=(time>30||!talent.nether_portal.enabled)&talent.grimoire_felguard.enabled&(time_to_die>120||time_to_die<cooldown.summon_demonic_tyrant.remains+15)||time_to_die<=35\nactions+=/hand_of_guldan,if=azerite.explosive_potential.rank&time<5&soul_shard>2&buff.explosive_potential.down&buff.wild_imps.stack<3&!prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan\nactions+=/demonbolt,if=soul_shard<=3&buff.demonic_core.up&buff.demonic_core.stack=4\nactions+=/implosion,if=azerite.explosive_potential.rank&buff.wild_imps.stack>2&buff.explosive_potential.remains<action.shadow_bolt.execute_time&(!talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains>12)\nactions+=/doom,if=!ticking&time_to_die>30&spell_targets.implosion<2&!buff.nether_portal.remains\nactions+=/bilescourge_bombers,if=azerite.explosive_potential.rank>0&time<10&spell_targets.implosion<2&buff.dreadstalkers.remains&talent.nether_portal.enabled\nactions+=/demonic_strength,if=(buff.wild_imps.stack<6||buff.demonic_power.up)||spell_targets.implosion<2\nactions+=/call_action_list,name=nether_portal,if=talent.nether_portal.enabled&spell_targets.implosion<=2\nactions+=/call_action_list,name=implosion,if=spell_targets.implosion>1\nactions+=/guardian_of_azeroth,if=cooldown.summon_demonic_tyrant.remains<=15||time_to_die<=30\nactions+=/grimoire_felguard,if=(time_to_die>120||time_to_die<cooldown.summon_demonic_tyrant.remains+15||cooldown.summon_demonic_tyrant.remains<13)\nactions+=/summon_vilefiend,if=cooldown.summon_demonic_tyrant.remains>40||cooldown.summon_demonic_tyrant.remains<12\nactions+=/call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)||(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)||cooldown.summon_demonic_tyrant.remains>14\nactions+=/the_unbound_force,if=buff.reckless_force.react\nactions+=/bilescourge_bombers\nactions+=/hand_of_guldan,if=(azerite.baleful_invocation.enabled||talent.demonic_consumption.enabled)&prev_gcd.1.hand_of_guldan&cooldown.summon_demonic_tyrant.remains<2\n# 2000%spell_haste is shorthand for the cast time of Demonic Tyrant. The intent is to only begin casting if a certain number of imps will be out by the end of the cast.\nactions+=/summon_demonic_tyrant,if=soul_shard<3&(!talent.demonic_consumption.enabled||buff.wild_imps.stack+imps_spawned_during.summon_demonic_tyrant>=6&time_to_imps.all.remains<cast_time)||time_to_die<20\nactions+=/power_siphon,if=buff.wild_imps.stack>=2&buff.demonic_core.stack<=2&buff.demonic_power.down&spell_targets.implosion<2\nactions+=/doom,if=talent.doom.enabled&refreshable&time_to_die>(dot.doom.remains+30)\nactions+=/hand_of_guldan,if=soul_shard>=5||(soul_shard>=3&cooldown.call_dreadstalkers.remains>4&(cooldown.summon_demonic_tyrant.remains>20||(cooldown.summon_demonic_tyrant.remains<gcd*2&talent.demonic_consumption.enabled||cooldown.summon_demonic_tyrant.remains<gcd*4&!talent.demonic_consumption.enabled))&(!talent.summon_vilefiend.enabled||cooldown.summon_vilefiend.remains>3))\nactions+=/soul_strike,if=soul_shard<5&buff.demonic_core.stack<=2\nactions+=/demonbolt,if=soul_shard<=3&buff.demonic_core.up&((cooldown.summon_demonic_tyrant.remains<6||cooldown.summon_demonic_tyrant.remains>22&!azerite.shadows_bite.enabled)||buff.demonic_core.stack>=3||buff.demonic_core.remains<5||time_to_die<25||buff.shadows_bite.remains)\nactions+=/focused_azerite_beam,if=!pet.demonic_tyrant.active\nactions+=/purifying_blast\nactions+=/blood_of_the_enemy\nactions+=/concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&!pet.demonic_tyrant.active\nactions+=/reaping_flames,if=!pet.demonic_tyrant.active\nactions+=/call_action_list,name=build_a_shard\n\nactions.build_a_shard=memory_of_lucid_dreams,if=soul_shard<2\nactions.build_a_shard+=/soul_strike,if=!talent.demonic_consumption.enabled||time>15||prev_gcd.1.hand_of_guldan&!buff.bloodlust.remains\nactions.build_a_shard+=/shadow_bolt\n\nactions.implosion=implosion,if=(buff.wild_imps.stack>=6&(soul_shard<3||prev_gcd.1.call_dreadstalkers||buff.wild_imps.stack>=9||prev_gcd.1.bilescourge_bombers||(!prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan))&!prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan&buff.demonic_power.down)||(time_to_die<3&buff.wild_imps.stack>0)||(prev_gcd.2.call_dreadstalkers&buff.wild_imps.stack>2&!talent.demonic_calling.enabled)\nactions.implosion+=/grimoire_felguard,if=cooldown.summon_demonic_tyrant.remains<13||!equipped.132369\nactions.implosion+=/call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)||(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)||cooldown.summon_demonic_tyrant.remains>14\nactions.implosion+=/summon_demonic_tyrant\nactions.implosion+=/hand_of_guldan,if=soul_shard>=5\nactions.implosion+=/hand_of_guldan,if=soul_shard>=3&(((prev_gcd.2.hand_of_guldan||buff.wild_imps.stack>=3)&buff.wild_imps.stack<9)||cooldown.summon_demonic_tyrant.remains<=gcd*2||buff.demonic_power.remains>gcd*2)\nactions.implosion+=/demonbolt,if=prev_gcd.1.hand_of_guldan&soul_shard>=1&(buff.wild_imps.stack<=3||prev_gcd.3.hand_of_guldan)&soul_shard<4&buff.demonic_core.up\nactions.implosion+=/summon_vilefiend,if=(cooldown.summon_demonic_tyrant.remains>40&spell_targets.implosion<=2)||cooldown.summon_demonic_tyrant.remains<12\nactions.implosion+=/bilescourge_bombers,if=cooldown.summon_demonic_tyrant.remains>9\nactions.implosion+=/focused_azerite_beam\nactions.implosion+=/purifying_blast\nactions.implosion+=/blood_of_the_enemy\nactions.implosion+=/concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&spell_targets.implosion<5\nactions.implosion+=/soul_strike,if=soul_shard<5&buff.demonic_core.stack<=2\nactions.implosion+=/demonbolt,if=soul_shard<=3&buff.demonic_core.up&(buff.demonic_core.stack>=3||buff.demonic_core.remains<=gcd*5.7)\nactions.implosion+=/doom,cycle_targets=1,max_cycle_targets=7,if=refreshable\nactions.implosion+=/call_action_list,name=build_a_shard\n\nactions.nether_portal=call_action_list,name=nether_portal_building,if=cooldown.nether_portal.remains<20\nactions.nether_portal+=/call_action_list,name=nether_portal_active,if=buff.nether_portal.up\n\nactions.nether_portal_active=bilescourge_bombers\nactions.nether_portal_active+=/grimoire_felguard,if=cooldown.summon_demonic_tyrant.remains<13||!equipped.132369\nactions.nether_portal_active+=/summon_vilefiend,if=cooldown.summon_demonic_tyrant.remains>40||cooldown.summon_demonic_tyrant.remains<12\nactions.nether_portal_active+=/call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)||(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)||cooldown.summon_demonic_tyrant.remains>14\nactions.nether_portal_active+=/call_action_list,name=build_a_shard,if=soul_shard=1&(cooldown.call_dreadstalkers.remains<action.shadow_bolt.cast_time||(talent.bilescourge_bombers.enabled&cooldown.bilescourge_bombers.remains<action.shadow_bolt.cast_time))\nactions.nether_portal_active+=/hand_of_guldan,if=((cooldown.call_dreadstalkers.remains>action.demonbolt.cast_time)&(cooldown.call_dreadstalkers.remains>action.shadow_bolt.cast_time))&cooldown.nether_portal.remains>(165+action.hand_of_guldan.cast_time)\nactions.nether_portal_active+=/summon_demonic_tyrant,if=buff.nether_portal.remains<5&soul_shard=0\nactions.nether_portal_active+=/summon_demonic_tyrant,if=buff.nether_portal.remains<action.summon_demonic_tyrant.cast_time+0.5\nactions.nether_portal_active+=/demonbolt,if=buff.demonic_core.up&soul_shard<=3\nactions.nether_portal_active+=/call_action_list,name=build_a_shard\n\nactions.nether_portal_building=use_item,name=azsharas_font_of_power,if=cooldown.nether_portal.remains<=5*spell_haste\nactions.nether_portal_building+=/guardian_of_azeroth,if=!cooldown.nether_portal.remains&soul_shard>=5\nactions.nether_portal_building+=/nether_portal,if=soul_shard>=5\nactions.nether_portal_building+=/call_dreadstalkers,if=time>=30\nactions.nether_portal_building+=/hand_of_guldan,if=time>=30&cooldown.call_dreadstalkers.remains>18&soul_shard>=3\nactions.nether_portal_building+=/power_siphon,if=time>=30&buff.wild_imps.stack>=2&buff.demonic_core.stack<=2&buff.demonic_power.down&soul_shard>=3\nactions.nether_portal_building+=/hand_of_guldan,if=time>=30&soul_shard>=5\nactions.nether_portal_building+=/call_action_list,name=build_a_shard\n\nactions.opener=hand_of_guldan,line_cd=30,if=azerite.explosive_potential.enabled\nactions.opener+=/implosion,if=azerite.explosive_potential.enabled&buff.wild_imps.stack>2&buff.explosive_potential.down\nactions.opener+=/doom,line_cd=30\nactions.opener+=/guardian_of_azeroth\nactions.opener+=/hand_of_guldan,if=prev_gcd.1.hand_of_guldan&soul_shard>0&prev_gcd.2.soul_strike\nactions.opener+=/demonic_strength,if=prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan&(buff.wild_imps.stack>1&action.hand_of_guldan.in_flight)\nactions.opener+=/bilescourge_bombers\nactions.opener+=/soul_strike,line_cd=30,if=!buff.bloodlust.remains||time>5&prev_gcd.1.hand_of_guldan\nactions.opener+=/summon_vilefiend,if=soul_shard=5\nactions.opener+=/grimoire_felguard,if=soul_shard=5\nactions.opener+=/call_dreadstalkers,if=soul_shard=5\nactions.opener+=/hand_of_guldan,if=soul_shard=5\nactions.opener+=/hand_of_guldan,if=soul_shard>=3&prev_gcd.2.hand_of_guldan&time>5&(prev_gcd.1.soul_strike||!talent.soul_strike.enabled&prev_gcd.1.shadow_bolt)\n# 2000%spell_haste is shorthand for the cast time of Demonic Tyrant. The intent is to only begin casting if a certain number of imps will be out by the end of the cast.\nactions.opener+=/summon_demonic_tyrant,if=prev_gcd.1.demonic_strength||prev_gcd.1.hand_of_guldan&prev_gcd.2.hand_of_guldan||!talent.demonic_strength.enabled&buff.wild_imps.stack+imps_spawned_during.summon_demonic_tyrant>=6\nactions.opener+=/demonbolt,if=soul_shard<=3&buff.demonic_core.remains\nactions.opener+=/call_action_list,name=build_a_shard",
					["version"] = 20200124,
					["warnings"] = "Imported 8 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["action"] = "hand_of_guldan",
								["criteria"] = "azerite.explosive_potential.enabled",
								["line_cd"] = "30",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "azerite.explosive_potential.enabled & buff.wild_imps.stack > 2 & buff.explosive_potential.down",
								["action"] = "implosion",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "doom",
								["line_cd"] = "30",
							}, -- [3]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.hand_of_guldan & soul_shard > 0 & prev_gcd.2.soul_strike",
								["action"] = "hand_of_guldan",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.hand_of_guldan & ! prev_gcd.2.hand_of_guldan & ( buff.wild_imps.stack > 1 & action.hand_of_guldan.in_flight )",
								["action"] = "demonic_strength",
							}, -- [6]
							{
								["action"] = "bilescourge_bombers",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "soul_strike",
								["criteria"] = "! buff.bloodlust.remains || time > 5 & prev_gcd.1.hand_of_guldan",
								["line_cd"] = "30",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 5",
								["action"] = "summon_vilefiend",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 5",
								["action"] = "grimoire_felguard",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 5",
								["action"] = "call_dreadstalkers",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 5",
								["action"] = "hand_of_guldan",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 3 & prev_gcd.2.hand_of_guldan & time > 5 & ( prev_gcd.1.soul_strike || ! talent.soul_strike.enabled & prev_gcd.1.shadow_bolt )",
								["action"] = "hand_of_guldan",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.demonic_strength || prev_gcd.1.hand_of_guldan & prev_gcd.2.hand_of_guldan || ! talent.demonic_strength.enabled & buff.wild_imps.stack + imps_spawned_during.summon_demonic_tyrant >= 6",
								["action"] = "summon_demonic_tyrant",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard <= 3 & buff.demonic_core.remains",
								["action"] = "demonbolt",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [16]
						},
						["nether_portal_active"] = {
							{
								["action"] = "bilescourge_bombers",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains < 13 || ! equipped.wilfreds_sigil_of_superior_summoning",
								["action"] = "grimoire_felguard",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains > 40 || cooldown.summon_demonic_tyrant.remains < 12",
								["action"] = "summon_vilefiend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains < 9 & buff.demonic_calling.remains ) || ( cooldown.summon_demonic_tyrant.remains < 11 & ! buff.demonic_calling.remains ) || cooldown.summon_demonic_tyrant.remains > 14",
								["action"] = "call_dreadstalkers",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 1 & ( cooldown.call_dreadstalkers.remains < action.shadow_bolt.cast_time || ( talent.bilescourge_bombers.enabled & cooldown.bilescourge_bombers.remains < action.shadow_bolt.cast_time ) )",
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( cooldown.call_dreadstalkers.remains > action.demonbolt.cast_time ) & ( cooldown.call_dreadstalkers.remains > action.shadow_bolt.cast_time ) ) & cooldown.nether_portal.remains > ( 165 + action.hand_of_guldan.cast_time )",
								["action"] = "hand_of_guldan",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_portal.remains < 5 & soul_shard = 0",
								["action"] = "summon_demonic_tyrant",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_portal.remains < action.summon_demonic_tyrant.cast_time + 0.5",
								["action"] = "summon_demonic_tyrant",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.demonic_core.up & soul_shard <= 3",
								["action"] = "demonbolt",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [10]
						},
						["default"] = {
							{
								["action"] = "spell_lock",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) & ( ! talent.nether_portal.enabled || buff.nether_portal.up ) || time_to_die < 30",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.summon_demonic_tyrant.remains <= 20 & ! talent.nether_portal.enabled",
								["name"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15",
								["action"] = "blood_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & pet.demonic_tyrant.remains <= 15 - gcd * 3 & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 )",
								["action"] = "blood_of_the_enemy",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.lifeblood.stack < 3 & ( pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15 )",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "pet.demonic_tyrant.active & ( ! essence.vision_of_perfection.major || ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains >= cooldown.summon_demonic_tyrant.duration - 5 ) || time_to_die <= 15",
								["action"] = "ripple_in_space",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "cooldown.summon_demonic_tyrant.remains >= 20 & cooldown.summon_demonic_tyrant.remains <= cooldown.summon_demonic_tyrant.duration - 15 || time_to_die <= 30",
								["name"] = "pocketsized_computation_device",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rotcrusted_voodoo_doll",
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains >= 25 || time_to_die <= 30 )",
								["name"] = "rotcrusted_voodoo_doll",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "shiver_venom_relic",
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains >= 25 || time_to_die <= 30 )",
								["name"] = "shiver_venom_relic",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "aquipotent_nautilus",
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains >= 25 || time_to_die <= 30 )",
								["name"] = "aquipotent_nautilus",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains >= 25 || time_to_die <= 30 )",
								["name"] = "tidestorm_codex",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "vial_of_storms",
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains >= 25 || time_to_die <= 30 )",
								["name"] = "vial_of_storms",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.nether_portal.enabled & time < 30 & ! cooldown.summon_demonic_tyrant.remains",
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "( time > 30 || ! talent.nether_portal.enabled ) & talent.grimoire_felguard.enabled & ( time_to_die > 120 || time_to_die < cooldown.summon_demonic_tyrant.remains + 15 ) || time_to_die <= 35",
								["name"] = "azsharas_font_of_power",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "azerite.explosive_potential.rank & time < 5 & soul_shard > 2 & buff.explosive_potential.down & buff.wild_imps.stack < 3 & ! prev_gcd.1.hand_of_guldan & ! prev_gcd.2.hand_of_guldan",
								["action"] = "hand_of_guldan",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard <= 3 & buff.demonic_core.up & buff.demonic_core.stack = 4",
								["action"] = "demonbolt",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "azerite.explosive_potential.rank & buff.wild_imps.stack > 2 & buff.explosive_potential.remains < action.shadow_bolt.execute_time & ( ! talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains > 12 )",
								["action"] = "implosion",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & time_to_die > 30 & spell_targets.implosion < 2 & ! buff.nether_portal.remains",
								["action"] = "doom",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "azerite.explosive_potential.rank > 0 & time < 10 & spell_targets.implosion < 2 & buff.dreadstalkers.remains & talent.nether_portal.enabled",
								["action"] = "bilescourge_bombers",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( buff.wild_imps.stack < 6 || buff.demonic_power.up ) || spell_targets.implosion < 2",
								["action"] = "demonic_strength",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.nether_portal.enabled & spell_targets.implosion <= 2",
								["action"] = "call_action_list",
								["list_name"] = "nether_portal",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.implosion > 1",
								["action"] = "call_action_list",
								["list_name"] = "implosion",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains <= 15 || time_to_die <= 30",
								["action"] = "guardian_of_azeroth",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "( time_to_die > 120 || time_to_die < cooldown.summon_demonic_tyrant.remains + 15 || cooldown.summon_demonic_tyrant.remains < 13 )",
								["action"] = "grimoire_felguard",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains > 40 || cooldown.summon_demonic_tyrant.remains < 12",
								["action"] = "summon_vilefiend",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains < 9 & buff.demonic_calling.remains ) || ( cooldown.summon_demonic_tyrant.remains < 11 & ! buff.demonic_calling.remains ) || cooldown.summon_demonic_tyrant.remains > 14",
								["action"] = "call_dreadstalkers",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.react",
								["action"] = "the_unbound_force",
							}, -- [31]
							{
								["action"] = "bilescourge_bombers",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.baleful_invocation.enabled || talent.demonic_consumption.enabled ) & prev_gcd.1.hand_of_guldan & cooldown.summon_demonic_tyrant.remains < 2",
								["action"] = "hand_of_guldan",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard < 3 & ( ! talent.demonic_consumption.enabled || buff.wild_imps.stack + imps_spawned_during.summon_demonic_tyrant >= 6 & time_to_imps.all.remains < cast_time ) || time_to_die < 20",
								["action"] = "summon_demonic_tyrant",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "buff.wild_imps.stack >= 2 & buff.demonic_core.stack <= 2 & buff.demonic_power.down & spell_targets.implosion < 2",
								["action"] = "power_siphon",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "talent.doom.enabled & refreshable & time_to_die > ( dot.doom.remains + 30 )",
								["action"] = "doom",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 5 || ( soul_shard >= 3 & cooldown.call_dreadstalkers.remains > 4 & ( cooldown.summon_demonic_tyrant.remains > 20 || ( cooldown.summon_demonic_tyrant.remains < gcd * 2 & talent.demonic_consumption.enabled || cooldown.summon_demonic_tyrant.remains < gcd * 4 & ! talent.demonic_consumption.enabled ) ) & ( ! talent.summon_vilefiend.enabled || cooldown.summon_vilefiend.remains > 3 ) )",
								["action"] = "hand_of_guldan",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard < 5 & buff.demonic_core.stack <= 2",
								["action"] = "soul_strike",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard <= 3 & buff.demonic_core.up & ( ( cooldown.summon_demonic_tyrant.remains < 6 || cooldown.summon_demonic_tyrant.remains > 22 & ! azerite.shadows_bite.enabled ) || buff.demonic_core.stack >= 3 || buff.demonic_core.remains < 5 || time_to_die < 25 || buff.shadows_bite.remains )",
								["action"] = "demonbolt",
							}, -- [39]
							{
								["enabled"] = true,
								["criteria"] = "! pet.demonic_tyrant.active",
								["action"] = "focused_azerite_beam",
							}, -- [40]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [41]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [42]
							{
								["enabled"] = true,
								["criteria"] = "! dot.concentrated_flame_burn.remains & ! action.concentrated_flame.in_flight & ! pet.demonic_tyrant.active",
								["action"] = "concentrated_flame",
							}, -- [43]
							{
								["enabled"] = true,
								["criteria"] = "! pet.demonic_tyrant.active",
								["action"] = "reaping_flames",
							}, -- [44]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [45]
						},
						["precombat"] = {
							{
								["action"] = "summon_felguard",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.wild_imps.stack > 1 & buff.demonic_core.stack <= 2",
								["action"] = "power_siphon",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "boss || action.demonbolt.cast = 0",
								["action"] = "demonbolt",
							}, -- [4]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [5]
						},
						["implosion"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.wild_imps.stack >= 6 & ( soul_shard < 3 || prev_gcd.1.call_dreadstalkers || buff.wild_imps.stack >= 9 || prev_gcd.1.bilescourge_bombers || ( ! prev_gcd.1.hand_of_guldan & ! prev_gcd.2.hand_of_guldan ) ) & ! prev_gcd.1.hand_of_guldan & ! prev_gcd.2.hand_of_guldan & buff.demonic_power.down ) || ( time_to_die < 3 & buff.wild_imps.stack > 0 ) || ( prev_gcd.2.call_dreadstalkers & buff.wild_imps.stack > 2 & ! talent.demonic_calling.enabled )",
								["action"] = "implosion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains < 13 || ! equipped.wilfreds_sigil_of_superior_summoning",
								["action"] = "grimoire_felguard",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains < 9 & buff.demonic_calling.remains ) || ( cooldown.summon_demonic_tyrant.remains < 11 & ! buff.demonic_calling.remains ) || cooldown.summon_demonic_tyrant.remains > 14",
								["action"] = "call_dreadstalkers",
							}, -- [3]
							{
								["action"] = "summon_demonic_tyrant",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 5",
								["action"] = "hand_of_guldan",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 3 & ( ( ( prev_gcd.2.hand_of_guldan || buff.wild_imps.stack >= 3 ) & buff.wild_imps.stack < 9 ) || cooldown.summon_demonic_tyrant.remains <= gcd * 2 || buff.demonic_power.remains > gcd * 2 )",
								["action"] = "hand_of_guldan",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.hand_of_guldan & soul_shard >= 1 & ( buff.wild_imps.stack <= 3 || prev_gcd.3.hand_of_guldan ) & soul_shard < 4 & buff.demonic_core.up",
								["action"] = "demonbolt",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_demonic_tyrant.remains > 40 & spell_targets.implosion <= 2 ) || cooldown.summon_demonic_tyrant.remains < 12",
								["action"] = "summon_vilefiend",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_demonic_tyrant.remains > 9",
								["action"] = "bilescourge_bombers",
							}, -- [9]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! dot.concentrated_flame_burn.remains & ! action.concentrated_flame.in_flight & spell_targets.implosion < 5",
								["action"] = "concentrated_flame",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard < 5 & buff.demonic_core.stack <= 2",
								["action"] = "soul_strike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard <= 3 & buff.demonic_core.up & ( buff.demonic_core.stack >= 3 || buff.demonic_core.remains <= gcd * 5.7 )",
								["action"] = "demonbolt",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "doom",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "7",
								["criteria"] = "refreshable",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [17]
						},
						["nether_portal_building"] = {
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.nether_portal.remains <= 5 * spell_haste",
								["name"] = "azsharas_font_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.nether_portal.remains & soul_shard >= 5",
								["action"] = "guardian_of_azeroth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 5",
								["action"] = "nether_portal",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time >= 30",
								["action"] = "call_dreadstalkers",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "time >= 30 & cooldown.call_dreadstalkers.remains > 18 & soul_shard >= 3",
								["action"] = "hand_of_guldan",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "time >= 30 & buff.wild_imps.stack >= 2 & buff.demonic_core.stack <= 2 & buff.demonic_power.down & soul_shard >= 3",
								["action"] = "power_siphon",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "time >= 30 & soul_shard >= 5",
								["action"] = "hand_of_guldan",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build_a_shard",
							}, -- [8]
						},
						["build_a_shard"] = {
							{
								["enabled"] = true,
								["criteria"] = "soul_shard < 2",
								["action"] = "memory_of_lucid_dreams",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.demonic_consumption.enabled || time > 15 || prev_gcd.1.hand_of_guldan & ! buff.bloodlust.remains",
								["action"] = "soul_strike",
							}, -- [2]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [3]
						},
						["nether_portal"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.nether_portal.remains < 20",
								["action"] = "call_action_list",
								["list_name"] = "nether_portal_building",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_portal.up",
								["action"] = "call_action_list",
								["list_name"] = "nether_portal_active",
							}, -- [2]
						},
					},
					["author"] = "SimC",
				},
				["Affliction"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200419,
					["spec"] = 265,
					["desc"] = "# Affliction Warlock\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added Spell Lock.\n# - Added Devour Magic.\n# - Removed target_if...\n# - Require DoTs up on target for Deathbolt (since refresh logic is different if CDs are disabled).\n# - Replace several target.time_to_die cases with time_to_die (end of encounter).",
					["profile"] = "# Affliction Warlock\n# https://github.com/simulationcraft/simc/\n# April 19, 2020\n\n# Changes:\n# - Added Spell Lock.\n# - Added Devour Magic.\n# - Removed target_if...\n# - Require DoTs up on target for Deathbolt (since refresh logic is different if CDs are disabled).\n# - Replace several target.time_to_die cases with time_to_die (end of encounter).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/summon_pet\nactions.precombat+=/grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/seed_of_corruption,if=spell_targets.seed_of_corruption_aoe>=3&!equipped.169314\nactions.precombat+=/haunt\nactions.precombat+=/shadow_bolt,if=!talent.haunt.enabled&spell_targets.seed_of_corruption_aoe<3&!equipped.169314\n\n# Executed every time the actor is available.\nactions=spell_lock\nactions+=/devour_magic\nactions+=/variable,name=use_seed,value=talent.sow_the_seeds.enabled&spell_targets.seed_of_corruption_aoe>=3+raid_event.invulnerable.up||talent.siphon_life.enabled&spell_targets.seed_of_corruption>=5+raid_event.invulnerable.up||spell_targets.seed_of_corruption>=8+raid_event.invulnerable.up\nactions+=/variable,name=padding,op=set,value=action.shadow_bolt.execute_time*azerite.cascading_calamity.enabled\nactions+=/variable,name=padding,op=reset,value=gcd,if=azerite.cascading_calamity.enabled&(talent.drain_soul.enabled||talent.deathbolt.enabled&cooldown.deathbolt.remains<=gcd)\nactions+=/variable,name=maintain_se,value=spell_targets.seed_of_corruption_aoe<=1+talent.writhe_in_agony.enabled+talent.absolute_corruption.enabled*2+(talent.writhe_in_agony.enabled&talent.sow_the_seeds.enabled&spell_targets.seed_of_corruption_aoe>2)+(talent.siphon_life.enabled&!talent.creeping_death.enabled&!talent.drain_soul.enabled)+raid_event.invulnerable.up\nactions+=/variable,name=dots_up,value=(!talent.siphon_life.enabled||dot.siphon_life.up)&dot.agony.stack>=10&!dot.agony.refreshable&dot.corruption.up\nactions+=/call_action_list,name=cooldowns\nactions+=/drain_soul,interrupt_global=1,chain=1,cycle_targets=1,if=time_to_die<=gcd&soul_shard<5\nactions+=/haunt,if=spell_targets.seed_of_corruption_aoe<=2+raid_event.invulnerable.up\nactions+=/summon_darkglare,if=dot.agony.ticking&dot.corruption.ticking&(buff.active_uas.stack=5||soul_shard=0||dot.phantom_singularity.remains&dot.phantom_singularity.remains<=gcd)&(!talent.phantom_singularity.enabled||dot.phantom_singularity.remains)&(!talent.deathbolt.enabled||cooldown.deathbolt.remains<=gcd||!cooldown.deathbolt.remains||soul_shard=0&spell_targets.seed_of_corruption_aoe>1+raid_event.invulnerable.up)\nactions+=/deathbolt,if=cooldown.summon_darkglare.remains&variable.dots_up&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&(!essence.vision_of_perfection.minor&!azerite.dreadful_calling.rank||cooldown.summon_darkglare.remains>30)\nactions+=/the_unbound_force,if=buff.reckless_force.remains\nactions+=/agony,cycle_targets=1,if=remains<=gcd+action.shadow_bolt.execute_time&time_to_die>8\nactions+=/memory_of_lucid_dreams,if=time<30\n# Temporary fix to make sure azshara's font doesn't break darkglare usage.\nactions+=/agony,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314\nactions+=/corruption,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314&!talent.absolute_corruption.enabled&(talent.siphon_life.enabled||spell_targets.seed_of_corruption_aoe>1&spell_targets.seed_of_corruption_aoe<=3)\nactions+=/siphon_life,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314\nactions+=/unstable_affliction,cycle_targets=1,if=!contagion&time_to_die<=8\nactions+=/drain_soul,cycle_targets=1,cancel_if=ticks_remain<5,if=talent.shadow_embrace.enabled&variable.maintain_se&debuff.shadow_embrace.remains&debuff.shadow_embrace.remains<=gcd*2\nactions+=/shadow_bolt,cycle_targets=1,if=talent.shadow_embrace.enabled&variable.maintain_se&debuff.shadow_embrace.remains&debuff.shadow_embrace.remains<=execute_time*2+travel_time&!action.shadow_bolt.in_flight\nactions+=/phantom_singularity,cycle_targets=1,if=time>35&target.time_to_die>16*spell_haste&(!essence.vision_of_perfection.minor&!azerite.dreadful_calling.rank||cooldown.summon_darkglare.remains>45+soul_shard*azerite.dreadful_calling.rank||cooldown.summon_darkglare.remains<15*spell_haste+soul_shard*azerite.dreadful_calling.rank)\nactions+=/unstable_affliction,cycle_targets=1,if=!variable.use_seed&soul_shard=5\nactions+=/seed_of_corruption,if=variable.use_seed&soul_shard=5\nactions+=/call_action_list,name=dots\nactions+=/vile_taint,cycle_targets=1,if=time>15&time_to_die>=10&(cooldown.summon_darkglare.remains>30||cooldown.summon_darkglare.remains<10&dot.agony.remains>=10&dot.corruption.remains>=10&(dot.siphon_life.remains>=10||!talent.siphon_life.enabled))\nactions+=/use_item,name=azsharas_font_of_power,if=time<=3\nactions+=/phantom_singularity,if=time<=35\nactions+=/vile_taint,if=time<15\nactions+=/guardian_of_azeroth,if=(cooldown.summon_darkglare.remains<15+soul_shard*azerite.dreadful_calling.enabled||(azerite.dreadful_calling.rank||essence.vision_of_perfection.rank)&time>30&time_to_die>=210)&(dot.phantom_singularity.remains||dot.vile_taint.remains||!talent.phantom_singularity.enabled&!talent.vile_taint.enabled)||time_to_die<30+gcd\nactions+=/dark_soul,if=cooldown.summon_darkglare.remains<15+soul_shard*azerite.dreadful_calling.enabled&(dot.phantom_singularity.remains||dot.vile_taint.remains)\nactions+=/berserking\nactions+=/call_action_list,name=spenders\nactions+=/call_action_list,name=fillers\n\nactions.cooldowns=worldvein_resonance\nactions.cooldowns+=/use_item,name=azsharas_font_of_power,if=(!talent.phantom_singularity.enabled||cooldown.phantom_singularity.remains<4*spell_haste||!cooldown.phantom_singularity.remains)&cooldown.summon_darkglare.remains<19*spell_haste+soul_shard*azerite.dreadful_calling.rank&dot.agony.remains&dot.corruption.remains&(dot.siphon_life.remains||!talent.siphon_life.enabled)\nactions.cooldowns+=/potion,if=(talent.dark_soul_misery.enabled&cooldown.summon_darkglare.up&cooldown.dark_soul.up)||cooldown.summon_darkglare.up||time_to_die<30\nactions.cooldowns+=/use_items,if=cooldown.summon_darkglare.remains>70||time_to_die<20||((buff.active_uas.stack=5||soul_shard=0)&(!talent.phantom_singularity.enabled||cooldown.phantom_singularity.remains)&(!talent.deathbolt.enabled||cooldown.deathbolt.remains<=gcd||!cooldown.deathbolt.remains)&!cooldown.summon_darkglare.remains)\nactions.cooldowns+=/fireblood,if=!cooldown.summon_darkglare.up\nactions.cooldowns+=/blood_fury,if=!cooldown.summon_darkglare.up\nactions.cooldowns+=/memory_of_lucid_dreams,if=time>30\nactions.cooldowns+=/dark_soul,if=time_to_die<20+gcd||talent.sow_the_seeds.enabled&cooldown.summon_darkglare.remains>=cooldown.summon_darkglare.duration-10\nactions.cooldowns+=/blood_of_the_enemy,if=pet.darkglare.remains||(!cooldown.deathbolt.remains||!talent.deathbolt.enabled)&cooldown.summon_darkglare.remains>=80&essence.blood_of_the_enemy.rank>1\n# Use damaging on-use trinkets more or less on cooldown, so long as the ICD they incur won't effect any other trinkets usage during cooldowns.\nactions.cooldowns+=/use_item,name=pocketsized_computation_device,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/use_item,name=rotcrusted_voodoo_doll,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/use_item,name=shiver_venom_relic,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/use_item,name=aquipotent_nautilus,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/use_item,name=tidestorm_codex,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/use_item,name=vial_of_storms,if=(cooldown.summon_darkglare.remains>=25||time_to_die<=30)&(cooldown.deathbolt.remains||!talent.deathbolt.enabled)\nactions.cooldowns+=/ripple_in_space\n\nactions.db_refresh=siphon_life,line_cd=15,if=(dot.siphon_life.remains%dot.siphon_life.duration)<=(dot.agony.remains%dot.agony.duration)&(dot.siphon_life.remains%dot.siphon_life.duration)<=(dot.corruption.remains%dot.corruption.duration)&dot.siphon_life.remains<dot.siphon_life.duration*1.3\nactions.db_refresh+=/agony,line_cd=15,if=(dot.agony.remains%dot.agony.duration)<=(dot.corruption.remains%dot.corruption.duration)&(dot.agony.remains%dot.agony.duration)<=(dot.siphon_life.remains%dot.siphon_life.duration)&dot.agony.remains<dot.agony.duration*1.3\nactions.db_refresh+=/corruption,line_cd=15,if=(dot.corruption.remains%dot.corruption.duration)<=(dot.agony.remains%dot.agony.duration)&(dot.corruption.remains%dot.corruption.duration)<=(dot.siphon_life.remains%dot.siphon_life.duration)&dot.corruption.remains<dot.corruption.duration*1.3\n\nactions.dots=seed_of_corruption,if=dot.corruption.remains<=action.seed_of_corruption.cast_time+time_to_shard+4.2*(1-talent.creeping_death.enabled*0.15)&spell_targets.seed_of_corruption_aoe>=3+raid_event.invulnerable.up+talent.writhe_in_agony.enabled&!dot.seed_of_corruption.remains&!action.seed_of_corruption.in_flight\nactions.dots+=/agony,cycle_targets=1,if=talent.creeping_death.enabled&active_dot.agony<6&time_to_die>10&(remains<=gcd||cooldown.summon_darkglare.remains>10&(remains<5||!azerite.pandemic_invocation.rank&refreshable))\nactions.dots+=/agony,cycle_targets=1,if=!talent.creeping_death.enabled&active_dot.agony<8&time_to_die>10&(remains<=gcd||cooldown.summon_darkglare.remains>10&(remains<5||!azerite.pandemic_invocation.rank&refreshable))\nactions.dots+=/siphon_life,cycle_targets=1,if=(active_dot.siphon_life<8-talent.creeping_death.enabled-spell_targets.sow_the_seeds_aoe)&time_to_die>10&refreshable&(!remains&spell_targets.seed_of_corruption_aoe=1||cooldown.summon_darkglare.remains>soul_shard*action.unstable_affliction.execute_time)\nactions.dots+=/corruption,cycle_targets=1,if=spell_targets.seed_of_corruption_aoe<3+raid_event.invulnerable.up+talent.writhe_in_agony.enabled&(remains<=gcd||cooldown.summon_darkglare.remains>10&refreshable)&target.time_to_die>10\n\nactions.fillers=unstable_affliction,line_cd=15,if=cooldown.deathbolt.remains<=gcd*2&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&cooldown.summon_darkglare.remains>20\nactions.fillers+=/call_action_list,name=db_refresh,if=talent.deathbolt.enabled&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&(dot.agony.remains<dot.agony.duration*0.75||dot.corruption.remains<dot.corruption.duration*0.75||dot.siphon_life.remains<dot.siphon_life.duration*0.75)&cooldown.deathbolt.remains<=action.agony.gcd*4&cooldown.summon_darkglare.remains>20\nactions.fillers+=/call_action_list,name=db_refresh,if=talent.deathbolt.enabled&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&cooldown.summon_darkglare.remains<=soul_shard*action.agony.gcd+action.agony.gcd*3&(dot.agony.remains<dot.agony.duration*1||dot.corruption.remains<dot.corruption.duration*1||dot.siphon_life.remains<dot.siphon_life.duration*1)\nactions.fillers+=/deathbolt,if=variable.dots_up&(cooldown.summon_darkglare.remains>=30+gcd||cooldown.summon_darkglare.remains>140)\nactions.fillers+=/shadow_bolt,if=buff.movement.up&buff.nightfall.remains\nactions.fillers+=/agony,if=buff.movement.up&!(talent.siphon_life.enabled&(prev_gcd.1.agony&prev_gcd.2.agony&prev_gcd.3.agony)||prev_gcd.1.agony)\nactions.fillers+=/siphon_life,if=buff.movement.up&!(prev_gcd.1.siphon_life&prev_gcd.2.siphon_life&prev_gcd.3.siphon_life)\nactions.fillers+=/corruption,if=buff.movement.up&!prev_gcd.1.corruption&!talent.absolute_corruption.enabled\nactions.fillers+=/drain_life,if=buff.inevitable_demise.stack>10&time_to_die<=10\nactions.fillers+=/drain_life,if=talent.siphon_life.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=2)&dot.agony.remains>5*spell_haste&dot.corruption.remains>gcd&(dot.siphon_life.remains>gcd||!talent.siphon_life.enabled)&(debuff.haunt.remains>5*spell_haste||!talent.haunt.enabled)&contagion>5*spell_haste\nactions.fillers+=/drain_life,if=talent.writhe_in_agony.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=3)-5*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up=2)&dot.agony.remains>5*spell_haste&dot.corruption.remains>gcd&(debuff.haunt.remains>5*spell_haste||!talent.haunt.enabled)&contagion>5*spell_haste\nactions.fillers+=/drain_life,if=talent.absolute_corruption.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=4)&dot.agony.remains>5*spell_haste&(debuff.haunt.remains>5*spell_haste||!talent.haunt.enabled)&contagion>5*spell_haste\nactions.fillers+=/haunt\nactions.fillers+=/focused_azerite_beam\nactions.fillers+=/purifying_blast\nactions.fillers+=/concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight\nactions.fillers+=/drain_soul,interrupt_global=1,chain=1,interrupt=1,cycle_targets=1,if=time_to_die<=gcd\nactions.fillers+=/drain_soul,cycle_targets=1,chain=1,interrupt_if=ticks_remain<5,interrupt_global=1,if=talent.shadow_embrace.enabled&variable.maintain_se&!debuff.shadow_embrace.remains\nactions.fillers+=/drain_soul,cycle_targets=1,chain=1,interrupt_if=ticks_remain<5,interrupt_global=1,if=talent.shadow_embrace.enabled&variable.maintain_se\nactions.fillers+=/drain_soul,interrupt_global=1,chain=1,interrupt=1\nactions.fillers+=/shadow_bolt,cycle_targets=1,if=talent.shadow_embrace.enabled&variable.maintain_se&!debuff.shadow_embrace.remains&!action.shadow_bolt.in_flight\nactions.fillers+=/shadow_bolt,cycle_targets=1,if=talent.shadow_embrace.enabled&variable.maintain_se\nactions.fillers+=/shadow_bolt\n\nactions.spenders=unstable_affliction,if=cooldown.summon_darkglare.remains<=soul_shard*(execute_time+azerite.dreadful_calling.rank)&(!talent.deathbolt.enabled||cooldown.deathbolt.remains<=soul_shard*execute_time)&(talent.sow_the_seeds.enabled||dot.phantom_singularity.remains||dot.vile_taint.remains)\nactions.spenders+=/call_action_list,name=fillers,if=(cooldown.summon_darkglare.remains<time_to_shard*(5-soul_shard)||cooldown.summon_darkglare.up)&time_to_die>cooldown.summon_darkglare.remains\nactions.spenders+=/seed_of_corruption,if=variable.use_seed\nactions.spenders+=/unstable_affliction,if=!variable.use_seed&!prev_gcd.1.summon_darkglare&(talent.deathbolt.enabled&cooldown.deathbolt.remains<=execute_time&!azerite.cascading_calamity.enabled||(soul_shard>=5&spell_targets.seed_of_corruption_aoe<2||soul_shard>=2&spell_targets.seed_of_corruption_aoe>=2)&target.time_to_die>4+execute_time&spell_targets.seed_of_corruption_aoe=1||time_to_die<=8+execute_time*soul_shard)\nactions.spenders+=/unstable_affliction,if=!variable.use_seed&contagion<=cast_time+variable.padding\nactions.spenders+=/unstable_affliction,cycle_targets=1,if=!variable.use_seed&(!talent.deathbolt.enabled||cooldown.deathbolt.remains>time_to_shard||soul_shard>1)&(!talent.vile_taint.enabled||soul_shard>1)&contagion<=cast_time+variable.padding&(!azerite.cascading_calamity.enabled||buff.cascading_calamity.remains>time_to_shard)",
					["version"] = 20200419,
					["warnings"] = "Imported 7 action lists.\n",
					["lists"] = {
						["db_refresh"] = {
							{
								["enabled"] = true,
								["action"] = "siphon_life",
								["criteria"] = "( dot.siphon_life.remains % dot.siphon_life.duration ) <= ( dot.agony.remains % dot.agony.duration ) & ( dot.siphon_life.remains % dot.siphon_life.duration ) <= ( dot.corruption.remains % dot.corruption.duration ) & dot.siphon_life.remains < dot.siphon_life.duration * 1.3",
								["line_cd"] = "15",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "agony",
								["criteria"] = "( dot.agony.remains % dot.agony.duration ) <= ( dot.corruption.remains % dot.corruption.duration ) & ( dot.agony.remains % dot.agony.duration ) <= ( dot.siphon_life.remains % dot.siphon_life.duration ) & dot.agony.remains < dot.agony.duration * 1.3",
								["line_cd"] = "15",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["criteria"] = "( dot.corruption.remains % dot.corruption.duration ) <= ( dot.agony.remains % dot.agony.duration ) & ( dot.corruption.remains % dot.corruption.duration ) <= ( dot.siphon_life.remains % dot.siphon_life.duration ) & dot.corruption.remains < dot.corruption.duration * 1.3",
								["line_cd"] = "15",
							}, -- [3]
						},
						["default"] = {
							{
								["action"] = "spell_lock",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "devour_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.sow_the_seeds.enabled & spell_targets.seed_of_corruption_aoe >= 3 + raid_event.invulnerable.up || talent.siphon_life.enabled & spell_targets.seed_of_corruption >= 5 + raid_event.invulnerable.up || spell_targets.seed_of_corruption >= 8 + raid_event.invulnerable.up",
								["var_name"] = "use_seed",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "action.shadow_bolt.execute_time * azerite.cascading_calamity.enabled",
								["var_name"] = "padding",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["value"] = "gcd",
								["criteria"] = "azerite.cascading_calamity.enabled & ( talent.drain_soul.enabled || talent.deathbolt.enabled & cooldown.deathbolt.remains <= gcd )",
								["var_name"] = "padding",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.seed_of_corruption_aoe <= 1 + talent.writhe_in_agony.enabled + talent.absolute_corruption.enabled * 2 + ( talent.writhe_in_agony.enabled & talent.sow_the_seeds.enabled & spell_targets.seed_of_corruption_aoe > 2 ) + ( talent.siphon_life.enabled & ! talent.creeping_death.enabled & ! talent.drain_soul.enabled ) + raid_event.invulnerable.up",
								["var_name"] = "maintain_se",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! talent.siphon_life.enabled || dot.siphon_life.up ) & dot.agony.stack >= 10 & ! dot.agony.refreshable & dot.corruption.up",
								["var_name"] = "dots_up",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
								["criteria"] = "time_to_die <= gcd & soul_shard < 5",
								["chain"] = "1",
								["interrupt_global"] = "1",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.seed_of_corruption_aoe <= 2 + raid_event.invulnerable.up",
								["action"] = "haunt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.agony.ticking & dot.corruption.ticking & ( buff.active_uas.stack = 5 || soul_shard = 0 || dot.phantom_singularity.remains & dot.phantom_singularity.remains <= gcd ) & ( ! talent.phantom_singularity.enabled || dot.phantom_singularity.remains ) & ( ! talent.deathbolt.enabled || cooldown.deathbolt.remains <= gcd || ! cooldown.deathbolt.remains || soul_shard = 0 & spell_targets.seed_of_corruption_aoe > 1 + raid_event.invulnerable.up )",
								["action"] = "summon_darkglare",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_darkglare.remains & variable.dots_up & spell_targets.seed_of_corruption_aoe = 1 + raid_event.invulnerable.up & ( ! essence.vision_of_perfection.minor & ! azerite.dreadful_calling.rank || cooldown.summon_darkglare.remains > 30 )",
								["action"] = "deathbolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.remains",
								["action"] = "the_unbound_force",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "agony",
								["criteria"] = "remains <= gcd + action.shadow_bolt.execute_time & time_to_die > 8",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "time < 30",
								["action"] = "memory_of_lucid_dreams",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "agony",
								["criteria"] = "time > 30 & cooldown.summon_darkglare.remains <= 15 & equipped.azsharas_font_of_power",
								["line_cd"] = "30",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["criteria"] = "time > 30 & cooldown.summon_darkglare.remains <= 15 & equipped.azsharas_font_of_power & ! talent.absolute_corruption.enabled & ( talent.siphon_life.enabled || spell_targets.seed_of_corruption_aoe > 1 & spell_targets.seed_of_corruption_aoe <= 3 )",
								["line_cd"] = "30",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "siphon_life",
								["criteria"] = "time > 30 & cooldown.summon_darkglare.remains <= 15 & equipped.azsharas_font_of_power",
								["line_cd"] = "30",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["criteria"] = "! contagion & time_to_die <= 8",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
								["cancel_if"] = "ticks_remain<5",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se & debuff.shadow_embrace.remains & debuff.shadow_embrace.remains <= gcd * 2",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "shadow_bolt",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se & debuff.shadow_embrace.remains & debuff.shadow_embrace.remains <= execute_time * 2 + travel_time & ! action.shadow_bolt.in_flight",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "phantom_singularity",
								["criteria"] = "time > 35 & target.time_to_die > 16 * spell_haste & ( ! essence.vision_of_perfection.minor & ! azerite.dreadful_calling.rank || cooldown.summon_darkglare.remains > 45 + soul_shard * azerite.dreadful_calling.rank || cooldown.summon_darkglare.remains < 15 * spell_haste + soul_shard * azerite.dreadful_calling.rank )",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["criteria"] = "! variable.use_seed & soul_shard = 5",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_seed & soul_shard = 5",
								["action"] = "seed_of_corruption",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "dots",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "vile_taint",
								["criteria"] = "time > 15 & time_to_die >= 10 & ( cooldown.summon_darkglare.remains > 30 || cooldown.summon_darkglare.remains < 10 & dot.agony.remains >= 10 & dot.corruption.remains >= 10 & ( dot.siphon_life.remains >= 10 || ! talent.siphon_life.enabled ) )",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "time <= 3",
								["name"] = "azsharas_font_of_power",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "time <= 35",
								["action"] = "phantom_singularity",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "time < 15",
								["action"] = "vile_taint",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_darkglare.remains < 15 + soul_shard * azerite.dreadful_calling.enabled || ( azerite.dreadful_calling.rank || essence.vision_of_perfection.rank ) & time > 30 & time_to_die >= 210 ) & ( dot.phantom_singularity.remains || dot.vile_taint.remains || ! talent.phantom_singularity.enabled & ! talent.vile_taint.enabled ) || time_to_die < 30 + gcd",
								["action"] = "guardian_of_azeroth",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_darkglare.remains < 15 + soul_shard * azerite.dreadful_calling.enabled & ( dot.phantom_singularity.remains || dot.vile_taint.remains )",
								["action"] = "dark_soul",
							}, -- [31]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "spenders",
							}, -- [33]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "fillers",
							}, -- [34]
						},
						["precombat"] = {
							{
								["action"] = "summon_felhunter",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_sacrifice.enabled",
								["action"] = "grimoire_of_sacrifice",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.seed_of_corruption_aoe >= 3 & ! equipped.azsharas_font_of_power",
								["action"] = "seed_of_corruption",
							}, -- [5]
							{
								["action"] = "haunt",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.haunt.enabled & spell_targets.seed_of_corruption_aoe < 3 & ! equipped.azsharas_font_of_power",
								["action"] = "shadow_bolt",
							}, -- [7]
						},
						["cooldowns"] = {
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "( ! talent.phantom_singularity.enabled || cooldown.phantom_singularity.remains < 4 * spell_haste || ! cooldown.phantom_singularity.remains ) & cooldown.summon_darkglare.remains < 19 * spell_haste + soul_shard * azerite.dreadful_calling.rank & dot.agony.remains & dot.corruption.remains & ( dot.siphon_life.remains || ! talent.siphon_life.enabled )",
								["name"] = "azsharas_font_of_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.dark_soul_misery.enabled & cooldown.summon_darkglare.up & cooldown.dark_soul.up ) || cooldown.summon_darkglare.up || time_to_die < 30",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_darkglare.remains > 70 || time_to_die < 20 || ( ( buff.active_uas.stack = 5 || soul_shard = 0 ) & ( ! talent.phantom_singularity.enabled || cooldown.phantom_singularity.remains ) & ( ! talent.deathbolt.enabled || cooldown.deathbolt.remains <= gcd || ! cooldown.deathbolt.remains ) & ! cooldown.summon_darkglare.remains )",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.summon_darkglare.up",
								["action"] = "fireblood",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.summon_darkglare.up",
								["action"] = "blood_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "time > 30",
								["action"] = "memory_of_lucid_dreams",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 20 + gcd || talent.sow_the_seeds.enabled & cooldown.summon_darkglare.remains >= cooldown.summon_darkglare.duration - 10",
								["action"] = "dark_soul",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "pet.darkglare.remains || ( ! cooldown.deathbolt.remains || ! talent.deathbolt.enabled ) & cooldown.summon_darkglare.remains >= 80 & essence.blood_of_the_enemy.rank > 1",
								["action"] = "blood_of_the_enemy",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "pocketsized_computation_device",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rotcrusted_voodoo_doll",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "rotcrusted_voodoo_doll",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "shiver_venom_relic",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "shiver_venom_relic",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "aquipotent_nautilus",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "aquipotent_nautilus",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "tidestorm_codex",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "vial_of_storms",
								["criteria"] = "( cooldown.summon_darkglare.remains >= 25 || time_to_die <= 30 ) & ( cooldown.deathbolt.remains || ! talent.deathbolt.enabled )",
								["name"] = "vial_of_storms",
							}, -- [15]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [16]
						},
						["spenders"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_darkglare.remains <= soul_shard * ( execute_time + azerite.dreadful_calling.rank ) & ( ! talent.deathbolt.enabled || cooldown.deathbolt.remains <= soul_shard * execute_time ) & ( talent.sow_the_seeds.enabled || dot.phantom_singularity.remains || dot.vile_taint.remains )",
								["action"] = "unstable_affliction",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.summon_darkglare.remains < time_to_shard * ( 5 - soul_shard ) || cooldown.summon_darkglare.up ) & time_to_die > cooldown.summon_darkglare.remains",
								["action"] = "call_action_list",
								["list_name"] = "fillers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_seed",
								["action"] = "seed_of_corruption",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.use_seed & ! prev_gcd.1.summon_darkglare & ( talent.deathbolt.enabled & cooldown.deathbolt.remains <= execute_time & ! azerite.cascading_calamity.enabled || ( soul_shard >= 5 & spell_targets.seed_of_corruption_aoe < 2 || soul_shard >= 2 & spell_targets.seed_of_corruption_aoe >= 2 ) & target.time_to_die > 4 + execute_time & spell_targets.seed_of_corruption_aoe = 1 || time_to_die <= 8 + execute_time * soul_shard )",
								["action"] = "unstable_affliction",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! variable.use_seed & contagion <= cast_time + variable.padding",
								["action"] = "unstable_affliction",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["criteria"] = "! variable.use_seed & ( ! talent.deathbolt.enabled || cooldown.deathbolt.remains > time_to_shard || soul_shard > 1 ) & ( ! talent.vile_taint.enabled || soul_shard > 1 ) & contagion <= cast_time + variable.padding & ( ! azerite.cascading_calamity.enabled || buff.cascading_calamity.remains > time_to_shard )",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["fillers"] = {
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["criteria"] = "cooldown.deathbolt.remains <= gcd * 2 & spell_targets.seed_of_corruption_aoe = 1 + raid_event.invulnerable.up & cooldown.summon_darkglare.remains > 20",
								["line_cd"] = "15",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.deathbolt.enabled & spell_targets.seed_of_corruption_aoe = 1 + raid_event.invulnerable.up & ( dot.agony.remains < dot.agony.duration * 0.75 || dot.corruption.remains < dot.corruption.duration * 0.75 || dot.siphon_life.remains < dot.siphon_life.duration * 0.75 ) & cooldown.deathbolt.remains <= action.agony.gcd * 4 & cooldown.summon_darkglare.remains > 20",
								["action"] = "call_action_list",
								["list_name"] = "db_refresh",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.deathbolt.enabled & spell_targets.seed_of_corruption_aoe = 1 + raid_event.invulnerable.up & cooldown.summon_darkglare.remains <= soul_shard * action.agony.gcd + action.agony.gcd * 3 & ( dot.agony.remains < dot.agony.duration * 1 || dot.corruption.remains < dot.corruption.duration * 1 || dot.siphon_life.remains < dot.siphon_life.duration * 1 )",
								["action"] = "call_action_list",
								["list_name"] = "db_refresh",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up & ( cooldown.summon_darkglare.remains >= 30 + gcd || cooldown.summon_darkglare.remains > 140 )",
								["action"] = "deathbolt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.movement.up & buff.nightfall.remains",
								["action"] = "shadow_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.movement.up & ! ( talent.siphon_life.enabled & ( prev_gcd.1.agony & prev_gcd.2.agony & prev_gcd.3.agony ) || prev_gcd.1.agony )",
								["action"] = "agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.movement.up & ! ( prev_gcd.1.siphon_life & prev_gcd.2.siphon_life & prev_gcd.3.siphon_life )",
								["action"] = "siphon_life",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.movement.up & ! prev_gcd.1.corruption & ! talent.absolute_corruption.enabled",
								["action"] = "corruption",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.inevitable_demise.stack > 10 & time_to_die <= 10",
								["action"] = "drain_life",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.siphon_life.enabled & buff.inevitable_demise.stack >= 50 - 20 * ( spell_targets.seed_of_corruption_aoe - raid_event.invulnerable.up >= 2 ) & dot.agony.remains > 5 * spell_haste & dot.corruption.remains > gcd & ( dot.siphon_life.remains > gcd || ! talent.siphon_life.enabled ) & ( debuff.haunt.remains > 5 * spell_haste || ! talent.haunt.enabled ) & contagion > 5 * spell_haste",
								["action"] = "drain_life",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.writhe_in_agony.enabled & buff.inevitable_demise.stack >= 50 - 20 * ( spell_targets.seed_of_corruption_aoe - raid_event.invulnerable.up >= 3 ) - 5 * ( spell_targets.seed_of_corruption_aoe - raid_event.invulnerable.up = 2 ) & dot.agony.remains > 5 * spell_haste & dot.corruption.remains > gcd & ( debuff.haunt.remains > 5 * spell_haste || ! talent.haunt.enabled ) & contagion > 5 * spell_haste",
								["action"] = "drain_life",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.absolute_corruption.enabled & buff.inevitable_demise.stack >= 50 - 20 * ( spell_targets.seed_of_corruption_aoe - raid_event.invulnerable.up >= 4 ) & dot.agony.remains > 5 * spell_haste & ( debuff.haunt.remains > 5 * spell_haste || ! talent.haunt.enabled ) & contagion > 5 * spell_haste",
								["action"] = "drain_life",
							}, -- [12]
							{
								["action"] = "haunt",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! dot.concentrated_flame_burn.remains & ! action.concentrated_flame.in_flight",
								["action"] = "concentrated_flame",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
								["interrupt"] = "1",
								["criteria"] = "time_to_die <= gcd",
								["chain"] = "1",
								["interrupt_global"] = "1",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
								["interrupt_if"] = "ticks_remain<5",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se & ! debuff.shadow_embrace.remains",
								["chain"] = "1",
								["interrupt_global"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
								["interrupt_if"] = "ticks_remain<5",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se",
								["chain"] = "1",
								["interrupt_global"] = "1",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "drain_soul",
								["interrupt"] = "1",
								["chain"] = "1",
								["interrupt_global"] = "1",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "shadow_bolt",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se & ! debuff.shadow_embrace.remains & ! action.shadow_bolt.in_flight",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "shadow_bolt",
								["criteria"] = "talent.shadow_embrace.enabled & variable.maintain_se",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [23]
						},
						["dots"] = {
							{
								["enabled"] = true,
								["criteria"] = "dot.corruption.remains <= action.seed_of_corruption.cast_time + time_to_shard + 4.2 * ( 1 - talent.creeping_death.enabled * 0.15 ) & spell_targets.seed_of_corruption_aoe >= 3 + raid_event.invulnerable.up + talent.writhe_in_agony.enabled & ! dot.seed_of_corruption.remains & ! action.seed_of_corruption.in_flight",
								["action"] = "seed_of_corruption",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "agony",
								["criteria"] = "talent.creeping_death.enabled & active_dot.agony < 6 & time_to_die > 10 & ( remains <= gcd || cooldown.summon_darkglare.remains > 10 & ( remains < 5 || ! azerite.pandemic_invocation.rank & refreshable ) )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "agony",
								["criteria"] = "! talent.creeping_death.enabled & active_dot.agony < 8 & time_to_die > 10 & ( remains <= gcd || cooldown.summon_darkglare.remains > 10 & ( remains < 5 || ! azerite.pandemic_invocation.rank & refreshable ) )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "siphon_life",
								["criteria"] = "( active_dot.siphon_life < 8 - talent.creeping_death.enabled - spell_targets.sow_the_seeds_aoe ) & time_to_die > 10 & refreshable & ( ! remains & spell_targets.seed_of_corruption_aoe = 1 || cooldown.summon_darkglare.remains > soul_shard * action.unstable_affliction.execute_time )",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["criteria"] = "spell_targets.seed_of_corruption_aoe < 3 + raid_event.invulnerable.up + talent.writhe_in_agony.enabled & ( remains <= gcd || cooldown.summon_darkglare.remains > 10 & refreshable ) & target.time_to_die > 10",
								["cycle_targets"] = 1,
							}, -- [5]
						},
					},
					["author"] = "SimC",
				},
				["Destruction"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200124,
					["author"] = "SimC",
					["desc"] = "# Destruction Warlock\n# https://github.com/simulationcraft/simc/\n# January 21, 2020",
					["lists"] = {
						["gosup_infernal"] = {
							{
								["enabled"] = true,
								["criteria"] = "soul_shard = 5 & ! buff.backdraft.up & buff.memory_of_lucid_dreams.up & buff.grimoire_of_supremacy.stack <= 10",
								["action"] = "rain_of_fire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.up",
								["action"] = "chaos_bolt",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard >= 4.2 - buff.memory_of_lucid_dreams.up",
								["action"] = "chaos_bolt",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.conflagrate.up",
								["action"] = "chaos_bolt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cast_time < pet.infernal.remains & pet.infernal.remains < cast_time + gcd",
								["action"] = "chaos_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.down & buff.memory_of_lucid_dreams.up & soul_shard >= 1.3",
								["action"] = "conflagrate",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.down & ! buff.memory_of_lucid_dreams.up & ( soul_shard >= 2.8 || charges_fractional > 1.9 & soul_shard >= 1.3 )",
								["action"] = "conflagrate",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.remains < 5",
								["action"] = "conflagrate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1",
								["action"] = "conflagrate",
							}, -- [9]
							{
								["action"] = "soul_fire",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "shadowburn",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [12]
						},
						["havoc"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.down & soul_shard >= 1 & soul_shard <= 4",
								["action"] = "conflagrate",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.internal_combustion.enabled & remains < duration * 0.5 || ! talent.internal_combustion.enabled & refreshable",
								["action"] = "immolate",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cast_time < havoc_remains",
								["action"] = "chaos_bolt",
							}, -- [3]
							{
								["action"] = "soul_fire",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 || ! talent.fire_and_brimstone.enabled",
								["action"] = "shadowburn",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cast_time < havoc_remains",
								["action"] = "incinerate",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "summon_imp",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_sacrifice.enabled",
								["action"] = "grimoire_of_sacrifice",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "soul_fire",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.soul_fire.enabled",
								["action"] = "incinerate",
							}, -- [5]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( buff.crashing_chaos.down || ! talent.grimoire_of_supremacy.enabled ) & ( ! cooldown.havoc.ready || active_enemies > 3 )",
								["action"] = "rain_of_fire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.immolate.remains > cast_time",
								["action"] = "channel_demonfire",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "immolate",
								["criteria"] = "remains < 5 & ( ! talent.cataclysm.enabled || cooldown.cataclysm.remains > remains )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "havoc",
								["criteria"] = "active_enemies < 4",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_supremacy.enabled & pet.infernal.active & ( havoc_active || talent.cataclysm.enabled || talent.inferno.enabled & active_enemies < 4 )",
								["action"] = "chaos_bolt",
							}, -- [6]
							{
								["action"] = "rain_of_fire",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "havoc",
								["criteria"] = "( ! talent.grimoire_of_supremacy.enabled || ! talent.inferno.enabled || talent.grimoire_of_supremacy.enabled & pet.infernal.remains <= 10 )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.fire_and_brimstone.enabled & buff.backdraft.up & soul_shard < 5 - 0.2 * active_enemies",
								["action"] = "incinerate",
							}, -- [11]
							{
								["action"] = "soul_fire",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.down",
								["action"] = "conflagrate",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fire_and_brimstone.enabled",
								["action"] = "shadowburn",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! dot.concentrated_flame_burn.remains & ! action.concentrated_flame.in_flight & active_enemies < 5",
								["action"] = "concentrated_flame",
							}, -- [15]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [16]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_supremacy.enabled & remains < 8 & cooldown.summon_infernal.remains < 4.5",
								["action"] = "immolate",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_supremacy.enabled & cooldown.summon_infernal.remains < 4.5 & ! buff.backdraft.up & soul_shard < 4.3",
								["action"] = "conflagrate",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.summon_infernal.up || cooldown.summon_infernal.remains <= 4",
								["name"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["action"] = "summon_infernal",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active",
								["action"] = "guardian_of_azeroth",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( pet.infernal.remains < 20.5 || pet.infernal.remains < 22 & soul_shard >= 3.6 || ! talent.grimoire_of_supremacy.enabled )",
								["action"] = "dark_soul_instability",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( pet.infernal.remains < 15.5 || soul_shard < 3.5 & ( buff.dark_soul_instability.up || ! talent.grimoire_of_supremacy.enabled & dot.immolate.remains > 12 ) )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die > cooldown.summon_infernal.duration + 30",
								["action"] = "summon_infernal",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "time > 30 & time_to_die > cooldown.guardian_of_azeroth.duration + 30",
								["action"] = "guardian_of_azeroth",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.dark_soul_instability.enabled & cooldown.dark_soul_instability.remains > target.time_to_die",
								["action"] = "summon_infernal",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_infernal.remains > time_to_die",
								["action"] = "guardian_of_azeroth",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_infernal.remains > time_to_die & pet.infernal.remains < 20.5",
								["action"] = "dark_soul_instability",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_infernal.remains > time_to_die & pet.infernal.remains < 18.5",
								["action"] = "worldvein_resonance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_infernal.remains > time_to_die & ( pet.infernal.remains < 15.5 || buff.dark_soul_instability.up & soul_shard < 3 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 30",
								["action"] = "summon_infernal",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 30",
								["action"] = "guardian_of_azeroth",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 21 & time_to_die > 4",
								["action"] = "dark_soul_instability",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 16 & time_to_die > 6",
								["action"] = "memory_of_lucid_dreams",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 19 & time_to_die > 4",
								["action"] = "worldvein_resonance",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 16 & time_to_die > 6",
								["action"] = "memory_of_lucid_dreams",
							}, -- [20]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.summon_infernal.remains >= 60 - 12 & ! pet.infernal.active",
								["action"] = "worldvein_resonance",
							}, -- [22]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active || time_to_die < 30",
								["action"] = "potion",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( ! talent.grimoire_of_supremacy.enabled || ( ! essence.memory_of_lucid_dreams.major || buff.memory_of_lucid_dreams.remains ) & ( ! talent.dark_soul_instability.enabled || buff.dark_soul_instability.remains ) ) || time_to_die <= 15",
								["action"] = "berserking",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( ! talent.grimoire_of_supremacy.enabled || ( ! essence.memory_of_lucid_dreams.major || buff.memory_of_lucid_dreams.remains ) & ( ! talent.dark_soul_instability.enabled || buff.dark_soul_instability.remains ) ) || time_to_die <= 15",
								["action"] = "blood_fury",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( ! talent.grimoire_of_supremacy.enabled || ( ! essence.memory_of_lucid_dreams.major || buff.memory_of_lucid_dreams.remains ) & ( ! talent.dark_soul_instability.enabled || buff.dark_soul_instability.remains ) ) || time_to_die <= 15",
								["action"] = "fireblood",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "pet.infernal.active & ( ! talent.grimoire_of_supremacy.enabled || pet.infernal.remains <= 20 ) || time_to_die <= 20",
								["action"] = "use_items",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "pocketsized_computation_device",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "rotcrusted_voodoo_doll",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "rotcrusted_voodoo_doll",
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "shiver_venom_relic",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "shiver_venom_relic",
							}, -- [31]
							{
								["enabled"] = true,
								["action"] = "aquipotent_nautilus",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "aquipotent_nautilus",
							}, -- [32]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "tidestorm_codex",
							}, -- [33]
							{
								["enabled"] = true,
								["action"] = "vial_of_storms",
								["criteria"] = "dot.immolate.remains >= 5 & ( cooldown.summon_infernal.remains >= 20 || time_to_die < 30 )",
								["name"] = "vial_of_storms",
							}, -- [34]
						},
						["default"] = {
							{
								["action"] = "spell_lock",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "singe_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "havoc_active & active_enemies < 5 - talent.inferno.enabled + ( talent.inferno.enabled & talent.internal_combustion.enabled )",
								["action"] = "call_action_list",
								["list_name"] = "havoc",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ( pet.infernal.active & dot.immolate.remains + 1 > pet.infernal.remains ) || spell_targets.cataclysm > 1 || ! talent.grimoire_of_supremacy.enabled",
								["action"] = "cataclysm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "immolate",
								["criteria"] = "refreshable & ( ! talent.cataclysm.enabled || cooldown.cataclysm.remains > remains )",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.internal_combustion.enabled & action.chaos_bolt.in_flight & remains < duration * 0.5",
								["action"] = "immolate",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! pet.infernal.active || ! talent.grimoire_of_supremacy.enabled",
								["action"] = "focused_azerite_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.react",
								["action"] = "the_unbound_force",
							}, -- [10]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! dot.concentrated_flame_burn.remains & ! action.concentrated_flame.in_flight",
								["action"] = "concentrated_flame",
							}, -- [12]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "channel_demonfire",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "havoc",
								["criteria"] = "( dot.immolate.remains > dot.immolate.duration * 0.5 || ! talent.internal_combustion.enabled ) & ( ! cooldown.summon_infernal.ready || ! talent.grimoire_of_supremacy.enabled || talent.grimoire_of_supremacy.enabled & pet.infernal.remains <= 10 )",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.grimoire_of_supremacy.enabled & pet.infernal.active",
								["action"] = "call_action_list",
								["list_name"] = "gosup_infernal",
							}, -- [16]
							{
								["action"] = "soul_fire",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies > 1 & cooldown.havoc.remains <= 10 || cooldown.summon_infernal.remains <= 15 & ( talent.grimoire_of_supremacy.enabled || talent.dark_soul_instability.enabled & cooldown.dark_soul_instability.remains <= 15 ) || talent.dark_soul_instability.enabled & cooldown.dark_soul_instability.remains <= 15 & ( cooldown.summon_infernal.remains > time_to_die || cooldown.summon_infernal.remains + cooldown.summon_infernal.duration > time_to_die )",
								["var_name"] = "pool_soul_shards",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.down & soul_shard >= 1.5 - 0.3 * talent.flashover.enabled & ! variable.pool_soul_shards",
								["action"] = "conflagrate",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard < 2 & ( ! variable.pool_soul_shards || charges > 1 )",
								["action"] = "shadowburn",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( talent.grimoire_of_supremacy.enabled || azerite.crashing_chaos.enabled ) & pet.infernal.active || buff.dark_soul_instability.up || buff.reckless_force.react & buff.reckless_force.remains > cast_time",
								["action"] = "chaos_bolt",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.backdraft.up & ! variable.pool_soul_shards & ! talent.eradication.enabled",
								["action"] = "chaos_bolt",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pool_soul_shards & talent.eradication.enabled & ( debuff.eradication.remains < cast_time || buff.backdraft.up )",
								["action"] = "chaos_bolt",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( soul_shard >= 4.5 - 0.2 * active_enemies ) & ( ! talent.grimoire_of_supremacy.enabled || cooldown.summon_infernal.remains > 7 )",
								["action"] = "chaos_bolt",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1",
								["action"] = "conflagrate",
							}, -- [25]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [26]
						},
					},
					["version"] = 20200124,
					["warnings"] = "Imported 6 action lists.\n",
					["spec"] = 267,
					["profile"] = "# Destruction Warlock\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/summon_pet\nactions.precombat+=/grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/soul_fire\nactions.precombat+=/incinerate,if=!talent.soul_fire.enabled\n\n# Executed every time the actor is available.\nactions=spell_lock\nactions+=/singe_magic\n\n# Havoc uses a special priority list on most multitarget scenarios, but the target threshold can vary depending on talents\nactions=call_action_list,name=havoc,if=havoc_active&active_enemies<5-talent.inferno.enabled+(talent.inferno.enabled&talent.internal_combustion.enabled)\nactions+=/cataclysm,if=!(pet.infernal.active&dot.immolate.remains+1>pet.infernal.remains)||spell_targets.cataclysm>1||!talent.grimoire_of_supremacy.enabled\n# Two target scenarios are handled like single target with Havoc weaved in. Starting with three targets, a specialized AoE priority is required\nactions+=/call_action_list,name=aoe,if=active_enemies>2\n# Immolate should never fall off the primary target. If Cataclysm will refresh Immolate before it expires, there's no reason to waste time casting it\nactions+=/immolate,cycle_targets=1,if=refreshable&(!talent.cataclysm.enabled||cooldown.cataclysm.remains>remains)\n# #With Internal Combustion talented, it's possible Immolate will need to be refreshed sooner than the remaining duration says, if there's already a Chaos Bolt on the way to the target.\nactions+=/immolate,if=talent.internal_combustion.enabled&action.chaos_bolt.in_flight&remains<duration*0.5\n# The general rule of thumb for talents is to maximize the number of uses of each\nactions+=/call_action_list,name=cds\nactions+=/focused_azerite_beam,if=!pet.infernal.active||!talent.grimoire_of_supremacy.enabled\nactions+=/the_unbound_force,if=buff.reckless_force.react\nactions+=/purifying_blast\nactions+=/concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight\nactions+=/reaping_flames\nactions+=/channel_demonfire\n# The if condition here always applies Havoc to something other than the primary target\nactions+=/havoc,cycle_targets=1,if=(dot.immolate.remains>dot.immolate.duration*0.5||!talent.internal_combustion.enabled)&(!cooldown.summon_infernal.ready||!talent.grimoire_of_supremacy.enabled||talent.grimoire_of_supremacy.enabled&pet.infernal.remains<=10)\nactions+=/call_action_list,name=gosup_infernal,if=talent.grimoire_of_supremacy.enabled&pet.infernal.active\n# Soul Fire should be used on cooldown, it does not appear worth saving for generating Soul Shards during cooldowns\nactions+=/soul_fire\n# It's worth stocking up on Soul Shards before a major cooldown usage\nactions+=/variable,name=pool_soul_shards,value=active_enemies>1&cooldown.havoc.remains<=10||cooldown.summon_infernal.remains<=15&(talent.grimoire_of_supremacy.enabled||talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains<=15)||talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains<=15&(cooldown.summon_infernal.remains>time_to_die||cooldown.summon_infernal.remains+cooldown.summon_infernal.duration>time_to_die)\n# Conflagrate should only be used to set up Chaos Bolts. Flashover lets Conflagrate be used earlier to set up an Incinerate before CB. If a major cooldown is coming up, save charges for it\nactions+=/conflagrate,if=buff.backdraft.down&soul_shard>=1.5-0.3*talent.flashover.enabled&!variable.pool_soul_shards\n# Shadowburn is used as a discount Conflagrate to generate shards if you don't have enough for a Chaos Bolt. The same rules about saving it for major cooldowns applies\nactions+=/shadowburn,if=soul_shard<2&(!variable.pool_soul_shards||charges>1)\n# Chaos Bolt has several possible use conditions. Crashing Chaos, Grimoire of Supremacy, and Dark Soul: Instability all favor casting as many CBs as possible when any of them are active\nactions+=/chaos_bolt,if=(talent.grimoire_of_supremacy.enabled||azerite.crashing_chaos.enabled)&pet.infernal.active||buff.dark_soul_instability.up||buff.reckless_force.react&buff.reckless_force.remains>cast_time\n# If Soul Shards are not being pooled and Eradication is not talented, just spend CBs as they become available\nactions+=/chaos_bolt,if=buff.backdraft.up&!variable.pool_soul_shards&!talent.eradication.enabled\n# With Eradication, it's beneficial to maximize the uptime on the debuff. However, it's still better to use Chaos Bolt immediately if Backdraft is up\nactions+=/chaos_bolt,if=!variable.pool_soul_shards&talent.eradication.enabled&(debuff.eradication.remains<cast_time||buff.backdraft.up)\n# Even when saving, do not overcap on Soul Shards\nactions+=/chaos_bolt,if=(soul_shard>=4.5-0.2*active_enemies)&(!talent.grimoire_of_supremacy.enabled||cooldown.summon_infernal.remains>7)\n# Don't overcap on charges of Conflagrate\nactions+=/conflagrate,if=charges>1\nactions+=/incinerate\n\n# Rain of Fire is typically the highest priority action, but certain situations favor using Chaos Bolt instead\nactions.aoe=rain_of_fire,if=pet.infernal.active&(buff.crashing_chaos.down||!talent.grimoire_of_supremacy.enabled)&(!cooldown.havoc.ready||active_enemies>3)\n# Channel Demonfire only needs one Immolate active during its cast for AoE. Primary target is used here for simplicity\nactions.aoe+=/channel_demonfire,if=dot.immolate.remains>cast_time\n# Similar to single target, there is no need to refresh Immolates if Cataclysm can do it instead\nactions.aoe+=/immolate,cycle_targets=1,if=remains<5&(!talent.cataclysm.enabled||cooldown.cataclysm.remains>remains)\n# Rules for cooldowns do not change for AoE, so call the same list as on single target\nactions.aoe+=/call_action_list,name=cds\n# Three targets is an in-between case that gives a slight benefit to higher priority Havoc\nactions.aoe+=/havoc,cycle_targets=1,if=active_enemies<4\n# Rain of Fire will start to dominate on heavy AoE, but some significant Chaos Bolt buffs will still give higher damage output on occasion\nactions.aoe+=/chaos_bolt,if=talent.grimoire_of_supremacy.enabled&pet.infernal.active&(havoc_active||talent.cataclysm.enabled||talent.inferno.enabled&active_enemies<4)\n# Barring any exceptions, Rain of Fire will be used as much as possible, since multiple copies of it can stack\nactions.aoe+=/rain_of_fire\nactions.aoe+=/focused_azerite_beam\nactions.aoe+=/purifying_blast\n# Even if the Havoc priority list won't be used, Havoc is pretty much free damage and resources and should be used almost on cooldown\nactions.aoe+=/havoc,cycle_targets=1,if=(!talent.grimoire_of_supremacy.enabled||!talent.inferno.enabled||talent.grimoire_of_supremacy.enabled&pet.infernal.remains<=10)\n# Use Fire and Brimstone if Backdraft is active, as long as it will not overcap on Soul Shards\nactions.aoe+=/incinerate,if=talent.fire_and_brimstone.enabled&buff.backdraft.up&soul_shard<5-0.2*active_enemies\n# Other Soul Shard generating abilities are good filler if not using Fire and Brimstone\nactions.aoe+=/soul_fire\nactions.aoe+=/conflagrate,if=buff.backdraft.down\nactions.aoe+=/shadowburn,if=!talent.fire_and_brimstone.enabled\nactions.aoe+=/concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&active_enemies<5\n# With Fire and Brimstone, Incinerate will be a strong filler. It's placed here for all talents to prevent accidentally using the single target rotation list\nactions.aoe+=/incinerate\n\n# Refresh immolate before entering a GoSup Infernal to optimize gcds.\nactions.cds=immolate,if=talent.grimoire_of_supremacy.enabled&remains<8&cooldown.summon_infernal.remains<4.5\n# Use conflagrate just before GoSup Infernal to optimize gcds.\nactions.cds+=/conflagrate,if=talent.grimoire_of_supremacy.enabled&cooldown.summon_infernal.remains<4.5&!buff.backdraft.up&soul_shard<4.3\nactions.cds+=/use_item,name=azsharas_font_of_power,if=cooldown.summon_infernal.up||cooldown.summon_infernal.remains<=4\nactions.cds+=/summon_infernal\nactions.cds+=/guardian_of_azeroth,if=pet.infernal.active\nactions.cds+=/dark_soul_instability,if=pet.infernal.active&(pet.infernal.remains<20.5||pet.infernal.remains<22&soul_shard>=3.6||!talent.grimoire_of_supremacy.enabled)\nactions.cds+=/memory_of_lucid_dreams,if=pet.infernal.active&(pet.infernal.remains<15.5||soul_shard<3.5&(buff.dark_soul_instability.up||!talent.grimoire_of_supremacy.enabled&dot.immolate.remains>12))\n# If DSI is not ready but you can get more than one infernal in before the end of the fight, summon the Infernal now\nactions.cds+=/summon_infernal,if=time_to_die>cooldown.summon_infernal.duration+30\nactions.cds+=/guardian_of_azeroth,if=time>30&time_to_die>cooldown.guardian_of_azeroth.duration+30\n# If the fight will end before DSI is back up, summon the Infernal\nactions.cds+=/summon_infernal,if=talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains>target.time_to_die\nactions.cds+=/guardian_of_azeroth,if=cooldown.summon_infernal.remains>time_to_die\n# If the fight will end before infernal is back up, use DSI\nactions.cds+=/dark_soul_instability,if=cooldown.summon_infernal.remains>time_to_die&pet.infernal.remains<20.5\nactions.cds+=/worldvein_resonance,if=cooldown.summon_infernal.remains>time_to_die&pet.infernal.remains<18.5\nactions.cds+=/memory_of_lucid_dreams,if=cooldown.summon_infernal.remains>time_to_die&(pet.infernal.remains<15.5||buff.dark_soul_instability.up&soul_shard<3)\n# If the fight is about to end, use CDs such that they get as much time up as possible\nactions.cds+=/summon_infernal,if=time_to_die<30\nactions.cds+=/guardian_of_azeroth,if=time_to_die<30\nactions.cds+=/dark_soul_instability,if=time_to_die<21&time_to_die>4\nactions.cds+=/memory_of_lucid_dreams,if=time_to_die<16&time_to_die>6\nactions.cds+=/worldvein_resonance,if=time_to_die<19&time_to_die>4\nactions.cds+=/memory_of_lucid_dreams,if=time_to_die<16&time_to_die>6\nactions.cds+=/blood_of_the_enemy\nactions.cds+=/worldvein_resonance,if=cooldown.summon_infernal.remains>=60-12&!pet.infernal.active\nactions.cds+=/ripple_in_space\nactions.cds+=/potion,if=pet.infernal.active||time_to_die<30\nactions.cds+=/berserking,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled||(!essence.memory_of_lucid_dreams.major||buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled||buff.dark_soul_instability.remains))||time_to_die<=15\nactions.cds+=/blood_fury,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled||(!essence.memory_of_lucid_dreams.major||buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled||buff.dark_soul_instability.remains))||time_to_die<=15\nactions.cds+=/fireblood,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled||(!essence.memory_of_lucid_dreams.major||buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled||buff.dark_soul_instability.remains))||time_to_die<=15\nactions.cds+=/use_items,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled||pet.infernal.remains<=20)||time_to_die<=20\nactions.cds+=/use_item,name=pocketsized_computation_device,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\nactions.cds+=/use_item,name=rotcrusted_voodoo_doll,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\nactions.cds+=/use_item,name=shiver_venom_relic,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\nactions.cds+=/use_item,name=aquipotent_nautilus,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\nactions.cds+=/use_item,name=tidestorm_codex,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\nactions.cds+=/use_item,name=vial_of_storms,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20||time_to_die<30)\n\n# Subapl designed to optimize the usage of backdraft during GoSup Infernals, and prevent capping with MoLD.\nactions.gosup_infernal=rain_of_fire,if=soul_shard=5&!buff.backdraft.up&buff.memory_of_lucid_dreams.up&buff.grimoire_of_supremacy.stack<=10\nactions.gosup_infernal+=/chaos_bolt,if=buff.backdraft.up\nactions.gosup_infernal+=/chaos_bolt,if=soul_shard>=4.2-buff.memory_of_lucid_dreams.up\nactions.gosup_infernal+=/chaos_bolt,if=!cooldown.conflagrate.up\nactions.gosup_infernal+=/chaos_bolt,if=cast_time<pet.infernal.remains&pet.infernal.remains<cast_time+gcd\nactions.gosup_infernal+=/conflagrate,if=buff.backdraft.down&buff.memory_of_lucid_dreams.up&soul_shard>=1.3\nactions.gosup_infernal+=/conflagrate,if=buff.backdraft.down&!buff.memory_of_lucid_dreams.up&(soul_shard>=2.8||charges_fractional>1.9&soul_shard>=1.3)\nactions.gosup_infernal+=/conflagrate,if=pet.infernal.remains<5\nactions.gosup_infernal+=/conflagrate,if=charges>1\nactions.gosup_infernal+=/soul_fire\nactions.gosup_infernal+=/shadowburn\nactions.gosup_infernal+=/incinerate\n\nactions.havoc=conflagrate,if=buff.backdraft.down&soul_shard>=1&soul_shard<=4\nactions.havoc+=/immolate,if=talent.internal_combustion.enabled&remains<duration*0.5||!talent.internal_combustion.enabled&refreshable\nactions.havoc+=/chaos_bolt,if=cast_time<havoc_remains\nactions.havoc+=/soul_fire\nactions.havoc+=/shadowburn,if=active_enemies<3||!talent.fire_and_brimstone.enabled\nactions.havoc+=/incinerate,if=cast_time<havoc_remains",
				},
			},
		},
		["Taneh - Area 52"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["resetAllPotions_20201209"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["resetGlobalCooldownSync_20210403"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[103] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Feral",
					["damagePets"] = false,
					["settings"] = {
						["owlweave_cat"] = false,
						["brutal_charges"] = 2,
					},
					["damage"] = true,
					["enhancedRecheck"] = false,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["petbased"] = false,
					["maxTime"] = 33,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["nameplates"] = true,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "spectral_agility",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 3,
					["aoe"] = 3,
					["damageRange"] = 0,
				},
				[104] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Guardian",
					["damagePets"] = false,
					["settings"] = {
						["catweave_bear"] = false,
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
						["mangle_more"] = false,
						["owlweave_bear"] = false,
						["shift_for_convoke"] = false,
					},
					["damage"] = true,
					["enhancedRecheck"] = false,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["petbased"] = false,
					["maxTime"] = 33,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["nameplates"] = true,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "spectral_agility",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["aoe"] = 3,
					["damageRange"] = 0,
				},
				[102] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Balance",
					["damagePets"] = false,
					["settings"] = {
						["starlord_cancel"] = false,
						["solo_drift"] = false,
					},
					["damage"] = true,
					["enhancedRecheck"] = false,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["petbased"] = false,
					["maxTime"] = 33,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["nameplates"] = false,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "spectral_intellect",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["aoe"] = 3,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -336.6669921875,
					["y"] = -172.4998779296875,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["x"] = -484.1666259765625,
					["y"] = -231.6665954589844,
				},
				["Primary"] = {
					["y"] = -231.6662750244141,
					["x"] = -391.66796875,
					["rel"] = "CENTER",
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -392.5002746582031,
					["y"] = -174.1666412353516,
				},
				["AOE"] = {
					["rel"] = "CENTER",
				},
			},
			["packs"] = {
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210403,
					["author"] = "SimC",
					["desc"] = "Feral Druid\nApril 2, 2021\n\nFeral APL can also be found at https://gist.github.com/Xanzara/6896c8996f5afce5ce115daa3a08daff\n\nChanges:\n- druid.owlweave_cat=1 checks to druid.owlweave_cat.\n- Convert BT pool_resource to wait expression.",
					["lists"] = {
						["filler"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "variable.filler = 1 & refreshable & dot.rake.pmultiplier <= persistent_multiplier",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 2",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 3",
								["action"] = "lunar_inspiration",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 4",
								["action"] = "swipe_cat",
							}, -- [4]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [5]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 3",
								["action"] = "savage_roar",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( druid.primal_wrath.ticks_gained_on_refresh > 3 * ( spell_targets.primal_wrath + 1 ) & spell_targets.primal_wrath > 1 ) || spell_targets.primal_wrath > ( 3 + 1 * talent.sabertooth.enabled )",
								["action"] = "primal_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "refreshable & druid.rip.ticks_gained_on_refresh > variable.rip_ticks & ( ( buff.tigers_fury.up || cooldown.tigers_fury.remains > 5 ) & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & dot.rip.pmultiplier <= persistent_multiplier || ! talent.sabertooth.enabled )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < ( combo_points + 1 ) * 6 * 0.3",
								["action"] = "savage_roar",
							}, -- [4]
							{
								["max_energy"] = 1,
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.bs_inc.up & talent.soul_of_the_forest.enabled",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["balance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.down & buff.eclipse_lunar.down & ( refreshable || ( active_enemies > 1 & active_dot.sunfire < active_enemies ) )",
								["action"] = "sunfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.remains > cast_time || buff.eclipse_lunar.remains > cast_time",
								["action"] = "starsurge",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_lunar.remains > cast_time || solar_eclipse > 0",
								["action"] = "starfire",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.remains > cast_time || lunar_eclipse > 0",
								["action"] = "wrath",
							}, -- [4]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & ! druid.owlweave_cat",
								["action"] = "run_action_list",
								["list_name"] = "balance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "druid.owlweave_cat",
								["action"] = "call_action_list",
								["list_name"] = "owlweave",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Prowl whenever possible",
								["action"] = "prowl",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.down",
								["action"] = "tigers_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.down",
								["action"] = "cat_form",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "One shot stealth",
								["criteria"] = "buff.shadowmeld.up || buff.prowl.up",
								["list_name"] = "stealth",
							}, -- [6]
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "rip",
								["cycle_targets"] = 1,
								["criteria"] = "covenant.necrolord & spell_targets.thrash_cat = 1 & combo_points > 2 & refreshable & druid.rip.ticks_gained_on_refresh > variable.rip_ticks & ( ! buff.bs_inc.up || cooldown.bs_inc.up || ( buff.bs_inc.up & cooldown.feral_frenzy.up ) )",
								["description"] = "Necrolord: Cast 3 or 4 combo point rips on single target outside of berserk or during berserk if feral frenzy is up.",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= ( 5 - variable.fourcp_bite )",
								["action"] = "run_action_list",
								["list_name"] = "finisher",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "druid.primal_wrath.ticks_gained_on_refresh >= 20 & combo_points >= 2",
								["action"] = "primal_wrath",
								["line_cd"] = "5",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Multi-gcd stealth",
								["criteria"] = "buff.bs_inc.up || buff.sudden_ambush.up",
								["list_name"] = "stealth",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "wait",
								["sec"] = "( ( 115 - 23 * buff.incarnation_king_of_the_jungle.up ) - ( energy.current + 3.5 * energy.regen + ( 40 * buff.clearcasting.up ) ) ) / energy.regen",
								["description"] = "The most expensive BT cycle (Thresh Shred Swipe cost 115 energy, make sure we can make that in 4 globals)",
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & active_bt_triggers = 0",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "actions.default+=/pool_resource,if=talent.bloodtalons.enabled&buff.bloodtalons.down&(energy+3.5*energy.regen+(40*buff.clearcasting.up))<(115-23*buff.incarnation_king_of_the_jungle.up)&active_bt_triggers=0",
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down",
								["list_name"] = "bloodtalons",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.apex_predators_craving.up",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( refreshable || persistent_multiplier > dot.rake.pmultiplier ) & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable & druid.lunar_inspiration.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & druid.thrash_cat.ticks_gained_on_refresh > ( 4 + spell_targets.thrash_cat * 4 ) / ( 1 + mastery_value ) - conduit.taste_for_blood.enabled - covenant.necrolord",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > ( 1 + max_charges - charges_fractional ) * recharge_time ) & ( spell_targets.brutal_slash * action.brutal_slash.damage / action.brutal_slash.cost ) > ( action.shred.damage / action.shred.cost )",
								["action"] = "brutal_slash",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 + buff.bs_inc.up * 2",
								["action"] = "swipe_cat",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up",
								["action"] = "shred",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "buff.bs_inc.up & druid.rake.ticks_gained_on_refresh > 2",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [27]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "fourcp_bite",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["description"] = "Shred = 0, Non-snapshot Rake = 1, Snapshot Rake = 2, LI = 3, Swipe = 4",
								["var_name"] = "filler",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "7",
								["description"] = "Scale with haste.",
								["var_name"] = "rip_ticks",
							}, -- [3]
							{
								["action"] = "kindred_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "prowl",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "cat_form",
							}, -- [7]
						},
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( ! ticking || ( refreshable & persistent_multiplier > dot.rake.pmultiplier ) || ( active_bt_triggers = 2 & persistent_multiplier > dot.rake.pmultiplier ) || ( active_bt_triggers = 2 & refreshable ) ) & buff.bt_rake.down & druid.rake.ticks_gained_on_refresh >= 2",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable & buff.bt_moonfire.down",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & druid.thrash_cat.ticks_gained_on_refresh > ( 4 + spell_targets.thrash_cat * 4 ) / ( 1 + mastery_value ) - conduit.taste_for_blood.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down & spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [8]
						},
						["stealth"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["criteria"] = "( dot.rake.pmultiplier < 1.5 || refreshable ) & druid.rake.ticks_gained_on_refresh > 2 || buff.bs_inc.remains < 1",
								["description"] = "Rake needs roughly 50% of its length at a minimum to surpass shreds dpe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thrash_cat < 3 & refreshable & druid.lunar_inspiration.ticks_gained_on_refresh > 5 & ( combo_points = 4 || dot.lunar_inspiration.remains < 5 || ! dot.lunar_inspiration.ticking )",
								["action"] = "lunar_inspiration",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Brutal Slash is better than stealth Shred at 3 targets",
								["criteria"] = "spell_targets.brutal_slash > 2",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 4 & spell_targets.thrash_cat < 5",
								["action"] = "shred",
							}, -- [6]
						},
						["cooldown"] = {
							{
								[""] = "((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5",
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "feral_frenzy",
								["criteria"] = "combo_points < 3 & target.time_to_die > 7 & ! cooldown.tigers_fury.up || fight_remains < 8 & fight_remains > 2",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "TODO: Need to sync with with ravenous frenzy when we run frenzyband, or atleast check if its worth it",
								["criteria"] = "combo_points >= 3",
								["action"] = "berserk",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 3",
								["action"] = "incarnation",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Try and not waste TF energy, but also just use it for zerk and incarns",
								["criteria"] = "energy.deficit > 40 || buff.bs_inc.up || ( talent.predator.enabled & shortest_ttd < 3 )",
								["action"] = "tigers_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Might be wrong to use Smeld on Rake in very very niche situations, but very rarely",
								["criteria"] = "buff.tigers_fury.up & buff.bs_inc.down & combo_points < 4 & dot.rake.pmultiplier < 1.6 & energy > 40 & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2 & target.time_to_die > 5",
								["action"] = "shadowmeld",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up || buff.bs_inc.up",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up",
								["action"] = "potion",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || fight_remains < 21",
								["action"] = "ravenous_frenzy",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "TODO: Check moonkin hotw and stuff like this, and maybe better combat remain resync",
								["criteria"] = "( dot.rip.remains > 4 & combo_points < 3 & dot.rake.ticking & energy.deficit >= 20 ) || boss & fight_remains < 5",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Maybe there should be more conditions on the conduit",
								["criteria"] = "buff.tigers_fury.up || ( conduit.deep_allegiance.enabled )",
								["action"] = "empower_bond",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.heart_of_the_wild.up",
								["action"] = "starsurge",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "buff.moonkin_form.up & ( runeforge.cateye_curio.enabled || runeforge.draught_of_deep_focus.enabled ) & spell_targets.thrash_cat < 2 & ! talent.lunar_inspiration.enabled",
								["line_cd"] = "4*gcd",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "energy < 30 & dot.rip.remains > 4.5 & ( cooldown.tigers_fury.remains >= 6.5 || runeforge.cateye_curio.enabled ) & buff.clearcasting.stack < 1 & ! buff.apex_predators_craving.up & ! buff.bloodlust.up & ! buff.bs_inc.up & ( cooldown.convoke_the_spirits.remains > 6.5 || ! covenant.night_fae ) & ( ! covenant.necrolord || cooldown.adaptive_swarm.remains >= 5 || dot.adaptive_swarm_damage.remains > 7 )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "energy < 30 & dot.rip.remains > 4.5 & ( cooldown.tigers_fury.remains >= 4.5 || runeforge.cateye_curio.enabled ) & buff.clearcasting.stack < 1 & ! buff.apex_predators_craving.up & ! buff.bloodlust.up & ! buff.bs_inc.up & ( cooldown.convoke_the_spirits.remains > 6.5 || ! covenant.night_fae ) & ( ! covenant.necrolord || cooldown.adaptive_swarm.remains >= 5 || dot.adaptive_swarm_damage.remains > 7 )",
								["action"] = "moonkin_form",
							}, -- [5]
						},
					},
					["version"] = 20210403,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 20: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 22: Converted SimC syntax % to Lua division operator (/) (2x).\n\nWARNING:  The import for 'bloodtalons' required some automated changes.\nLine 3: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'owlweave' required some automated changes.\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nImported 9 action lists.\n",
					["profile"] = "## Feral Druid\n## April 2, 2021\n\n## Feral APL can also be found at https://gist.github.com/Xanzara/6896c8996f5afce5ce115daa3a08daff\n\n## Changes:\n## - druid.owlweave_cat=1 checks to druid.owlweave_cat.\n## - Convert BT pool_resource to wait expression.\n\nactions.precombat+=/variable,name=fourcp_bite,value=0\n# Shred = 0, Non-snapshot Rake = 1, Snapshot Rake = 2, LI = 3, Swipe = 4\nactions.precombat+=/variable,name=filler,value=0\n# Scale with haste.\nactions.precombat+=/variable,name=rip_ticks,value=7\nactions.precombat+=/kindred_spirits\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/prowl,if=buff.moonkin_form.down\nactions.precombat+=/cat_form,if=buff.moonkin_form.down\n\nactions=run_action_list,name=balance,if=buff.moonkin_form.up&!druid.owlweave_cat\nactions+=/call_action_list,name=owlweave,if=druid.owlweave_cat\n# Prowl whenever possible\nactions+=/prowl\nactions+=/tigers_fury,if=buff.cat_form.down\nactions+=/cat_form,if=buff.cat_form.down\n# One shot stealth\nactions+=/run_action_list,name=stealth,if=buff.shadowmeld.up||buff.prowl.up\nactions+=/skull_bash\nactions+=/call_action_list,name=cooldown\n# Necrolord: Cast 3 or 4 combo point rips on single target outside of berserk or during berserk if feral frenzy is up.\nactions+=/rip,cycle_targets=1,if=covenant.necrolord&spell_targets.thrash_cat=1&combo_points>2&refreshable&druid.rip.ticks_gained_on_refresh>variable.rip_ticks&(!buff.bs_inc.up||cooldown.bs_inc.up||(buff.bs_inc.up&cooldown.feral_frenzy.up))\nactions+=/run_action_list,name=finisher,if=combo_points>=(5-variable.fourcp_bite)\nactions+=/primal_wrath,if=druid.primal_wrath.ticks_gained_on_refresh>=20&combo_points>=2,line_cd=5\n# Multi-gcd stealth\nactions+=/call_action_list,name=stealth,if=buff.bs_inc.up||buff.sudden_ambush.up\n# The most expensive BT cycle (Thresh Shred Swipe cost 115 energy, make sure we can make that in 4 globals)\nactions+=/wait,sec=((115-23*buff.incarnation_king_of_the_jungle.up)-(energy.current+3.5*energy.regen+(40*buff.clearcasting.up)))/energy.regen,if=talent.bloodtalons.enabled&buff.bloodtalons.down&active_bt_triggers=0\n# actions+=/pool_resource,if=talent.bloodtalons.enabled&buff.bloodtalons.down&(energy+3.5*energy.regen+(40*buff.clearcasting.up))<(115-23*buff.incarnation_king_of_the_jungle.up)&active_bt_triggers=0\nactions+=/run_action_list,name=bloodtalons,if=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/ferocious_bite,cycle_targets=1,if=buff.apex_predators_craving.up\nactions+=/pool_resource,for_next=1\nactions+=/rake,cycle_targets=1,if=(refreshable||persistent_multiplier>dot.rake.pmultiplier)&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2\nactions+=/lunar_inspiration,cycle_targets=1,if=refreshable&druid.lunar_inspiration.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2\nactions+=/pool_resource,for_next=1\nactions+=/thrash_cat,cycle_targets=1,if=refreshable&druid.thrash_cat.ticks_gained_on_refresh>(4+spell_targets.thrash_cat*4)%(1+mastery_value)-conduit.taste_for_blood.enabled-covenant.necrolord\nactions+=/pool_resource,for_next=1\nactions+=/brutal_slash,if=(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time)&(spell_targets.brutal_slash*action.brutal_slash.damage%action.brutal_slash.cost)>(action.shred.damage%action.shred.cost)\nactions+=/swipe_cat,if=spell_targets.swipe_cat>1+buff.bs_inc.up*2\nactions+=/thrash_cat,if=spell_targets.thrash_cat>3\nactions+=/shred,if=buff.clearcasting.up\nactions+=/rake,cycle_targets=1,if=buff.bs_inc.up&druid.rake.ticks_gained_on_refresh>2\nactions+=/call_action_list,name=filler\n\nactions.bloodtalons=rake,cycle_targets=1,if=(!ticking||(refreshable&persistent_multiplier>dot.rake.pmultiplier)||(active_bt_triggers=2&persistent_multiplier>dot.rake.pmultiplier)||(active_bt_triggers=2&refreshable))&buff.bt_rake.down&druid.rake.ticks_gained_on_refresh>=2\nactions.bloodtalons+=/lunar_inspiration,cycle_targets=1,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&druid.thrash_cat.ticks_gained_on_refresh>(4+spell_targets.thrash_cat*4)%(1+mastery_value)-conduit.taste_for_blood.enabled\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down&spell_targets.swipe_cat>1\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\n\nactions.cooldown=adaptive_swarm,cycle_targets=1,=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\nactions.cooldown+=/feral_frenzy,cycle_targets=1,if=combo_points<3&target.time_to_die>7&!cooldown.tigers_fury.up||fight_remains<8&fight_remains>2\n# TODO: Need to sync with with ravenous frenzy when we run frenzyband, or atleast check if its worth it\nactions.cooldown+=/berserk,if=combo_points>=3\nactions.cooldown+=/incarnation,if=combo_points>=3\n# Try and not waste TF energy, but also just use it for zerk and incarns\nactions.cooldown+=/tigers_fury,if=energy.deficit>40||buff.bs_inc.up||(talent.predator.enabled&shortest_ttd<3)\n# Might be wrong to use Smeld on Rake in very very niche situations, but very rarely\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/berserking,if=buff.tigers_fury.up||buff.bs_inc.up\nactions.cooldown+=/potion,if=buff.bs_inc.up\nactions.cooldown+=/ravenous_frenzy,if=buff.bs_inc.up||fight_remains<21\n# TODO: Check moonkin hotw and stuff like this, and maybe better combat remain resync\nactions.cooldown+=/convoke_the_spirits,if=(dot.rip.remains>4&combo_points<3&dot.rake.ticking&energy.deficit>=20)||boss&fight_remains<5\n# Maybe there should be more conditions on the conduit\nactions.cooldown+=/empower_bond,if=buff.tigers_fury.up||(conduit.deep_allegiance.enabled)\nactions.cooldown+=/use_items\n\nactions.filler=rake,cycle_targets=1,if=variable.filler=1&refreshable&dot.rake.pmultiplier<=persistent_multiplier\nactions.filler+=/rake,if=variable.filler=2\nactions.filler+=/lunar_inspiration,if=variable.filler=3\nactions.filler+=/swipe,if=variable.filler=4\nactions.filler+=/shred\n\nactions.finisher=savage_roar,if=buff.savage_roar.remains<3\nactions.finisher+=/primal_wrath,if=(druid.primal_wrath.ticks_gained_on_refresh>3*(spell_targets.primal_wrath+1)&spell_targets.primal_wrath>1)||spell_targets.primal_wrath>(3+1*talent.sabertooth.enabled)\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&druid.rip.ticks_gained_on_refresh>variable.rip_ticks&((buff.tigers_fury.up||cooldown.tigers_fury.remains>5)&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rip.pmultiplier<=persistent_multiplier||!talent.sabertooth.enabled)\nactions.finisher+=/savage_roar,if=buff.savage_roar.remains<(combo_points+1)*6*0.3\nactions.finisher+=/ferocious_bite,max_energy=1,cycle_targets=1\nactions.finisher+=/ferocious_bite,cycle_targets=1,if=buff.bs_inc.up&talent.soul_of_the_forest.enabled\n\nactions.owlweave=starsurge,if=buff.heart_of_the_wild.up\nactions.owlweave+=/sunfire,line_cd=4*gcd\nactions.owlweave+=/moonfire,line_cd=4*gcd,if=buff.moonkin_form.up&(runeforge.cateye_curio||runeforge.draught_of_deep_focus)&spell_targets.thrash_cat<2&!talent.lunar_inspiration.enabled\nactions.owlweave+=/heart_of_the_wild,if=energy<30&dot.rip.remains>4.5&(cooldown.tigers_fury.remains>=6.5||runeforge.cateye_curio)&buff.clearcasting.stack<1&!buff.apex_predators_craving.up&!buff.bloodlust.up&!buff.bs_inc.up&(cooldown.convoke_the_spirits.remains>6.5||!covenant.night_fae)&(!covenant.necrolord||cooldown.adaptive_swarm.remains>=5||dot.adaptive_swarm_damage.remains>7)\nactions.owlweave+=/moonkin_form,if=energy<30&dot.rip.remains>4.5&(cooldown.tigers_fury.remains>=4.5||runeforge.cateye_curio)&buff.clearcasting.stack<1&!buff.apex_predators_craving.up&!buff.bloodlust.up&!buff.bs_inc.up&(cooldown.convoke_the_spirits.remains>6.5||!covenant.night_fae)&(!covenant.necrolord||cooldown.adaptive_swarm.remains>=5||dot.adaptive_swarm_damage.remains>7)\n\nactions.stealth=pool_resource,for_next=1\n# Rake needs roughly 50% of its length at a minimum to surpass shreds dpe\nactions.stealth+=/rake,cycle_targets=1,if=(dot.rake.pmultiplier<1.5||refreshable)&druid.rake.ticks_gained_on_refresh>2||buff.bs_inc.remains<1\nactions.stealth+=/lunar_inspiration,if=spell_targets.thrash_cat<3&refreshable&druid.lunar_inspiration.ticks_gained_on_refresh>5&(combo_points=4||dot.lunar_inspiration.remains<5||!dot.lunar_inspiration.ticking)\n# Brutal Slash is better than stealth Shred at 3 targets\nactions.stealth+=/brutal_slash,if=spell_targets.brutal_slash>2\nactions.stealth+=/pool_resource,for_next=1\nactions.stealth+=/shred,if=combo_points<4&spell_targets.thrash_cat<5\n\nactions.balance=sunfire,if=buff.eclipse_solar.down&buff.eclipse_lunar.down&(refreshable||(active_enemies>1&active_dot.sunfire<active_enemies))\nactions.balance+=/starsurge,if=buff.eclipse_solar.remains>cast_time||buff.eclipse_lunar.remains>cast_time\nactions.balance+=/starfire,if=buff.eclipse_lunar.remains>cast_time||solar_eclipse>0\nactions.balance+=/wrath,if=buff.eclipse_solar.remains>cast_time||lunar_eclipse>0",
					["spec"] = 103,
				},
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210502,
					["author"] = "SimC",
					["desc"] = "Balance Druid\nMay 2, 2021\n\nChanges:\n- Added Solar Beam.\n- Changed target_if cases to cycle_targets.\n- Removed unnecessary variables (i.e., prev_starsurge -> prev.starsurge).\n- Avoid precasting Wrath if it's the wrong Eclipse.\n- Make Convoke the Spirits a little more flexible (if you hadn't hit it simultaneously with BOAT + Celestial Alignment, it'd skip).\n- Make most 'fight_remains' scenarios apply to boss fights only.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1 & ( ! talent.starlord.enabled || talent.stellar_drift.enabled ) || spell_targets.starfall > 2",
								["description"] = "Sets AoE on 3+ without drift and with Starlord and 2+ otherwise",
								["var_name"] = "is_aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 1",
								["description"] = "Sets cleave when Starfire can hit 2+ targets which is relevant for the Eclipse to be preferred and which filler to cast",
								["var_name"] = "is_cleave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! covenant.night_fae || ! cooldown.convoke_the_spirits.up ) & buff.ca_inc.remains > 15",
								["action"] = "berserking",
								["description"] = "Use Berserking with CA/Inc or after Convoke in CA/Inc",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "buff.ca_inc.remains > 15 || boss & fight_remains < 25",
								["description"] = "Pot with a CA/Inc that isn't a Pulsar proc or when the fight is about to end",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "ceil ( ( interpolated_fight_remains - 15 - cooldown.ca_inc.remains ) / 180 ) = ceil ( ( interpolated_fight_remains - 15 - 120 - cooldown.convoke_the_spirits.remains ) / 180 ) & ! raid_event.adds.exists || cooldown.ca_inc.remains > interpolated_fight_remains || cooldown.convoke_the_spirits.remains > interpolated_fight_remains - 10 || ! covenant.night_fae || action.convoke_the_spirits.disabled",
								["description"] = "Calculates whether using Convoke now will allow you to still cast the same amount of Convoke+CA/Inc casts",
								["var_name"] = "convoke_desync",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( target.time_to_die > 15 || raid_event.adds.in > 50 ) & ( ( ! equipped.empyreal_ordnance || cooldown.empyreal_ordnance.remains < 160 & ! cooldown.empyreal_ordnance.ready ) & ( ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & ( trinket.t1.ready_cooldown || trinket.t1.cooldown.remains > interpolated_fight_remains - 10 ) || variable.on_use_trinket = 2 & ( trinket.t2.ready_cooldown || trinket.t2.cooldown.remains > interpolated_fight_remains - 10 ) || variable.on_use_trinket = 0 ) || covenant.kyrian )",
								["description"] = "Used to delay the usage of CA/Inc when using double on use and prevent usage when an add event is about to die",
								["var_name"] = "cd_condition",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "empyreal_ordnance",
								["description"] = "Use Empyreal Ordnance 20secs before a CA/Inc use.",
								["criteria"] = "cooldown.ca_inc.remains < 20 & cooldown.convoke_the_spirits.remains < 20 || boss & fight_remains < 37",
								["action"] = "empyreal_ordnance",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "soulletting_ruby",
								["description"] = "Use Soulleting Ruby 6secs before a CA/Inc use.",
								["criteria"] = "cooldown.ca_inc.remains < 6 & ! variable.convoke_desync || cooldown.convoke_the_spirits.remains < 6 & variable.convoke_desync || boss & fight_remains < 25",
								["action"] = "soulletting_ruby",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "buff.ca_inc.remains > 15",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket = 2 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & ( buff.ca_inc.up || cooldown.ca_inc.remains + 2 > trinket.t1.cooldown.duration & ( ! covenant.night_fae || ! variable.convoke_desync ) & ! covenant.kyrian || covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.up & ! cooldown.ca_inc.up & ( ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) & ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 5 || buff.balance_of_all_things_arcane.stack = 5 ) ) || buff.kindred_empowerment_energize.up ) || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["action"] = "trinket1",
								["description"] = "This is a rather elaborate way to make all on use stat trinkets to be lined up with CA/Inc and Convoke and use the 2nd slot on cd if both trinkets are on use stat trinkets",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & ( buff.ca_inc.up || cooldown.ca_inc.remains + 2 > trinket.t2.cooldown.duration & ( ! covenant.night_fae || ! variable.convoke_desync ) & ! covenant.kyrian || covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.up & ! cooldown.ca_inc.up & ( ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) & ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 5 || buff.balance_of_all_things_arcane.stack = 5 ) ) ) || buff.kindred_empowerment_energize.up || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["action"] = "trinket2",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.up & ! cooldown.ca_inc.up & ( ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) & ! runeforge.balance_of_all_things.enabled || runeforge.balance_of_all_things.enabled & ( buff.balance_of_all_things_nature.stack > 3 || buff.balance_of_all_things_arcane.stack > 3 ) ) || buff.kindred_empowerment_energize.up || boss & fight_remains < 20",
								["action"] = "use_items",
								["description"] = "Uses all other on use items on cd",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Decide action list based on situation/legis",
								["strict"] = 1,
								["criteria"] = "variable.is_aoe",
								["list_name"] = "aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "runeforge.balance_of_all_things.equipped",
								["list_name"] = "boat",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [16]
						},
						["boat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains > 15",
								["action"] = "ravenous_frenzy",
								["description"] = "Frenzy with CA/Inc",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! buff.balance_of_all_things_nature.up & ! buff.balance_of_all_things_arcane.up",
								["description"] = "Checks if the BoAT crit buff is not up for later use",
								["var_name"] = "critnotup",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
								["criteria"] = "buff.balance_of_all_things_nature.stack < 4 & buff.balance_of_all_things_arcane.stack < 4 & ( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["description"] = "Use Adaptive Swarm when at less than 4 BoAT stacks and to refresh a <=2 stack as late as possible or time it so it arrives just after a 3+ stack expires",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( variable.convoke_desync & ! cooldown.ca_inc.ready || buff.ca_inc.up ) & ( buff.balance_of_all_things_nature.stack = 5 || buff.balance_of_all_things_arcane.stack = 5 ) || boss & fight_remains < 10",
								["action"] = "convoke_the_spirits",
								["description"] = "Use Convoke with CA/Inc when possible and otherwise with a BoAT buff when desyncing",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.balance_of_all_things_nature.stack > 4 || buff.balance_of_all_things_arcane.stack > 4 ) & ( druid.no_cds || cooldown.ca_inc.remains > 50 || ( covenant.night_fae & cooldown.convoke_the_spirits.remains > 50 ) ) ) || ( dot.adaptive_swarm_damage.remains > 8 & cooldown.ca_inc.remains > 10 & covenant.necrolord ) || interpolated_fight_remains < 8 & ! cooldown.ca_inc.ready || ( covenant.kyrian & buff.kindred_empowerment.up )",
								["action"] = "fury_of_elune",
								["description"] = "FoE as the first gcd in the a BoAT window or with the Kyrian buff or with a 8+sec Adaptive Swarm and wait for CA/Inc if it wont be up again before the cd is finished",
							}, -- [5]
							{
								["buff_name"] = "starlord",
								["criteria"] = "( buff.balance_of_all_things_nature.remains > 4.5 || buff.balance_of_all_things_arcane.remains > 4.5 ) & ( cooldown.ca_inc.remains > 7 || ( cooldown.empower_bond.remains > 7 & ! buff.kindred_empowerment_energize.up & covenant.kyrian ) ) & astral_power >= 30",
								["action"] = "cancel_buff",
								["enabled"] = true,
								["description"] = "Cancel Starlord with a new BoAT buff and CA/Inc isn't about to be used",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.stellar_drift.enabled & settings.solo_drift & buff.starfall.down",
								["action"] = "starfall",
								["description"] = "Dump Starsurges with a BoAT buff but not when pooling for CA/Inc or Kindred Spirits",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.critnotup & ( covenant.night_fae || cooldown.ca_inc.remains > 7 || ! variable.cd_condition & ! covenant.kyrian || ( cooldown.empower_bond.remains > 7 & ! buff.kindred_empowerment_energize.up & covenant.kyrian ) ) & ( ! dot.fury_of_elune.ticking || ! cooldown.ca_inc.ready || ! cooldown.convoke_the_spirits.ready )",
								["action"] = "starsurge",
								["description"] = "Dump Starsurges with the boat buff but not when pooling for ca or empower bond",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.convoke_the_spirits.remains < 5 & ! druid.no_cds & ( variable.convoke_desync || cooldown.ca_inc.remains < 5 ) & variable.cd_condition ) & ! dot.fury_of_elune.ticking & covenant.night_fae & ! druid.no_cds & eclipse.in_any",
								["action"] = "starsurge",
								["description"] = "Dump Starsurges before Convoke",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( buff.ravenous_frenzy.remains > 5 || ! buff.ravenous_frenzy.up ) & ( buff.kindred_empowerment_energize.remains < gcd.max ) & ( buff.eclipse_solar.remains > gcd.max || buff.eclipse_lunar.remains > gcd.max )",
								["description"] = "Don't dot during the end of Ravenous Frenzy, during kindred empowerment or in the last gcd of an Eclipse",
								["var_name"] = "dot_requirements",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 16 & ap_check & variable.dot_requirements",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & target.time_to_die > 13.5 & ap_check & variable.dot_requirements",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & target.time_to_die > 16 + remains & ap_check & variable.dot_requirements",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "force_of_nature",
								["description"] = "FoN on cd without capping",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.lunar_next || eclipse.solar_next || eclipse.any_next || buff.balance_of_all_things_nature.remains > 4.5 || buff.balance_of_all_things_arcane.remains > 4.5 || astral_power > 90 & cooldown.ca_inc.ready & ! druid.no_cds ) & ( cooldown.ca_inc.remains > 30 || cooldown.ca_inc.ready ) || boss & interpolated_fight_remains < 10",
								["action"] = "empower_bond",
								["description"] = "Empower Bond when about to enter a new BoAT window and save for CA/Inc",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.ready & variable.cd_condition & ( astral_power > 90 & ! covenant.night_fae || covenant.night_fae & astral_power < 40 ) & ( ! covenant.night_fae || cooldown.convoke_the_spirits.ready ) & ! druid.no_cds",
								["action"] = "fury_of_elune",
								["description"] = "FoE right before using CA",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( ( astral_power > 90 & ( buff.kindred_empowerment_energize.up || ! covenant.kyrian ) || buff.bloodlust.up & buff.bloodlust.remains < 20 + ( conduit.precise_alignment.time_value ) ) || boss & interpolated_fight_remains < 20 + ( conduit.precise_alignment.time_value ) || covenant.night_fae ) & ( ! covenant.night_fae || ( astral_power < 40 || dot.fury_of_elune.ticking ) & ( variable.convoke_desync || cooldown.convoke_the_spirits.ready ) )",
								["action"] = "celestial_alignment",
								["description"] = "CA/Inc when at 90+ AsP (orlower than 40 AsP with Convoke) without losing time in Bloodlust and line up with Convoke if it was desynced",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( ( astral_power > 90 & ( buff.kindred_empowerment_energize.up || ! covenant.kyrian ) || buff.bloodlust.up & buff.bloodlust.remains < 30 + ( conduit.precise_alignment.time_value ) ) || boss & interpolated_fight_remains < 30 + ( conduit.precise_alignment.time_value ) || covenant.night_fae ) & ( ! covenant.night_fae || ( astral_power < 40 || dot.fury_of_elune.ticking ) & ( variable.convoke_desync || cooldown.convoke_the_spirits.ready ) )",
								["action"] = "incarnation",
							}, -- [18]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.in_lunar * 8 / action.starfire.execute_time + ! eclipse.in_lunar * ( 6 + talent.soul_of_the_forest.enabled * 3 ) / action.wrath.execute_time + 0.2 / spell_haste",
								["description"] = "Estimates how much AsP are gained per second",
								["var_name"] = "aspPerSec",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( boss & interpolated_fight_remains < 4 || ( buff.ravenous_frenzy.remains < gcd.max * ceil ( astral_power / 30 ) & buff.ravenous_frenzy.up ) ) || ( astral_power + variable.aspPerSec * buff.eclipse_solar.remains + dot.fury_of_elune.ticks_remain * 2.5 > 110 || astral_power + variable.aspPerSec * buff.eclipse_lunar.remains + dot.fury_of_elune.ticks_remain * 2.5 > 110 ) & eclipse.in_any & ( ! buff.ca_inc.up || ! talent.starlord.enabled ) & ( ( ! cooldown.ca_inc.up || covenant.kyrian & ! cooldown.empower_bond.up ) || covenant.night_fae ) & ( ! covenant.venthyr || ! buff.ca_inc.up || astral_power > 90 ) || ( talent.starlord.enabled & buff.ca_inc.up & ( buff.starlord.stack < 3 || astral_power > 90 ) ) || buff.ca_inc.up & ! buff.ravenous_frenzy.up & ! talent.starlord.enabled",
								["action"] = "starsurge",
								["description"] = "Dump Starsurges when the fight is about to end, frenzy is about to end, you are at 90+ AsP in an Eclipse, CA/Inc lasts another 8+secs or you would overcap more than ~10 AsP when you wouldn't Starsurge now",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "new_moon",
								["description"] = "Use Moons in Lunar Eclipse and save Half+Full Moon for CA/Inc",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time & ( cooldown.ca_inc.remains > 50 || cooldown.convoke_the_spirits.remains > 50 ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "half_moon",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time & ( cooldown.ca_inc.remains > 50 || cooldown.convoke_the_spirits.remains > 50 ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "full_moon",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "WoE on cd",
								["action"] = "warrior_of_elune",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_lunar || eclipse.solar_next || eclipse.any_next || buff.warrior_of_elune.up & buff.eclipse_lunar.up || ( buff.ca_inc.remains < action.wrath.execute_time & buff.ca_inc.up )",
								["action"] = "starfire",
								["description"] = "Use Starfire to proc Solar Eclipse or when in only Lunar Eclipse and use WoE procs if in Lunar Eclipse",
							}, -- [25]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [27]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( buff.timeworn_dreambinder.remains < gcd.max + 0.1 || buff.timeworn_dreambinder.remains < action.starfire.execute_time + 0.1 & ( eclipse.in_lunar || eclipse.solar_next || eclipse.any_next ) ) & buff.timeworn_dreambinder.up & runeforge.timeworn_dreambinder.equipped",
								["description"] = "Calculates whether the Dreamcatcher buff will fall off within the next cast",
								["var_name"] = "dream_will_fall_off",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! eclipse.in_solar & ( spell_targets.starfire > 5 & talent.soul_of_the_forest.enabled || spell_targets.starfire > 7 )",
								["description"] = "Calculates whether Starsurge is worth casting over Starfire in Lunar Eclipse",
								["var_name"] = "ignore_starsurge",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & ( ( variable.convoke_desync & ! cooldown.ca_inc.ready || buff.ca_inc.up ) & ( astral_power < 50 || variable.ignore_starsurge ) & ( buff.eclipse_lunar.remains > 6 || buff.eclipse_solar.remains > 6 ) & ( ! runeforge.balance_of_all_things.enabled || buff.balance_of_all_things_nature.stack > 3 || buff.balance_of_all_things_arcane.stack > 3 ) || fight_remains < 10 & ! cooldown.ca_inc.ready )",
								["action"] = "convoke_the_spirits",
								["description"] = "Use Convoke when at less than 50 AsP and line up with CA/Inc",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains > 15",
								["action"] = "ravenous_frenzy",
								["description"] = "Use Frenzy with CA/Inc",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["cycle_targets"] = 1,
								["criteria"] = "( refreshable || buff.eclipse_solar.remains < 3 & eclipse.in_solar & remains < 14 & talent.soul_of_the_forest.enabled ) & target.time_to_die > 14 - spell_targets + remains & ( eclipse.in_any || remains < gcd.max )",
								["description"] = "Use Sunfire in pandemic on anything that lives 14secs and less with more targets and at the end of a Solar Eclipse at 14 secs or less remaining as to not having to refresh during Lunar Eclipse",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.starfall.refreshable & ( spell_targets.starfall < 3 || ! runeforge.timeworn_dreambinder.equipped ) || talent.soul_of_the_forest.enabled & buff.eclipse_solar.remains < 3 & eclipse.in_solar & buff.starfall.remains < 7 & spell_targets.starfall >= 4 ) & ( ! runeforge.lycaras_fleeting_glimpse.equipped || time % 45 > buff.starfall.remains + 2 ) & target.time_to_die > 5",
								["action"] = "starfall",
								["description"] = "Keep up Starfall at all times unless using Lycaras and it is about to proc or let the special action line below handle Dreambinder on 2 targets",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.timeworn_dreambinder.equipped & spell_targets.starfall >= 3 & ( ! buff.timeworn_dreambinder.up & buff.starfall.refreshable || ( variable.dream_will_fall_off & ( buff.starfall.remains < 3 || spell_targets.starfall > 2 & talent.stellar_drift.enabled & buff.starfall.remains < 5 ) ) )",
								["action"] = "starfall",
								["description"] = "With Dreambinder use Starfall to keep up the buff by also using Starfall on 5 seconds or less remaining",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "astral_power > 80 - ( 10 * buff.timeworn_dreambinder.stack ) - ( buff.starfall.remains * 3 / spell_haste ) - ( dot.fury_of_elune.remains * 5 ) & buff.starfall.up",
								["description"] = "Calculates whether a Starsurge use will cause Starfall to fall off, and use Starsurge to keep Dreambinder stack up",
								["var_name"] = "starfall_wont_fall_off",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.dream_will_fall_off & variable.starfall_wont_fall_off & ! variable.ignore_starsurge || ( buff.balance_of_all_things_nature.stack > 3 || buff.balance_of_all_things_arcane.stack > 3 ) & spell_targets.starfall < 4 & variable.starfall_wont_fall_off",
								["action"] = "starsurge",
								["description"] = "Use Starsurge with Dreambinder to keep up the buff without losing Starfall uptime and use Starsurge on 4+ BoAT stacks until 4 targets",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
								["criteria"] = "! ticking & ! action.adaptive_swarm_damage.in_flight || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 3",
								["description"] = "Use swarm so that you get max uptime by using it as late as possible on less than 3 stacks or just when 3+ stacks expire",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & target.time_to_die > ( ( 14 + ( spell_targets.starfire * 2 * buff.eclipse_lunar.up ) ) + remains ) / ( 1 + talent.twin_moons.enabled ) & ( cooldown.ca_inc.ready & ! druid.no_cds & ( variable.convoke_desync || cooldown.convoke_the_spirits.ready || ! covenant.night_fae ) || spell_targets.starfire < ( ( 6 - ( buff.eclipse_lunar.up * 2 ) ) * ( 1 + talent.twin_moons.enabled ) ) & ! eclipse.solar_next || ( eclipse.in_solar || ( eclipse.in_both || eclipse.in_lunar ) & ! talent.soul_of_the_forest.enabled || buff.primordial_arcanic_pulsar.value >= 250 ) & ( spell_targets.starfire < 10 * ( 1 + talent.twin_moons.enabled ) ) & astral_power > 50 - buff.starfall.remains * 6 ) & ( ! buff.kindred_empowerment_energize.up || eclipse.in_solar || ! covenant.kyrian )",
								["description"] = "Refresh Moonfire if CA/Inc is ready, there are less than 5 targets in Lunar Eclipse with SotF, less than 10 otherwise in any Eclipse or up to 5 targets before a Lunar Eclipse. Don't refresh during Kindred Empowerment unless in Solar Eclipse",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "force_of_nature",
								["description"] = "Use FoN on cd without capping",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( buff.starfall.up || astral_power > 50 ) & ( ! buff.solstice.up & ! buff.ca_inc.up & ( ! covenant.night_fae || cooldown.convoke_the_spirits.up & astral_power < 50 ) & target.time_to_die > 15 + conduit.precise_alignment.time_value || boss & interpolated_fight_remains < 20 + conduit.precise_alignment.time_value )",
								["action"] = "celestial_alignment",
								["description"] = "Use CA/Inc on cd unless and line it up with Convoke",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( buff.starfall.up || astral_power > 50 ) & ( ! buff.solstice.up & ! buff.ca_inc.up & ( ! covenant.night_fae || cooldown.convoke_the_spirits.up & astral_power < 50 ) & target.time_to_die > 20 + conduit.precise_alignment.time_value || boss & interpolated_fight_remains < 30 + conduit.precise_alignment.time_value )",
								["action"] = "incarnation",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "boss & interpolated_fight_remains < 15 || ( buff.primordial_arcanic_pulsar.value < 250 || buff.primordial_arcanic_pulsar.value >= 250 ) & buff.starfall.up & ( cooldown.ca_inc.remains > 50 || druid.no_cds )",
								["action"] = "empower_bond",
								["description"] = "Use Empower Bond on cd with Starfall up and save for Pulsar and CA/Inc",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & time_to_die > 15 & spell_targets.starfire < 4 & ap_check & ( buff.ca_inc.remains > 10 || ! buff.ca_inc.up )",
								["description"] = "Refresh flare on up to 3 targets without CA/Inc being about to expire and not overcapping",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_any & ap_check & buff.primordial_arcanic_pulsar.value < 250 & ( dot.adaptive_swarm_damage.ticking || ! covenant.necrolord || spell_targets > 2 )",
								["action"] = "fury_of_elune",
								["description"] = "Use FoE if inside an Eclipse and line it up with a Pulsar proc and Adaptive Swarm",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.oneths_perception.up & ( buff.starfall.refreshable || astral_power > 90 )",
								["action"] = "starfall",
								["description"] = "Use a Starfall Oneth proc unless Starfall is already up or you are about to overcap AsP",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & ( variable.convoke_desync || cooldown.ca_inc.up || buff.ca_inc.up ) & cooldown.convoke_the_spirits.remains < gcd.max * ceil ( astral_power / 50 ) & buff.starfall.remains < 4 & ! druid.no_cds",
								["action"] = "starfall",
								["description"] = "Dump AsP before Convoke with Starfall and then Starsurge",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & ( variable.convoke_desync || cooldown.ca_inc.up || buff.ca_inc.up ) & cooldown.convoke_the_spirits.remains < 6 & buff.starfall.up & eclipse.in_any & ! variable.ignore_starsurge & ! druid.no_cds",
								["action"] = "starsurge",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.oneths_clear_vision.up || ( ! starfire.ap_check & ! variable.ignore_starsurge || ( buff.ca_inc.remains < 5 & buff.ca_inc.up || ( buff.ravenous_frenzy.remains < gcd.max * ceil ( astral_power / 30 ) & buff.ravenous_frenzy.up ) ) & variable.starfall_wont_fall_off & spell_targets.starfall < 3 ) & ( ! runeforge.timeworn_dreambinder.equipped || spell_targets.starfall < 3 )",
								["action"] = "starsurge",
								["description"] = "Use Starsurge with an Oneth proc or if you'd overcap AsP with your next cast. Also dumps AsP at the end of the Venthyr buff if Starfall wouldn't fall off on 4 or less targets",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "new_moon",
								["description"] = "Use Moons in Solar Eclipse and save Full Moon for CA/Inc",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "half_moon",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > execute_time & ( cooldown.ca_inc.remains > 50 || cooldown.convoke_the_spirits.remains > 50 ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "full_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use WoE on CD",
								["action"] = "warrior_of_elune",
							}, -- [25]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 4 + floor ( mastery_value * 100 / 20 ) + floor ( buff.starsurge_empowerment_solar.stack / 4 )",
								["description"] = "Calculates whether to use Starfire in Solar which is at 5 targets+1 for every 20% mastery or 4 Starsurge Empowerment stacks",
								["var_name"] = "starfire_in_solar",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.lunar_next || eclipse.any_next & variable.is_cleave ) & ( target.time_to_die > 4 || eclipse.lunar_in_2 || fight_remains < 10 ) || buff.eclipse_solar.remains < action.starfire.execute_time & buff.eclipse_solar.up || eclipse.in_solar & ! variable.starfire_in_solar || buff.ca_inc.remains < action.starfire.execute_time & ! variable.is_cleave & buff.ca_inc.remains < execute_time & buff.ca_inc.up || buff.ravenous_frenzy.up & spell_haste > 0.6 & ( spell_targets <= 3 || ! talent.soul_of_the_forest.enabled ) || ! variable.is_cleave & buff.ca_inc.remains > execute_time",
								["action"] = "wrath",
								["description"] = "Use Wrath in Solar Eclipse or if no Starfire will fit into CA/Inc anymore",
							}, -- [27]
							{
								["enabled"] = true,
								["description"] = "Use Starfire if in Lunar Eclipse, in Solar Eclipse on 4+ targets or to proc Solar Eclipse",
								["action"] = "starfire",
							}, -- [28]
							{
								["enabled"] = true,
								["description"] = "Fallthru",
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [29]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.balance_of_all_things.equipped",
								["action"] = "starsurge",
								["description"] = "Starsurge for movement unless using BoAT",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["cycle_targets"] = 1,
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
								["description"] = "Cast the dot with the most time to add until the max duration is hit. Sunfire remains multiplied to match moonfire duration",
							}, -- [2]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [3]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains > 15",
								["action"] = "ravenous_frenzy",
								["description"] = "Use the Venthyr with a CA/Inc that isn't from Pulsar",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.timeworn_dreambinder.equipped & ( eclipse.in_any & ! ( ( buff.timeworn_dreambinder.remains > action.wrath.execute_time + 0.1 & ( eclipse.in_both || eclipse.in_solar || eclipse.lunar_next ) || buff.timeworn_dreambinder.remains > action.starfire.execute_time + 0.1 & ( eclipse.in_lunar || eclipse.solar_next || eclipse.any_next ) ) || ! buff.timeworn_dreambinder.up ) || ( buff.ca_inc.up || variable.convoke_desync ) & cooldown.convoke_the_spirits.ready & covenant.night_fae ) & ( ! covenant.kyrian || cooldown.empower_bond.remains > 8 ) & ( buff.ca_inc.up || ! cooldown.ca_inc.ready )",
								["action"] = "starsurge",
								["description"] = "Use Starsurge to keep up the Dreambinder buff if it would expire before finishing the next cast or to dump before Convoke",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
								["criteria"] = "! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 5 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 3 & dot.adaptive_swarm_damage.ticking",
								["description"] = "Use Adaptive Swarm when there is no active swarm, as late as possible on swarm with 2 or fewer stacks or on a 3+ swarm so that the new swarm arrives just after that swarm expires",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & ( ( variable.convoke_desync & ! cooldown.ca_inc.ready & ! runeforge.primordial_arcanic_pulsar.enabled || buff.ca_inc.up ) & astral_power < 40 & ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) || fight_remains < 10 & ! cooldown.ca_inc.ready )",
								["action"] = "convoke_the_spirits",
								["description"] = "Uses Convoke if CA/Inc is up or you are desyncing CA/Inc with Convoke and you are below 40 AsP",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( buff.ravenous_frenzy.remains > 5 || ! buff.ravenous_frenzy.up ) & ( buff.kindred_empowerment_energize.remains < gcd.max ) & ( buff.eclipse_solar.remains > gcd.max || buff.eclipse_lunar.remains > gcd.max )",
								["description"] = "Condition for all dots that makes sure they aren't refreshed when Ravenous Frenzy has less than 5 secs remaining or the kyrian buff is about to fall off or any Eclipse is about to expire",
								["var_name"] = "dot_requirements",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & target.time_to_die > 12 & ( ap_check & variable.dot_requirements )",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 12 & ( ap_check & variable.dot_requirements )",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & target.time_to_die > 16 & ( ap_check & variable.dot_requirements )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "force_of_nature",
								["description"] = "Use FoN on cd without capping",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.eclipse_solar.remains > 10 || buff.eclipse_lunar.remains > 10 ) & cooldown.ca_inc.remains > 30 & ( buff.primordial_arcanic_pulsar.value < 240 || ! runeforge.primordial_arcanic_pulsar.equipped ) ) || buff.primordial_arcanic_pulsar.value >= 270 || cooldown.ca_inc.ready & astral_power > 90",
								["action"] = "empower_bond",
								["description"] = "Use Kindred Spirits with any long enough lasting Eclipse and try to line it up with Pulsar and CA/Inc",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( astral_power > 90 & ( buff.kindred_empowerment_energize.up || ! covenant.kyrian ) || covenant.night_fae || buff.bloodlust.up & buff.bloodlust.remains < 20 + ( ( 9 * runeforge.primordial_arcanic_pulsar.equipped ) + ( conduit.precise_alignment.time_value ) ) ) & ! buff.ca_inc.up & ( ! covenant.night_fae || cooldown.convoke_the_spirits.up || boss & interpolated_fight_remains < cooldown.convoke_the_spirits.remains + 6 || interpolated_fight_remains % 180 < 20 + ( conduit.precise_alignment.time_value ) )",
								["action"] = "celestial_alignment",
								["description"] = "Use CA/Inc with Convoke/Kindred Spirits and don't overwrite Pulsar or when Bloodlust would expire before CA/Inc expires",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & variable.cd_condition & ( astral_power > 90 & ( buff.kindred_empowerment_energize.up || ! covenant.kyrian ) || covenant.night_fae || buff.bloodlust.up & buff.bloodlust.remains < 30 + ( ( 9 * runeforge.primordial_arcanic_pulsar.equipped ) + ( conduit.precise_alignment.time_value ) ) ) & ! buff.ca_inc.up & ( ! covenant.night_fae || cooldown.convoke_the_spirits.up || boss & interpolated_fight_remains < cooldown.convoke_the_spirits.remains + 6 || interpolated_fight_remains % 180 < 30 + ( conduit.precise_alignment.time_value ) )",
								["action"] = "incarnation",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! cooldown.ca_inc.ready || ! variable.convoke_desync & covenant.night_fae || druid.no_cds",
								["description"] = "Variable used on abilities that want to be saved for CA/Inc so that they arent wasted just before them",
								["var_name"] = "save_for_ca_inc",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_any & ap_check & buff.primordial_arcanic_pulsar.value < 240 & ( dot.adaptive_swarm_damage.ticking || ! covenant.necrolord ) & variable.save_for_ca_inc",
								["action"] = "fury_of_elune",
								["description"] = "Uses FoE if in an Eclipse and tries to line it up with Pulsar, CA/Inc and Adaptive Swarm",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.oneths_perception.up & buff.starfall.refreshable",
								["action"] = "starfall",
								["description"] = "Use Oneth Starfall procs if Starfall isn't up",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 5 & ( buff.eclipse_solar.remains > 5 || buff.eclipse_lunar.remains > 5 ) & astral_power > 90",
								["buff_name"] = "starlord",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.stellar_drift.enabled & settings.solo_drift & buff.starfall.down",
								["action"] = "starfall",
								["description"] = "Dumps AsP before Convoke using the Convoke condition to check if Convoke is actually about to be cast",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.remains < 5 & ! druid.no_cds",
								["action"] = "starsurge",
								["description"] = "Dumps asp before Convoke using the Convoke condition to check if Convoke is actually about to be cast",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.stellar_drift.enabled & ! talent.starlord.enabled & buff.starfall.refreshable & ( buff.eclipse_lunar.remains > 6 & eclipse.in_lunar & buff.primordial_arcanic_pulsar.value < 250 || buff.primordial_arcanic_pulsar.value >= 250 & astral_power > 90 || dot.adaptive_swarm_damage.remains > 8 || action.adaptive_swarm_damage.in_flight ) & ! cooldown.ca_inc.ready",
								["action"] = "starfall",
								["description"] = "Use Starfall with Stellar Drift and no Starlord, when no Starfall is up, you are in Lunar Eclipse or to proc Pulsar when above 90 AsP or adpative swarm has 8+secs remaining or is in flight",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.oneths_clear_vision.up || buff.kindred_empowerment_energize.up || buff.ca_inc.up & ( buff.ravenous_frenzy.remains < gcd.max * ceil ( astral_power / 30 ) & buff.ravenous_frenzy.up || ! buff.ravenous_frenzy.up & ! cooldown.ravenous_frenzy.ready || ! covenant.venthyr ) || astral_power > 90 & eclipse.in_any",
								["action"] = "starsurge",
								["description"] = "Use Starsurge Oneth procs and dump AsP when CA/Inc or the Venthyr buff is about to fall off or you'd cap AsP",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.starlord.enabled & ! runeforge.timeworn_dreambinder.equipped & ( buff.starlord.up || astral_power > 90 ) & buff.starlord.stack < 3 & ( buff.eclipse_solar.up || buff.eclipse_lunar.up ) & buff.primordial_arcanic_pulsar.value < 270 & ( cooldown.ca_inc.remains > 10 || ! variable.convoke_desync & covenant.night_fae )",
								["action"] = "starsurge",
								["description"] = "Try to make the best of Starlord by stacking it up quickly in any Eclipse but Pulsar isnt about to be procced",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.timeworn_dreambinder.equipped & ( buff.primordial_arcanic_pulsar.value < 270 || buff.primordial_arcanic_pulsar.value < 250 & talent.stellar_drift.enabled ) & buff.eclipse_solar.remains > 7 & eclipse.in_solar & ! buff.oneths_perception.up & ! talent.starlord.enabled & cooldown.ca_inc.remains > 7 & ( cooldown.kindred_spirits.remains > 7 || ! covenant.kyrian )",
								["action"] = "starsurge",
								["description"] = "Dump Starsurge in a 7+sec Solar Eclipse, don't let it proc Pulsar (that is handled by either the Starfall line or the AsP>90 line for Starsurge), don't overwrite an Oneth proc and let the above line handle Starlord",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check & variable.save_for_ca_inc",
								["action"] = "new_moon",
								["description"] = "Use Moons in Lunar Eclipse and save Half+Full Moon for CA/Inc and Kindred Empowerment",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time & ! covenant.kyrian || ( buff.kindred_empowerment_energize.up & covenant.kyrian ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 || buff.ca_inc.up ) & ap_check & variable.save_for_ca_inc",
								["action"] = "half_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.remains > execute_time & ! covenant.kyrian || ( buff.kindred_empowerment_energize.up & covenant.kyrian ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 || buff.ca_inc.up ) & ap_check & variable.save_for_ca_inc",
								["action"] = "full_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["description"] = "Use WoE on cd",
								["action"] = "warrior_of_elune",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_lunar || eclipse.solar_next || eclipse.any_next || buff.warrior_of_elune.up & buff.eclipse_lunar.up || ( buff.ca_inc.remains < action.wrath.execute_time & buff.ca_inc.up )",
								["action"] = "starfire",
								["description"] = "Use Starfire to proc Solar Eclipse, CA/Inc has less time than a Wrath execute left or only Lunar Eclipse is up",
							}, -- [27]
							{
								["enabled"] = true,
								["description"] = "Use Wrath otherwise which is in Solar Eclipse, CA/Inc or to proc Lunar Eclipse",
								["action"] = "wrath",
							}, -- [28]
							{
								["enabled"] = true,
								["description"] = "Fallthru",
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [29]
						},
						["precombat"] = {
							{
								["action"] = "kindred_spirits",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["description"] = "The variable is set to 0 with no stat on use trinkets, 1 when the first one is on use, 2 if the second is and 3 if both are",
								["var_name"] = "on_use_trinket",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.usable & trinket.t1.cooldown.duration",
								["var_name"] = "on_use_trinket",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.usable & trinket.t2.cooldown.duration",
								["var_name"] = "on_use_trinket",
							}, -- [4]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "wrath",
								["line_cd"] = "10",
								["criteria"] = "( eclipse.lunar_next || eclipse.in_solar || eclipse.in_both || eclipse.any_next )",
								["description"] = "Precast 2 Wrath and a Starsurge on ST with Night Fae and BoAT or Starfire otherwise",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.lunar_next || eclipse.in_solar || eclipse.in_both || eclipse.any_next ) & prev.1.wrath & ! prev.2.wrath",
								["action"] = "wrath",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.balance_of_all_things.enabled || ! covenant.night_fae || ! spell_targets.starfall = 1 || ! talent.natures_balance.enabled || ( eclipse.solar_next || eclipse.in_lunar || eclipse.in_both || eclipse.any_next )",
								["action"] = "starfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.balance_of_all_things.enabled & covenant.night_fae & spell_targets.starfall = 1",
								["action"] = "starsurge",
							}, -- [9]
						},
					},
					["version"] = 20210502,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 6: Converted SimC syntax % to Lua division operator (/) (2x).\nLine 7: Converted 'trinket.1.X' to 'trinket.t1.X' (2x).\nLine 7: Converted 'trinket.2.X' to 'trinket.t2.X' (2x).\nLine 11: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 11: Converted 'trinket.1.X' to 'trinket.t1.X' (1x).\nLine 11: Converted 'trinket.2.X' to 'trinket.t2.X' (1x).\nLine 12: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 12: Converted 'trinket.1.X' to 'trinket.t1.X' (1x).\nLine 12: Converted 'trinket.2.X' to 'trinket.t2.X' (1x).\nLine 13: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 3: Converted 'trinket.1.X' to 'trinket.t1.X' (2x).\nLine 4: Converted 'trinket.2.X' to 'trinket.t2.X' (2x).\nLine 8: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 9: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'aoe' required some automated changes.\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 6: Converted SimC syntax %% to Lua modulus operator (%) (1x).\nLine 8: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 11: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 19: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 21: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 26: Converted SimC syntax % to Lua division operator (/) (2x).\n\nWARNING:  The import for 'fallthru' required some automated changes.\nLine 2: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 11: Converted SimC syntax %% to Lua modulus operator (%) (1x).\nLine 12: Converted SimC syntax %% to Lua modulus operator (%) (1x).\nLine 20: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'boat' required some automated changes.\nLine 19: Converted SimC syntax % to Lua division operator (/) (3x).\nLine 20: Converted SimC syntax % to Lua division operator (/) (1x).\n\nImported 6 action lists.\n",
					["profile"] = "## Balance Druid\n## May 2, 2021\n\n## Changes:\n## - Added Solar Beam.\n## - Changed target_if cases to cycle_targets.\n## - Removed unnecessary variables (i.e., prev_starsurge -> prev.starsurge).\n## - Avoid precasting Wrath if it's the wrong Eclipse.\n## - Make Convoke the Spirits a little more flexible (if you hadn't hit it simultaneously with BOAT + Celestial Alignment, it'd skip).\n## - Make most 'fight_remains' scenarios apply to boss fights only.\n\nactions.precombat=kindred_spirits\n# The variable is set to 0 with no stat on use trinkets, 1 when the first one is on use, 2 if the second is and 3 if both are\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=1,if=trinket.1.usable&trinket.1.cooldown.duration\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=2,if=trinket.2.usable&trinket.2.cooldown.duration\nactions.precombat+=/moonkin_form\n# Precast 2 Wrath and a Starsurge on ST with Night Fae and BoAT or Starfire otherwise\nactions.precombat+=/wrath,line_cd=10,if=(eclipse.lunar_next||eclipse.in_solar||eclipse.in_both||eclipse.any_next)\nactions.precombat+=/wrath,if=(eclipse.lunar_next||eclipse.in_solar||eclipse.in_both||eclipse.any_next)&prev.1.wrath&!prev.2.wrath\nactions.precombat+=/starfire,if=!runeforge.balance_of_all_things||!covenant.night_fae||!spell_targets.starfall=1||!talent.natures_balance.enabled||(eclipse.solar_next||eclipse.in_lunar||eclipse.in_both||eclipse.any_next)\nactions.precombat+=/starsurge,if=runeforge.balance_of_all_things&covenant.night_fae&spell_targets.starfall=1\n\n## Executed every time the actor is available.\nactions=solar_beam\n# Sets AoE on 3+ without drift and with Starlord and 2+ otherwise\nactions=variable,name=is_aoe,value=spell_targets.starfall>1&(!talent.starlord.enabled||talent.stellar_drift.enabled)||spell_targets.starfall>2\n# Sets cleave when Starfire can hit 2+ targets which is relevant for the Eclipse to be preferred and which filler to cast\nactions+=/variable,name=is_cleave,value=spell_targets.starfire>1\n# Use Berserking with CA/Inc or after Convoke in CA/Inc\nactions+=/berserking,if=(!covenant.night_fae||!cooldown.convoke_the_spirits.up)&buff.ca_inc.remains>15\n# Pot with a CA/Inc that isn't a Pulsar proc or when the fight is about to end\nactions+=/potion,if=buff.ca_inc.remains>15||boss&fight_remains<25\n# Calculates whether using Convoke now will allow you to still cast the same amount of Convoke+CA/Inc casts\nactions+=/variable,name=convoke_desync,value=ceil((interpolated_fight_remains-15-cooldown.ca_inc.remains)%180)=ceil((interpolated_fight_remains-15-120-cooldown.convoke_the_spirits.remains)%180)&!raid_event.adds.exists||cooldown.ca_inc.remains>interpolated_fight_remains||cooldown.convoke_the_spirits.remains>interpolated_fight_remains-10||!covenant.night_fae||action.convoke_the_spirits.disabled\n# Used to delay the usage of CA/Inc when using double on use and prevent usage when an add event is about to die\nactions+=/variable,name=cd_condition,value=(target.time_to_die>15||raid_event.adds.in>50)&((!equipped.empyreal_ordnance||cooldown.empyreal_ordnance.remains<160&!cooldown.empyreal_ordnance.ready)&((variable.on_use_trinket=1||variable.on_use_trinket=3)&(trinket.1.ready_cooldown||trinket.1.cooldown.remains>interpolated_fight_remains-10)||variable.on_use_trinket=2&(trinket.2.ready_cooldown||trinket.2.cooldown.remains>interpolated_fight_remains-10)||variable.on_use_trinket=0)||covenant.kyrian)\n# Use Empyreal Ordnance 20secs before a CA/Inc use.\nactions+=/use_item,name=empyreal_ordnance,if=cooldown.ca_inc.remains<20&cooldown.convoke_the_spirits.remains<20||boss&fight_remains<37\n# Use Soulleting Ruby 6secs before a CA/Inc use.\nactions+=/use_item,name=soulletting_ruby,if=cooldown.ca_inc.remains<6&!variable.convoke_desync||cooldown.convoke_the_spirits.remains<6&variable.convoke_desync||boss&fight_remains<25\nactions+=/use_item,name=inscrutable_quantum_device,if=buff.ca_inc.remains>15\n# This is a rather elaborate way to make all on use stat trinkets to be lined up with CA/Inc and Convoke and use the 2nd slot on cd if both trinkets are on use stat trinkets\nactions+=/trinket1,if=variable.on_use_trinket=2&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&(buff.ca_inc.up||cooldown.ca_inc.remains+2>trinket.1.cooldown.duration&(!covenant.night_fae||!variable.convoke_desync)&!covenant.kyrian||covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.up&!cooldown.ca_inc.up&((buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)&!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=5||buff.balance_of_all_things_arcane.stack=5))||buff.kindred_empowerment_energize.up)||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&(buff.ca_inc.up||cooldown.ca_inc.remains+2>trinket.2.cooldown.duration&(!covenant.night_fae||!variable.convoke_desync)&!covenant.kyrian||covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.up&!cooldown.ca_inc.up&((buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)&!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=5||buff.balance_of_all_things_arcane.stack=5)))||buff.kindred_empowerment_energize.up||boss&fight_remains<20||variable.on_use_trinket=0\n# Uses all other on use items on cd\nactions+=/use_items,if=buff.ca_inc.up||covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.up&!cooldown.ca_inc.up&((buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)&!runeforge.balance_of_all_things||runeforge.balance_of_all_things&(buff.balance_of_all_things_nature.stack>3||buff.balance_of_all_things_arcane.stack>3))||buff.kindred_empowerment_energize.up||boss&fight_remains<20\n# Decide action list based on situation/legis\nactions+=/run_action_list,name=aoe,strict=1,if=variable.is_aoe\nactions+=/run_action_list,name=boat,strict=1,if=runeforge.balance_of_all_things.equipped\nactions+=/run_action_list,name=st\n\n# Calculates whether the Dreamcatcher buff will fall off within the next cast\nactions.aoe=variable,name=dream_will_fall_off,value=(buff.timeworn_dreambinder.remains<gcd.max+0.1||buff.timeworn_dreambinder.remains<action.starfire.execute_time+0.1&(eclipse.in_lunar||eclipse.solar_next||eclipse.any_next))&buff.timeworn_dreambinder.up&runeforge.timeworn_dreambinder.equipped\n# Calculates whether Starsurge is worth casting over Starfire in Lunar Eclipse\nactions.aoe+=/variable,name=ignore_starsurge,value=!eclipse.in_solar&(spell_targets.starfire>5&talent.soul_of_the_forest.enabled||spell_targets.starfire>7)\n# Use Convoke when at less than 50 AsP and line up with CA/Inc\nactions.aoe+=/convoke_the_spirits,if=!druid.no_cds&((variable.convoke_desync&!cooldown.ca_inc.ready||buff.ca_inc.up)&(astral_power<50||variable.ignore_starsurge)&(buff.eclipse_lunar.remains>6||buff.eclipse_solar.remains>6)&(!runeforge.balance_of_all_things||buff.balance_of_all_things_nature.stack>3||buff.balance_of_all_things_arcane.stack>3)||fight_remains<10&!cooldown.ca_inc.ready)\n# Use Frenzy with CA/Inc\nactions.aoe+=/ravenous_frenzy,if=buff.ca_inc.remains>15\n# Use Sunfire in pandemic on anything that lives 14secs and less with more targets and at the end of a Solar Eclipse at 14 secs or less remaining as to not having to refresh during Lunar Eclipse\nactions.aoe+=/sunfire,cycle_targets=1,if=(refreshable||buff.eclipse_solar.remains<3&eclipse.in_solar&remains<14&talent.soul_of_the_forest.enabled)&target.time_to_die>14-spell_targets+remains&(eclipse.in_any||remains<gcd.max)\n# Keep up Starfall at all times unless using Lycaras and it is about to proc or let the special action line below handle Dreambinder on 2 targets\nactions.aoe+=/starfall,if=(buff.starfall.refreshable&(spell_targets.starfall<3||!runeforge.timeworn_dreambinder.equipped)||talent.soul_of_the_forest.enabled&buff.eclipse_solar.remains<3&eclipse.in_solar&buff.starfall.remains<7&spell_targets.starfall>=4)&(!runeforge.lycaras_fleeting_glimpse.equipped||time%%45>buff.starfall.remains+2)&target.time_to_die>5\n# With Dreambinder use Starfall to keep up the buff by also using Starfall on 5 seconds or less remaining\nactions.aoe+=/starfall,if=runeforge.timeworn_dreambinder.equipped&spell_targets.starfall>=3&(!buff.timeworn_dreambinder.up&buff.starfall.refreshable||(variable.dream_will_fall_off&(buff.starfall.remains<3||spell_targets.starfall>2&talent.stellar_drift.enabled&buff.starfall.remains<5)))\n# Calculates whether a Starsurge use will cause Starfall to fall off, and use Starsurge to keep Dreambinder stack up\nactions.aoe+=/variable,name=starfall_wont_fall_off,value=astral_power>80-(10*buff.timeworn_dreambinder.stack)-(buff.starfall.remains*3%spell_haste)-(dot.fury_of_elune.remains*5)&buff.starfall.up\n# Use Starsurge with Dreambinder to keep up the buff without losing Starfall uptime and use Starsurge on 4+ BoAT stacks until 4 targets\nactions.aoe+=/starsurge,if=variable.dream_will_fall_off&variable.starfall_wont_fall_off&!variable.ignore_starsurge||(buff.balance_of_all_things_nature.stack>3||buff.balance_of_all_things_arcane.stack>3)&spell_targets.starfall<4&variable.starfall_wont_fall_off\n# Use swarm so that you get max uptime by using it as late as possible on less than 3 stacks or just when 3+ stacks expire\nactions.aoe+=/adaptive_swarm,cycle_targets=1,if=!ticking&!action.adaptive_swarm_damage.in_flight||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<3\n# Refresh Moonfire if CA/Inc is ready, there are less than 5 targets in Lunar Eclipse with SotF, less than 10 otherwise in any Eclipse or up to 5 targets before a Lunar Eclipse. Don't refresh during Kindred Empowerment unless in Solar Eclipse\nactions.aoe+=/moonfire,cycle_targets=1,if=refreshable&target.time_to_die>((14+(spell_targets.starfire*2*buff.eclipse_lunar.up))+remains)%(1+talent.twin_moons.enabled)&(cooldown.ca_inc.ready&!druid.no_cds&(variable.convoke_desync||cooldown.convoke_the_spirits.ready||!covenant.night_fae)||spell_targets.starfire<((6-(buff.eclipse_lunar.up*2))*(1+talent.twin_moons.enabled))&!eclipse.solar_next||(eclipse.in_solar||(eclipse.in_both||eclipse.in_lunar)&!talent.soul_of_the_forest.enabled||buff.primordial_arcanic_pulsar.value>=250)&(spell_targets.starfire<10*(1+talent.twin_moons.enabled))&astral_power>50-buff.starfall.remains*6)&(!buff.kindred_empowerment_energize.up||eclipse.in_solar||!covenant.kyrian)\n# Use FoN on cd without capping\nactions.aoe+=/force_of_nature,if=ap_check\n# Use CA/Inc on cd unless and line it up with Convoke\nactions.aoe+=/celestial_alignment,if=!druid.no_cds&variable.cd_condition&(buff.starfall.up||astral_power>50)&(!buff.solstice.up&!buff.ca_inc.up&(!covenant.night_fae||cooldown.convoke_the_spirits.up&astral_power<50)&target.time_to_die>15+conduit.precise_alignment.time_value||boss&interpolated_fight_remains<20+conduit.precise_alignment.time_value)\nactions.aoe+=/incarnation,if=!druid.no_cds&variable.cd_condition&(buff.starfall.up||astral_power>50)&(!buff.solstice.up&!buff.ca_inc.up&(!covenant.night_fae||cooldown.convoke_the_spirits.up&astral_power<50)&target.time_to_die>20+conduit.precise_alignment.time_value||boss&interpolated_fight_remains<30+conduit.precise_alignment.time_value)\n# Use Empower Bond on cd with Starfall up and save for Pulsar and CA/Inc\nactions.aoe+=/empower_bond,if=boss&interpolated_fight_remains<15||(buff.primordial_arcanic_pulsar.value<250||buff.primordial_arcanic_pulsar.value>=250)&buff.starfall.up&(cooldown.ca_inc.remains>50||druid.no_cds)\n# Refresh flare on up to 3 targets without CA/Inc being about to expire and not overcapping\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&time_to_die>15&spell_targets.starfire<4&ap_check&(buff.ca_inc.remains>10||!buff.ca_inc.up)\n# Use FoE if inside an Eclipse and line it up with a Pulsar proc and Adaptive Swarm\nactions.aoe+=/fury_of_elune,if=eclipse.in_any&ap_check&buff.primordial_arcanic_pulsar.value<250&(dot.adaptive_swarm_damage.ticking||!covenant.necrolord||spell_targets>2)\n# Use a Starfall Oneth proc unless Starfall is already up or you are about to overcap AsP\nactions.aoe+=/starfall,if=buff.oneths_perception.up&(buff.starfall.refreshable||astral_power>90)\n# Dump AsP before Convoke with Starfall and then Starsurge\nactions.aoe+=/starfall,if=covenant.night_fae&(variable.convoke_desync||cooldown.ca_inc.up||buff.ca_inc.up)&cooldown.convoke_the_spirits.remains<gcd.max*ceil(astral_power%50)&buff.starfall.remains<4&!druid.no_cds\nactions.aoe+=/starsurge,if=covenant.night_fae&(variable.convoke_desync||cooldown.ca_inc.up||buff.ca_inc.up)&cooldown.convoke_the_spirits.remains<6&buff.starfall.up&eclipse.in_any&!variable.ignore_starsurge&!druid.no_cds\n# Use Starsurge with an Oneth proc or if you'd overcap AsP with your next cast. Also dumps AsP at the end of the Venthyr buff if Starfall wouldn't fall off on 4 or less targets\nactions.aoe+=/starsurge,if=buff.oneths_clear_vision.up||(!starfire.ap_check&!variable.ignore_starsurge||(buff.ca_inc.remains<5&buff.ca_inc.up||(buff.ravenous_frenzy.remains<gcd.max*ceil(astral_power%30)&buff.ravenous_frenzy.up))&variable.starfall_wont_fall_off&spell_targets.starfall<3)&(!runeforge.timeworn_dreambinder.equipped||spell_targets.starfall<3)\n# Use Moons in Solar Eclipse and save Full Moon for CA/Inc\nactions.aoe+=/new_moon,if=(buff.eclipse_solar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check\nactions.aoe+=/half_moon,if=(buff.eclipse_solar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check\nactions.aoe+=/full_moon,if=(buff.eclipse_solar.remains>execute_time&(cooldown.ca_inc.remains>50||cooldown.convoke_the_spirits.remains>50)||(charges=2&recharge_time<5)||charges=3)&ap_check\n# Use WoE on CD\nactions.aoe+=/warrior_of_elune\n# Calculates whether to use Starfire in Solar which is at 5 targets+1 for every 20% mastery or 4 Starsurge Empowerment stacks\nactions.aoe+=/variable,name=starfire_in_solar,value=spell_targets.starfire>4+floor(mastery_value*100%20)+floor(buff.starsurge_empowerment_solar.stack%4)\n# Use Wrath in Solar Eclipse or if no Starfire will fit into CA/Inc anymore\nactions.aoe+=/wrath,if=(eclipse.lunar_next||eclipse.any_next&variable.is_cleave)&(target.time_to_die>4||eclipse.lunar_in_2||fight_remains<10)||buff.eclipse_solar.remains<action.starfire.execute_time&buff.eclipse_solar.up||eclipse.in_solar&!variable.starfire_in_solar||buff.ca_inc.remains<action.starfire.execute_time&!variable.is_cleave&buff.ca_inc.remains<execute_time&buff.ca_inc.up||buff.ravenous_frenzy.up&spell_haste>0.6&(spell_targets<=3||!talent.soul_of_the_forest.enabled)||!variable.is_cleave&buff.ca_inc.remains>execute_time\n# Use Starfire if in Lunar Eclipse, in Solar Eclipse on 4+ targets or to proc Solar Eclipse\nactions.aoe+=/starfire\n# Fallthru\nactions.aoe+=/run_action_list,name=fallthru\n\n# Frenzy with CA/Inc\nactions.boat=ravenous_frenzy,if=buff.ca_inc.remains>15\n# Checks if the BoAT crit buff is not up for later use\nactions.boat+=/variable,name=critnotup,value=!buff.balance_of_all_things_nature.up&!buff.balance_of_all_things_arcane.up\n# Use Adaptive Swarm when at less than 4 BoAT stacks and to refresh a <=2 stack as late as possible or time it so it arrives just after a 3+ stack expires\nactions.boat+=/adaptive_swarm,cycle_targets=1,if=buff.balance_of_all_things_nature.stack<4&buff.balance_of_all_things_arcane.stack<4&(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\n# Use Convoke with CA/Inc when possible and otherwise with a BoAT buff when desyncing\nactions.boat+=/convoke_the_spirits,if=(variable.convoke_desync&!cooldown.ca_inc.ready||buff.ca_inc.up)&(buff.balance_of_all_things_nature.stack=5||buff.balance_of_all_things_arcane.stack=5)||boss&fight_remains<10\n# FoE as the first gcd in the a BoAT window or with the Kyrian buff or with a 8+sec Adaptive Swarm and wait for CA/Inc if it wont be up again before the cd is finished\nactions.boat+=/fury_of_elune,if=((buff.balance_of_all_things_nature.stack>4||buff.balance_of_all_things_arcane.stack>4)&(druid.no_cds||cooldown.ca_inc.remains>50||(covenant.night_fae&cooldown.convoke_the_spirits.remains>50)))||(dot.adaptive_swarm_damage.remains>8&cooldown.ca_inc.remains>10&covenant.necrolord)||interpolated_fight_remains<8&!cooldown.ca_inc.ready||(covenant.kyrian&buff.kindred_empowerment.up)\n# Cancel Starlord with a new BoAT buff and CA/Inc isn't about to be used\nactions.boat+=/cancel_buff,name=starlord,if=(buff.balance_of_all_things_nature.remains>4.5||buff.balance_of_all_things_arcane.remains>4.5)&(cooldown.ca_inc.remains>7||(cooldown.empower_bond.remains>7&!buff.kindred_empowerment_energize.up&covenant.kyrian))&astral_power>=30\n# Dump Starsurges with a BoAT buff but not when pooling for CA/Inc or Kindred Spirits\nactions.boat+=/starfall,if=talent.stellar_drift.enabled&settings.solo_drift&buff.starfall.down\n# Dump Starsurges with the boat buff but not when pooling for ca or empower bond\nactions.boat+=/starsurge,if=!variable.critnotup&(covenant.night_fae||cooldown.ca_inc.remains>7||!variable.cd_condition&!covenant.kyrian||(cooldown.empower_bond.remains>7&!buff.kindred_empowerment_energize.up&covenant.kyrian))&(!dot.fury_of_elune.ticking||!cooldown.ca_inc.ready||!cooldown.convoke_the_spirits.ready)\n# Dump Starsurges before Convoke\nactions.boat+=/starsurge,if=(cooldown.convoke_the_spirits.remains<5&!druid.no_cds&(variable.convoke_desync||cooldown.ca_inc.remains<5)&variable.cd_condition)&!dot.fury_of_elune.ticking&covenant.night_fae&!druid.no_cds&eclipse.in_any\n# Don't dot during the end of Ravenous Frenzy, during kindred empowerment or in the last gcd of an Eclipse\nactions.boat+=/variable,name=dot_requirements,value=(buff.ravenous_frenzy.remains>5||!buff.ravenous_frenzy.up)&(buff.kindred_empowerment_energize.remains<gcd.max)&(buff.eclipse_solar.remains>gcd.max||buff.eclipse_lunar.remains>gcd.max)\nactions.boat+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>16&ap_check&variable.dot_requirements\nactions.boat+=/moonfire,cycle_targets=1,if=refreshable&target.time_to_die>13.5&ap_check&variable.dot_requirements\nactions.boat+=/stellar_flare,cycle_targets=1,if=refreshable&target.time_to_die>16+remains&ap_check&variable.dot_requirements\n# FoN on cd without capping\nactions.boat+=/force_of_nature,if=ap_check\n# Empower Bond when about to enter a new BoAT window and save for CA/Inc\nactions.boat+=/empower_bond,if=(eclipse.lunar_next||eclipse.solar_next||eclipse.any_next||buff.balance_of_all_things_nature.remains>4.5||buff.balance_of_all_things_arcane.remains>4.5||astral_power>90&cooldown.ca_inc.ready&!druid.no_cds)&(cooldown.ca_inc.remains>30||cooldown.ca_inc.ready)||boss&interpolated_fight_remains<10\n# FoE right before using CA\nactions.boat+=/fury_of_elune,if=cooldown.ca_inc.ready&variable.cd_condition&(astral_power>90&!covenant.night_fae||covenant.night_fae&astral_power<40)&(!covenant.night_fae||cooldown.convoke_the_spirits.ready)&!druid.no_cds\n# CA/Inc when at 90+ AsP (orlower than 40 AsP with Convoke) without losing time in Bloodlust and line up with Convoke if it was desynced\nactions.boat+=/celestial_alignment,if=!druid.no_cds&variable.cd_condition&((astral_power>90&(buff.kindred_empowerment_energize.up||!covenant.kyrian)||buff.bloodlust.up&buff.bloodlust.remains<20+(conduit.precise_alignment.time_value))||boss&interpolated_fight_remains<20+(conduit.precise_alignment.time_value)||covenant.night_fae)&(!covenant.night_fae||(astral_power<40||dot.fury_of_elune.ticking)&(variable.convoke_desync||cooldown.convoke_the_spirits.ready))\nactions.boat+=/incarnation,if=!druid.no_cds&variable.cd_condition&((astral_power>90&(buff.kindred_empowerment_energize.up||!covenant.kyrian)||buff.bloodlust.up&buff.bloodlust.remains<30+(conduit.precise_alignment.time_value))||boss&interpolated_fight_remains<30+(conduit.precise_alignment.time_value)||covenant.night_fae)&(!covenant.night_fae||(astral_power<40||dot.fury_of_elune.ticking)&(variable.convoke_desync||cooldown.convoke_the_spirits.ready))\n# Estimates how much AsP are gained per second\nactions.boat+=/variable,name=aspPerSec,value=eclipse.in_lunar*8%action.starfire.execute_time+!eclipse.in_lunar*(6+talent.soul_of_the_forest.enabled*3)%action.wrath.execute_time+0.2%spell_haste\n# Dump Starsurges when the fight is about to end, frenzy is about to end, you are at 90+ AsP in an Eclipse, CA/Inc lasts another 8+secs or you would overcap more than ~10 AsP when you wouldn't Starsurge now\nactions.boat+=/starsurge,if=(boss&interpolated_fight_remains<4||(buff.ravenous_frenzy.remains<gcd.max*ceil(astral_power%30)&buff.ravenous_frenzy.up))||(astral_power+variable.aspPerSec*buff.eclipse_solar.remains+dot.fury_of_elune.ticks_remain*2.5>110||astral_power+variable.aspPerSec*buff.eclipse_lunar.remains+dot.fury_of_elune.ticks_remain*2.5>110)&eclipse.in_any&(!buff.ca_inc.up||!talent.starlord.enabled)&((!cooldown.ca_inc.up||covenant.kyrian&!cooldown.empower_bond.up)||covenant.night_fae)&(!covenant.venthyr||!buff.ca_inc.up||astral_power>90)||(talent.starlord.enabled&buff.ca_inc.up&(buff.starlord.stack<3||astral_power>90))||buff.ca_inc.up&!buff.ravenous_frenzy.up&!talent.starlord.enabled\n# Use Moons in Lunar Eclipse and save Half+Full Moon for CA/Inc\nactions.boat+=/new_moon,if=(buff.eclipse_lunar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check\nactions.boat+=/half_moon,if=(buff.eclipse_lunar.remains>execute_time&(cooldown.ca_inc.remains>50||cooldown.convoke_the_spirits.remains>50)||(charges=2&recharge_time<5)||charges=3)&ap_check\nactions.boat+=/full_moon,if=(buff.eclipse_lunar.remains>execute_time&(cooldown.ca_inc.remains>50||cooldown.convoke_the_spirits.remains>50)||(charges=2&recharge_time<5)||charges=3)&ap_check\n# WoE on cd\nactions.boat+=/warrior_of_elune\n# Use Starfire to proc Solar Eclipse or when in only Lunar Eclipse and use WoE procs if in Lunar Eclipse\nactions.boat+=/starfire,if=eclipse.in_lunar||eclipse.solar_next||eclipse.any_next||buff.warrior_of_elune.up&buff.eclipse_lunar.up||(buff.ca_inc.remains<action.wrath.execute_time&buff.ca_inc.up)\nactions.boat+=/wrath\nactions.boat+=/run_action_list,name=fallthru\n\n# Starsurge for movement unless using BoAT\nactions.fallthru=starsurge,if=!runeforge.balance_of_all_things.equipped\n# Cast the dot with the most time to add until the max duration is hit. Sunfire remains multiplied to match moonfire duration\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\n# Use the Venthyr with a CA/Inc that isn't from Pulsar\nactions.st=ravenous_frenzy,if=buff.ca_inc.remains>15\n# Use Starsurge to keep up the Dreambinder buff if it would expire before finishing the next cast or to dump before Convoke\nactions.st+=/starsurge,if=runeforge.timeworn_dreambinder.equipped&(eclipse.in_any&!((buff.timeworn_dreambinder.remains>action.wrath.execute_time+0.1&(eclipse.in_both||eclipse.in_solar||eclipse.lunar_next)||buff.timeworn_dreambinder.remains>action.starfire.execute_time+0.1&(eclipse.in_lunar||eclipse.solar_next||eclipse.any_next))||!buff.timeworn_dreambinder.up)||(buff.ca_inc.up||variable.convoke_desync)&cooldown.convoke_the_spirits.ready&covenant.night_fae)&(!covenant.kyrian||cooldown.empower_bond.remains>8)&(buff.ca_inc.up||!cooldown.ca_inc.ready)\n# Use Adaptive Swarm when there is no active swarm, as late as possible on swarm with 2 or fewer stacks or on a 3+ swarm so that the new swarm arrives just after that swarm expires\nactions.st+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>5)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<3&dot.adaptive_swarm_damage.ticking\n# Uses Convoke if CA/Inc is up or you are desyncing CA/Inc with Convoke and you are below 40 AsP\nactions.st+=/convoke_the_spirits,if=!druid.no_cds&((variable.convoke_desync&!cooldown.ca_inc.ready&!runeforge.primordial_arcanic_pulsar||buff.ca_inc.up)&astral_power<40&(buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)||fight_remains<10&!cooldown.ca_inc.ready)\n# Condition for all dots that makes sure they aren't refreshed when Ravenous Frenzy has less than 5 secs remaining or the kyrian buff is about to fall off or any Eclipse is about to expire\nactions.st+=/variable,name=dot_requirements,value=(buff.ravenous_frenzy.remains>5||!buff.ravenous_frenzy.up)&(buff.kindred_empowerment_energize.remains<gcd.max)&(buff.eclipse_solar.remains>gcd.max||buff.eclipse_lunar.remains>gcd.max)\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&target.time_to_die>12&(ap_check&variable.dot_requirements)\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>12&(ap_check&variable.dot_requirements)\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&target.time_to_die>16&(ap_check&variable.dot_requirements)\n# Use FoN on cd without capping\nactions.st+=/force_of_nature,if=ap_check\n# Use Kindred Spirits with any long enough lasting Eclipse and try to line it up with Pulsar and CA/Inc\nactions.st+=/empower_bond,if=((buff.eclipse_solar.remains>10||buff.eclipse_lunar.remains>10)&cooldown.ca_inc.remains>30&(buff.primordial_arcanic_pulsar.value<240||!runeforge.primordial_arcanic_pulsar.equipped))||buff.primordial_arcanic_pulsar.value>=270||cooldown.ca_inc.ready&astral_power>90\n# Use CA/Inc with Convoke/Kindred Spirits and don't overwrite Pulsar or when Bloodlust would expire before CA/Inc expires\nactions.st+=/celestial_alignment,if=!druid.no_cds&variable.cd_condition&(astral_power>90&(buff.kindred_empowerment_energize.up||!covenant.kyrian)||covenant.night_fae||buff.bloodlust.up&buff.bloodlust.remains<20+((9*runeforge.primordial_arcanic_pulsar.equipped)+(conduit.precise_alignment.time_value)))&!buff.ca_inc.up&(!covenant.night_fae||cooldown.convoke_the_spirits.up||boss&interpolated_fight_remains<cooldown.convoke_the_spirits.remains+6||interpolated_fight_remains%%180<20+(conduit.precise_alignment.time_value))\nactions.st+=/incarnation,if=!druid.no_cds&variable.cd_condition&(astral_power>90&(buff.kindred_empowerment_energize.up||!covenant.kyrian)||covenant.night_fae||buff.bloodlust.up&buff.bloodlust.remains<30+((9*runeforge.primordial_arcanic_pulsar.equipped)+(conduit.precise_alignment.time_value)))&!buff.ca_inc.up&(!covenant.night_fae||cooldown.convoke_the_spirits.up||boss&interpolated_fight_remains<cooldown.convoke_the_spirits.remains+6||interpolated_fight_remains%%180<30+(conduit.precise_alignment.time_value))\n# Variable used on abilities that want to be saved for CA/Inc so that they arent wasted just before them\nactions.st+=/variable,name=save_for_ca_inc,value=!cooldown.ca_inc.ready||!variable.convoke_desync&covenant.night_fae||druid.no_cds\n# Uses FoE if in an Eclipse and tries to line it up with Pulsar, CA/Inc and Adaptive Swarm\nactions.st+=/fury_of_elune,if=eclipse.in_any&ap_check&buff.primordial_arcanic_pulsar.value<240&(dot.adaptive_swarm_damage.ticking||!covenant.necrolord)&variable.save_for_ca_inc\n# Use Oneth Starfall procs if Starfall isn't up\nactions.st+=/starfall,if=buff.oneths_perception.up&buff.starfall.refreshable\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<5&(buff.eclipse_solar.remains>5||buff.eclipse_lunar.remains>5)&astral_power>90\n# Dumps AsP before Convoke using the Convoke condition to check if Convoke is actually about to be cast\nactions.st+=/starfall,if=talent.stellar_drift.enabled&settings.solo_drift&buff.starfall.down\n# Dumps asp before Convoke using the Convoke condition to check if Convoke is actually about to be cast\nactions.st+=/starsurge,if=covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.remains<5&!druid.no_cds\n# Use Starfall with Stellar Drift and no Starlord, when no Starfall is up, you are in Lunar Eclipse or to proc Pulsar when above 90 AsP or adpative swarm has 8+secs remaining or is in flight\nactions.st+=/starfall,if=talent.stellar_drift.enabled&!talent.starlord.enabled&buff.starfall.refreshable&(buff.eclipse_lunar.remains>6&eclipse.in_lunar&buff.primordial_arcanic_pulsar.value<250||buff.primordial_arcanic_pulsar.value>=250&astral_power>90||dot.adaptive_swarm_damage.remains>8||action.adaptive_swarm_damage.in_flight)&!cooldown.ca_inc.ready\n# Use Starsurge Oneth procs and dump AsP when CA/Inc or the Venthyr buff is about to fall off or you'd cap AsP\nactions.st+=/starsurge,if=buff.oneths_clear_vision.up||buff.kindred_empowerment_energize.up||buff.ca_inc.up&(buff.ravenous_frenzy.remains<gcd.max*ceil(astral_power%30)&buff.ravenous_frenzy.up||!buff.ravenous_frenzy.up&!cooldown.ravenous_frenzy.ready||!covenant.venthyr)||astral_power>90&eclipse.in_any\n# Try to make the best of Starlord by stacking it up quickly in any Eclipse but Pulsar isnt about to be procced\nactions.st+=/starsurge,if=talent.starlord.enabled&!runeforge.timeworn_dreambinder.equipped&(buff.starlord.up||astral_power>90)&buff.starlord.stack<3&(buff.eclipse_solar.up||buff.eclipse_lunar.up)&buff.primordial_arcanic_pulsar.value<270&(cooldown.ca_inc.remains>10||!variable.convoke_desync&covenant.night_fae)\n# Dump Starsurge in a 7+sec Solar Eclipse, don't let it proc Pulsar (that is handled by either the Starfall line or the AsP>90 line for Starsurge), don't overwrite an Oneth proc and let the above line handle Starlord\nactions.st+=/starsurge,if=!runeforge.timeworn_dreambinder.equipped&(buff.primordial_arcanic_pulsar.value<270||buff.primordial_arcanic_pulsar.value<250&talent.stellar_drift.enabled)&buff.eclipse_solar.remains>7&eclipse.in_solar&!buff.oneths_perception.up&!talent.starlord.enabled&cooldown.ca_inc.remains>7&(cooldown.kindred_spirits.remains>7||!covenant.kyrian)\n# Use Moons in Lunar Eclipse and save Half+Full Moon for CA/Inc and Kindred Empowerment\nactions.st+=/new_moon,if=(buff.eclipse_lunar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check&variable.save_for_ca_inc\nactions.st+=/half_moon,if=(buff.eclipse_lunar.remains>execute_time&!covenant.kyrian||(buff.kindred_empowerment_energize.up&covenant.kyrian)||(charges=2&recharge_time<5)||charges=3||buff.ca_inc.up)&ap_check&variable.save_for_ca_inc\nactions.st+=/full_moon,if=(buff.eclipse_lunar.remains>execute_time&!covenant.kyrian||(buff.kindred_empowerment_energize.up&covenant.kyrian)||(charges=2&recharge_time<5)||charges=3||buff.ca_inc.up)&ap_check&variable.save_for_ca_inc\n# Use WoE on cd\nactions.st+=/warrior_of_elune\n# Use Starfire to proc Solar Eclipse, CA/Inc has less time than a Wrath execute left or only Lunar Eclipse is up\nactions.st+=/starfire,if=eclipse.in_lunar||eclipse.solar_next||eclipse.any_next||buff.warrior_of_elune.up&buff.eclipse_lunar.up||(buff.ca_inc.remains<action.wrath.execute_time&buff.ca_inc.up)\n# Use Wrath otherwise which is in Solar Eclipse, CA/Inc or to proc Lunar Eclipse\nactions.st+=/wrath\n# Fallthru\nactions.st+=/run_action_list,name=fallthru",
					["spec"] = 102,
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210403,
					["author"] = "SimC",
					["desc"] = "Guardian Druid\nApril 2, 2020\n\nChanges:\n- Incorporate Cat/Moonkin priorities (if setting is checked).\n- Incorporate option to shift (or not) before Convoke.",
					["lists"] = {
						["lycarao"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [1]
							{
								["action"] = "ravenous_frenzy",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! druid.catweave_bear & ! druid.owlweave_bear",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ravenous_frenzy.up || ! covenant.venthyr )",
								["action"] = "berserk",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ravenous_frenzy.up || ! covenant.venthyr )",
								["action"] = "incarnation",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || ( dot.thrash_bear.stack < 4 & runeforge.luffainfused_embrace.equipped ) || active_enemies >= 4",
								["action"] = "thrash_bear",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.galactic_guardian.up ) & active_enemies < 2 ) || ( ( buff.galactic_guardian.up ) & ! dot.moonfire.ticking & active_enemies > 1 & target.time_to_die > 12 )",
								["action"] = "moonfire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.remains <= 3 & ( buff.galactic_guardian.up ) & active_enemies > 5 & target.time_to_die > 12 )",
								["action"] = "moonfire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & active_enemies < 2 & target.time_to_die > 12 ) || ( ! dot.moonfire.ticking & active_enemies > 1 & target.time_to_die > 12 )",
								["action"] = "moonfire",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 4",
								["action"] = "swipe_bear",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.up & active_enemies < 2",
								["action"] = "maul",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.savage_combatant.stack >= 1 ) & ( buff.tooth_and_claw.up ) & buff.incarnation.up & active_enemies = 2",
								["action"] = "maul",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.up & active_enemies <= 3",
								["action"] = "mangle",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( buff.tooth_and_claw.stack >= 2 ) || ( buff.tooth_and_claw.up & buff.tooth_and_claw.remains < 1.5 ) || ( buff.savage_combatant.stack >= 3 ) ) & active_enemies < 3 )",
								["action"] = "maul",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( ( rage < 90 ) & active_enemies < 3 ) || ( ( rage < 85 ) & active_enemies < 3 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "pulverize",
								["criteria"] = "dot.thrash_bear.stack > 2",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "maul",
							}, -- [22]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 40 & buff.ironfur.remains < 0.5",
								["action"] = "ironfur",
							}, -- [24]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "renewal",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! druid.catweave_bear & ! druid.owlweave_bear ) || active_enemies >= 2",
								["action"] = "empower_bond",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [6]
						},
						["catweave"] = {
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "druid.catweave_bear",
								["action"] = "empower_bond",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.refreshable & combo_points < 4",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.refreshable & combo_points >= 4",
								["action"] = "rip",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "druid.catweave_bear",
								["action"] = "convoke_the_spirits",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4",
								["action"] = "ferocious_bite",
								["max_energy"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_points.current < 5",
								["action"] = "shred",
							}, -- [11]
						},
						["lycarac"] = {
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [1]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "use_items",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) & ( druid.catweave_bear || druid.owlweave_bear ) & ! buff.prowl.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "druid.catweave_bear & buff.cat_form.up",
								["list_name"] = "catweave",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "druid.owlweave_bear & buff.moonkin_form.up",
								["list_name"] = "owlweave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we have Lycara legendary equipped and balance affinity as a talent we switch into moonkin form whenever the lycara buff is at or below 2 sec",
								["criteria"] = "( ( runeforge.lycaras_fleeting_glimpse.equipped ) & ( talent.balance_affinity.enabled ) & ( buff.lycaras_fleeting_glimpse.up ) & ( buff.lycaras_fleeting_glimpse.remains <= 2 ) )",
								["list_name"] = "lycarao",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we have Lycara legendary equipped and feral affinity as a talent we switch into feral form whenever the lycara buff is at or below 2 sec",
								["criteria"] = "( ( runeforge.lycaras_fleeting_glimpse.equipped ) & ( talent.feral_affinity.enabled ) & ( buff.lycaras_fleeting_glimpse.up ) & ( buff.lycaras_fleeting_glimpse.remains <= 2 ) )",
								["list_name"] = "lycarac",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here moonkin form.",
								["criteria"] = "settings.shift_for_convoke & ( ( talent.balance_affinity.enabled ) & ( ! druid.catweave_bear ) & ( ! druid.owlweave_bear ) & ( covenant.night_fae & cooldown.convoke_the_spirits.remains <= 1 ) )",
								["list_name"] = "oconvoke",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here catform form.",
								["criteria"] = "settings.shift_for_convoke & ( ( talent.feral_affinity.enabled ) & ( ! druid.catweave_bear ) & ( ! druid.owlweave_bear ) & ( covenant.night_fae & cooldown.convoke_the_spirits.remains <= 1 ) )",
								["list_name"] = "cconvoke",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "kindred_spirits",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & druid.catweave_bear",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up & ( ! druid.catweave_bear || buff.cat_form.down ) & ( ! druid.owlweave_bear || buff.moonkin_form.down )",
								["action"] = "bear_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up || buff.moonkin_form.up & talent.balance_affinity.enabled )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & druid.owlweave_bear & ! covenant.night_fae",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & druid.owlweave_bear & covenant.night_fae",
								["action"] = "starfire",
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.ticking || active_enemies > 1 ) & dot.thrash_bear.ticking",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
						},
						["oconvoke"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.first_strike.enabled & buff.first_strike.up",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || eclipse.solar_next",
								["action"] = "starfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || eclipse.lunar_next",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up",
								["action"] = "convoke_the_spirits",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & cooldown.heart_of_the_wild.remains > 15",
								["action"] = "convoke_the_spirits",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.heart_of_the_wild.enabled",
								["action"] = "convoke_the_spirits",
							}, -- [8]
						},
						["cconvoke"] = {
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.first_strike.enabled & buff.first_strike.up",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up",
								["action"] = "convoke_the_spirits",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & cooldown.heart_of_the_wild.remains > 15",
								["action"] = "convoke_the_spirits",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.heart_of_the_wild.enabled",
								["action"] = "convoke_the_spirits",
							}, -- [6]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.first_strike.enabled",
								["action"] = "convoke_the_spirits",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "druid.owlweave_bear",
								["action"] = "empower_bond",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable || buff.galactic_guardian.up",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & eclipse.any_next",
								["action"] = "starfire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! covenant.night_fae & eclipse.any_next",
								["action"] = "wrath",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.up || buff.eclipse_solar.up )",
								["action"] = "convoke_the_spirits",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.in_lunar || eclipse.solar_next ) || ( eclipse.in_lunar & buff.starsurge_empowerment_lunar.up )",
								["action"] = "starfire",
							}, -- [12]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [13]
						},
					},
					["version"] = 20210403,
					["warnings"] = "Imported 11 action lists.\n",
					["spec"] = 104,
					["profile"] = "# Guardian Druid\n# April 2, 2020\n\n# Changes:\n# - Incorporate Cat/Moonkin priorities (if setting is checked).\n# - Incorporate option to shift (or not) before Convoke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/kindred_spirits\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up&(!druid.catweave_bear||buff.cat_form.down)&(!druid.owlweave_bear||buff.moonkin_form.down)\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up||buff.moonkin_form.up&talent.balance_affinity.enabled)\nactions.precombat+=/wrath,if=buff.moonkin_form.up&druid.owlweave_bear&!covenant.night_fae\nactions.precombat+=/starfire,if=buff.moonkin_form.up&druid.owlweave_bear&covenant.night_fae\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/use_items,if=!buff.prowl.up\nactions+=/potion,if=(((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)&(druid.catweave_bear||druid.owlweave_bear)&!buff.prowl.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\n## Catweaving action list will be ran if, mangle/thrash are on cd, rage is below 40, zerk and incarnation are down and Gualactic guardian buff is not active, or if, we're in catform and energy is above 25, Or if we have the Oath legendary equipped, the debuff linked to it is not up and energy is above 20,Or if we're kyrian and Empower bond cooldown is up and enemies are inferior to 2.\n## actions+=/run_action_list,name=catweave,if=druid.catweave_bear&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5&rage<40&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&buff.galactic_guardian.down)||(buff.cat_form.up&energy>25)||(dot.rake.refreshable&dot.rip.refreshable)||(runeforge.oath_of_the_elder_druid.equipped&!buff.oath_of_the_elder_druid.up&(buff.cat_form.up&energy>20)&buff.heart_of_the_wild.remains<=10)||(covenant.kyrian&cooldown.empower_bond.remains<=1&active_enemies<2)||(buff.heart_of_the_wild.up&energy>90))\nactions+=/run_action_list,name=catweave,strict=1,if=druid.catweave_bear&buff.cat_form.up\n## Owlweaving action list will be ran if, mangle/thrash are on cd, rage is below 15, zerk and incarnation are down and Gualactic guardian buff is not active. Or if, we're in moonkin form and sunfire is refreshable, Or if we have the Oath legendary equipped, the debuff linked to it is not up.Or if we're kyrian and Empower bond cooldown is up and enemies are below 2, or if we're Night fae and Convoke cd is up.\n## actions+=/run_action_list,name=owlweave,if=druid.owlweave_bear&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&rage<20&buff.incarnation.down&buff.berserk_bear.down)||(buff.moonkin_form.up&dot.sunfire.refreshable)||(buff.moonkin_form.up&buff.heart_of_the_wild.up)||(buff.moonkin_form.up&(buff.eclipse_lunar.up||buff.eclipse_solar.up)&!runeforge.oath_of_the_elder_druid.equipped)||(runeforge.oath_of_the_elder_druid.equipped&!buff.oath_of_the_elder_druid.up)||(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1)||(covenant.kyrian&cooldown.empower_bond.remains<=1&active_enemies<2))\nactions+=/run_action_list,name=owlweave,strict=1,if=druid.owlweave_bear&buff.moonkin_form.up\n# If we have Lycara legendary equipped and balance affinity as a talent we switch into moonkin form whenever the lycara buff is at or below 2 sec\nactions+=/run_action_list,name=lycarao,if=((runeforge.lycaras_fleeting_glimpse.equipped)&(talent.balance_affinity.enabled)&(buff.lycaras_fleeting_glimpse.up)&(buff.lycaras_fleeting_glimpse.remains<=2))\n# If we have Lycara legendary equipped and feral affinity as a talent we switch into feral form whenever the lycara buff is at or below 2 sec\nactions+=/run_action_list,name=lycarac,if=((runeforge.lycaras_fleeting_glimpse.equipped)&(talent.feral_affinity.enabled)&(buff.lycaras_fleeting_glimpse.up)&(buff.lycaras_fleeting_glimpse.remains<=2))\n# If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here moonkin form.\nactions+=/run_action_list,name=oconvoke,if=settings.shift_for_convoke&((talent.balance_affinity.enabled)&(!druid.catweave_bear)&(!druid.owlweave_bear)&(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1))\n# If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here catform form.\nactions+=/run_action_list,name=cconvoke,if=settings.shift_for_convoke&((talent.feral_affinity.enabled)&(!druid.catweave_bear)&(!druid.owlweave_bear)&(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1))\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear=bear_form,if=!buff.bear_form.up\nactions.bear+=/ravenous_frenzy\nactions.bear+=/convoke_the_spirits,if=!druid.catweave_bear&!druid.owlweave_bear\nactions.bear+=/berserk_bear,if=(buff.ravenous_frenzy.up||!covenant.venthyr)\nactions.bear+=/incarnation,if=(buff.ravenous_frenzy.up||!covenant.venthyr)\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.bear+=/thrash_bear,target_if=refreshable||dot.thrash_bear.stack<3||(dot.thrash_bear.stack<4&runeforge.luffainfused_embrace.equipped)||active_enemies>=4\nactions.bear+=/moonfire,if=((buff.galactic_guardian.up)&active_enemies<2)||((buff.galactic_guardian.up)&!dot.moonfire.ticking&active_enemies>1&target.time_to_die>12)\nactions.bear+=/moonfire,if=(dot.moonfire.remains<=3&(buff.galactic_guardian.up)&active_enemies>5&target.time_to_die>12)\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/moonfire,if=(refreshable&active_enemies<2&target.time_to_die>12)||(!dot.moonfire.ticking&active_enemies>1&target.time_to_die>12)\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=4\nactions.bear+=/maul,if=buff.incarnation.up&active_enemies<2\nactions.bear+=/maul,if=(buff.savage_combatant.stack>=1)&(buff.tooth_and_claw.up)&buff.incarnation.up&active_enemies=2\nactions.bear+=/mangle,if=buff.incarnation.up&active_enemies<=3\nactions.bear+=/maul,if=(((buff.tooth_and_claw.stack>=2)||(buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1.5)||(buff.savage_combatant.stack>=3))&active_enemies<3)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/mangle,if=((rage<90)&active_enemies<3)||((rage<85)&active_enemies<3&talent.soul_of_the_forest.enabled)\nactions.bear+=/pulverize,cycle_targets=1,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/maul,if=active_enemies<3\nactions.bear+=/swipe_bear\nactions.bear+=/ironfur,if=rage.deficit<40&buff.ironfur.remains<0.5\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/renewal,if=tanking&health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/incarnation,if=(dot.moonfire.ticking||active_enemies>1)&dot.thrash_bear.ticking\nactions.cooldowns+=/berserk\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast\nactions.cooldowns+=/use_items\n\nactions.catweave=prowl\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/empower_bond,if=druid.catweave_bear\nactions.catweave+=/rake,if=dot.rake.refreshable&combo_points<4\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=4\nactions.catweave+=/convoke_the_spirits,if=druid.catweave_bear\nactions.catweave+=/ferocious_bite,max_energy=1,if=combo_points>=4\nactions.catweave+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.catweave+=/shred,if=combo_points.current<5\n\nactions.cconvoke=cat_form\nactions.cconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.cconvoke+=/convoke_the_spirits,if=soulbind.first_strike.enabled&buff.first_strike.up\nactions.cconvoke+=/convoke_the_spirits,if=talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up\nactions.cconvoke+=/convoke_the_spirits,if=talent.heart_of_the_wild.enabled&cooldown.heart_of_the_wild.remains>15\nactions.cconvoke+=/convoke_the_spirits,if=!talent.heart_of_the_wild.enabled\n\nactions.lycarac=cat_form\n\nactions.lycarao=moonkin_form\n\nactions.oconvoke=moonkin_form\nactions.oconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.oconvoke+=/convoke_the_spirits,if=soulbind.first_strike.enabled&buff.first_strike.up\nactions.oconvoke+=/starfire,if=eclipse.any_next||eclipse.solar_next\nactions.oconvoke+=/wrath,if=eclipse.any_next||eclipse.lunar_next\nactions.oconvoke+=/convoke_the_spirits,if=talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up\nactions.oconvoke+=/convoke_the_spirits,if=talent.heart_of_the_wild.enabled&cooldown.heart_of_the_wild.remains>15\nactions.oconvoke+=/convoke_the_spirits,if=!talent.heart_of_the_wild.enabled\n\nactions.owlweave=moonkin_form,if=!buff.moonkin_form.up\nactions.owlweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.owlweave+=/starsurge\nactions.owlweave+=/convoke_the_spirits,if=soulbind.first_strike.enabled\nactions.owlweave+=/empower_bond,if=druid.owlweave_bear\nactions.owlweave+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.owlweave+=/sunfire,cycle_targets=1,if=refreshable\nactions.owlweave+=/moonfire,cycle_targets=1,if=refreshable||buff.galactic_guardian.up\nactions.owlweave+=/starfire,if=covenant.night_fae&eclipse.any_next\nactions.owlweave+=/wrath,if=!covenant.night_fae&eclipse.any_next\nactions.owlweave+=/convoke_the_spirits,if=(buff.eclipse_lunar.up||buff.eclipse_solar.up)\nactions.owlweave+=/starfire,if=(eclipse.in_lunar||eclipse.solar_next)||(eclipse.in_lunar&buff.starsurge_empowerment_lunar.up)\nactions.owlweave+=/wrath",
				},
			},
			["iconStore"] = {
				["minimapPos"] = 290.3374167957023,
				["hide"] = true,
			},
			["notifications"] = {
				["y"] = -294.999755859375,
				["x"] = -552.5,
			},
			["minimapIcon"] = true,
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
					["separate"] = true,
				},
				["defensives"] = {
					["separate"] = true,
				},
				["interrupts"] = {
					["value"] = true,
					["separate"] = true,
				},
			},
		},
		["Hanet - Eonar"] = {
			["enabled"] = false,
			["specs"] = {
				[252] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Unholy",
					["settings"] = {
						["festermight_cycle"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["throttleRefresh"] = false,
					["throttleTime"] = false,
					["cycle"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_unbridled_fury",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["damage"] = true,
					["damageRange"] = 0,
				},
				[251] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["bos_rp"] = 50,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Frost DK",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[250] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["save_blood_shield"] = true,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Blood",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Unholy"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200614,
					["spec"] = 252,
					["desc"] = "# Unholy Death Knight\n# https://github.com/simulationcraft/simc/\n# May 25, 2020\n\n# Changes:\n# - Added Mind Freeze.\n# - Converted target_if conditions to regular conditions.\n# - Racials/Font of Power tweaks.",
					["lists"] = {
						["essences"] = {
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_1 > gcd & runic_power < 40",
								["action"] = "memory_of_lucid_dreams",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking || pet.apoc_ghoul.active & active_enemies = 1",
								["action"] = "blood_of_the_enemy",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.apocalypse.remains < 6 & cooldown.army_of_the_dead.remains > cooldown.condensed_lifeforce.remains ) || cooldown.army_of_the_dead.remains < 2 || corruptions.ineffable_truth.enabled",
								["action"] = "guardian_of_azeroth",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || buff.reckless_force_counter.stack < 11",
								["action"] = "the_unbound_force",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking",
								["action"] = "focused_azerite_beam",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame_burn.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking",
								["action"] = "purifying_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.army_of_the_damned.enabled & essence.vision_of_perfection.minor & buff.unholy_strength.up || essence.vision_of_perfection.minor & pet.apoc_ghoul.active || talent.army_of_the_damned.enabled & pet.apoc_ghoul.active & cooldown.army_of_the_dead.remains > 60 || talent.army_of_the_damned.enabled & pet.army_ghoul.active",
								["action"] = "worldvein_resonance",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & buff.unholy_strength.up & ! essence.vision_of_perfection.minor & ! talent.army_of_the_damned.enabled || target.time_to_die < cooldown.apocalypse.remains",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking",
								["action"] = "ripple_in_space",
							}, -- [10]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.summon_gargoyle.remains < 5 & talent.summon_gargoyle.enabled",
								["var_name"] = "pooling_for_gargoyle",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 65 & ( pet.gargoyle.active || ! talent.summon_gargoyle.enabled ) & rune.deficit >= 5",
								["action"] = "arcane_torrent",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_frenzy.up || pet.gargoyle.active || ( talent.army_of_the_damned.enabled & pet.apoc_ghoul.active )",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.unholy_strength.up & buff.festermight.remains <= 5 ) || active_enemies >= 2 & ( buff.unholy_strength.up || buff.festermight.remains <= 5 )",
								["action"] = "lights_judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( pet.gargoyle.active & talent.summon_gargoyle.enabled ) || pet.apoc_ghoul.active",
								["action"] = "ancestral_call",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || ( rune.deficit >= 5 & runic_power.deficit >= 60 )",
								["action"] = "arcane_pulse",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( pet.gargoyle.active & talent.summon_gargoyle.enabled ) || pet.apoc_ghoul.active",
								["action"] = "fireblood",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & active_enemies = 1 || buff.festermight.remains < gcd & active_enemies = 1",
								["action"] = "bag_of_tricks",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "time > 20 || ! equipped.ramping_amplitude_gigavolt_engine || ! equipped.vision_of_demise",
								["action"] = "use_items",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "( essence.vision_of_perfection.enabled & ! talent.unholy_frenzy.enabled ) || ( ! essence.condensed_lifeforce.major & ! essence.vision_of_perfection.enabled )",
								["name"] = "azsharas_font_of_power",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.apocalypse.remains < 14 & ( essence.condensed_lifeforce.major || essence.vision_of_perfection.enabled & talent.unholy_frenzy.enabled )",
								["name"] = "azsharas_font_of_power",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "time_to_die < cooldown.apocalypse.remains + 34",
								["name"] = "azsharas_font_of_power",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.stack < 1",
								["name"] = "ashvanes_razor_coral",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "pet.guardian_of_azeroth.active & pet.apoc_ghoul.active",
								["name"] = "ashvanes_razor_coral",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "cooldown.apocalypse.ready & ( essence.condensed_lifeforce.major & time_to_die < cooldown.condensed_lifeforce.remains + 20 || ! essence.condensed_lifeforce.major )",
								["name"] = "ashvanes_razor_coral",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "time_to_die < cooldown.apocalypse.remains + 20",
								["name"] = "ashvanes_razor_coral",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "vision_of_demise",
								["criteria"] = "( cooldown.apocalypse.ready & debuff.festering_wound.stack >= 4 & essence.vision_of_perfection.enabled ) || buff.unholy_frenzy.up || pet.gargoyle.active",
								["name"] = "vision_of_demise",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "ramping_amplitude_gigavolt_engine",
								["criteria"] = "cooldown.apocalypse.remains < 2 || talent.army_of_the_damned.enabled || raid_event.adds.in < 5",
								["name"] = "ramping_amplitude_gigavolt_engine",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "bygone_bee_almanac",
								["criteria"] = "cooldown.summon_gargoyle.remains > 60 || ! talent.summon_gargoyle.enabled & time > 20 || ! equipped.ramping_amplitude_gigavolt_engine",
								["name"] = "bygone_bee_almanac",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "jes_howler",
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled & time > 20 || ! equipped.ramping_amplitude_gigavolt_engine",
								["name"] = "jes_howler",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "galecallers_beak",
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled & time > 20 || ! equipped.ramping_amplitude_gigavolt_engine",
								["name"] = "galecallers_beak",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "grongs_primal_rage",
								["criteria"] = "rune <= 3 & ( time > 20 || ! equipped.ramping_amplitude_gigavolt_engine )",
								["name"] = "grongs_primal_rage",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.army_of_the_dead.ready || pet.gargoyle.active || buff.unholy_frenzy.up",
								["action"] = "potion",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "dot.virulent_plague.remains <= gcd",
								["action"] = "outbreak",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 2",
								["list_name"] = "aoe",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "generic",
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack < 4",
								["cycle_targets"] = 1,
							}, -- [31]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["delay"] = "2",
								["action"] = "army_of_the_dead",
							}, -- [4]
						},
						["cooldowns"] = {
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack >= 4 & ( active_enemies >= 2 || ! essence.vision_of_perfection.enabled || ! azerite.magus_of_the_dead.enabled || essence.vision_of_perfection.enabled & ( talent.unholy_frenzy.enabled & cooldown.unholy_frenzy.remains <= 3 || ! talent.unholy_frenzy.enabled ) )",
								["action"] = "apocalypse",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists || raid_event.adds.in > 15",
								["action"] = "dark_transformation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14",
								["action"] = "summon_gargoyle",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "essence.vision_of_perfection.enabled & pet.apoc_ghoul.active || debuff.festering_wound.stack < 4 & ! essence.vision_of_perfection.enabled & ( ! azerite.magus_of_the_dead.enabled || azerite.magus_of_the_dead.enabled & pet.apoc_ghoul.active )",
								["action"] = "unholy_frenzy",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( ( cooldown.death_and_decay.remains <= gcd & ! talent.defile.enabled ) || ( cooldown.defile.remains <= gcd & talent.defile.enabled ) )",
								["action"] = "unholy_frenzy",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "soul_reaper",
								["criteria"] = "target.time_to_die < 8 & target.time_to_die > 4",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 20 ) & rune <= ( 1 - buff.unholy_frenzy.up )",
								["action"] = "soul_reaper",
							}, -- [8]
							{
								["action"] = "unholy_blight",
								["enabled"] = true,
							}, -- [9]
						},
						["generic"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & rune.time_to_4 > gcd & ! variable.pooling_for_gargoyle || pet.gargoyle.active",
								["action"] = "death_coil",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14 & rune.time_to_4 > gcd & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ( debuff.festering_wound.up & ( cooldown.apocalypse.remains > 5 & ( ! essence.vision_of_perfection.enabled || ! talent.unholy_frenzy.enabled ) || essence.vision_of_perfection.enabled & talent.unholy_frenzy.enabled & cooldown.unholy_frenzy.remains > 6 ) ) || debuff.festering_wound.stack > 4 ) & ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd )",
								["action"] = "scourge_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ( debuff.festering_wound.up & ( cooldown.apocalypse.remains > 5 & ( ! essence.vision_of_perfection.enabled || ! talent.unholy_frenzy.enabled ) || essence.vision_of_perfection.enabled & talent.unholy_frenzy.enabled & cooldown.unholy_frenzy.remains > 6 ) ) || debuff.festering_wound.stack > 4 ) & ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd )",
								["action"] = "clawing_shadows",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack < 4 & ( cooldown.apocalypse.remains < 3 & ( ! essence.vision_of_perfection.enabled || ! talent.unholy_frenzy.enabled || essence.vision_of_perfection.enabled & talent.unholy_frenzy.enabled & cooldown.unholy_frenzy.remains < 7 ) ) || debuff.festering_wound.stack < 1 & ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd )",
								["action"] = "festering_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains",
								["action"] = "death_and_decay",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains",
								["action"] = "defile",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & runic_power.deficit < 14 & ! talent.bursting_sores.enabled & ! variable.pooling_for_gargoyle",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & ( ! death_knight.fwounded_targets & talent.bursting_sores.enabled ) & ! variable.pooling_for_gargoyle",
								["action"] = "epidemic",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & cooldown.apocalypse.remains",
								["action"] = "scourge_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & cooldown.apocalypse.remains",
								["action"] = "clawing_shadows",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_gargoyle",
								["action"] = "epidemic",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack <= 2 & cooldown.death_and_decay.remains & cooldown.apocalypse.remains > 5 & ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & rune.time_to_4 > gcd",
								["action"] = "death_coil",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & ! variable.pooling_for_gargoyle || pet.gargoyle.active",
								["action"] = "death_coil",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14 & ( cooldown.apocalypse.remains > 5 || debuff.festering_wound.stack > 4 ) & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "scourge_strike",
								["criteria"] = "( ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd ) & ( cooldown.apocalypse.remains > 5 & debuff.festering_wound.stack > 0 || debuff.festering_wound.stack > 4 ) & ( time_to_die < cooldown.death_and_decay.remains + 10 || time_to_die > cooldown.apocalypse.remains ) )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "clawing_shadows",
								["criteria"] = "( ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd ) & ( cooldown.apocalypse.remains > 5 & debuff.festering_wound.stack > 0 || debuff.festering_wound.stack > 4 ) & ( time_to_die < cooldown.death_and_decay.remains + 10 || time_to_die > cooldown.apocalypse.remains ) )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( ( debuff.festering_wound.stack < 4 & ! buff.unholy_frenzy.up ) || debuff.festering_wound.stack < 3 ) & cooldown.apocalypse.remains < 3 ) || debuff.festering_wound.stack < 1 ) & ( cooldown.army_of_the_dead.remains > 5 || death_knight.disable_aotd )",
								["action"] = "festering_strike",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking",
								["action"] = "scourge_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [17]
						},
					},
					["version"] = 20200614,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "# Unholy Death Knight\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Added Mind Freeze.\n# - Converted target_if conditions to regular conditions.\n# - Racials/Font of Power tweaks.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/raise_dead\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/army_of_the_dead,delay=2\n\n# Executed every time the actor is available.\nactions=mind_freeze\nactions+=/variable,name=pooling_for_gargoyle,value=cooldown.summon_gargoyle.remains<5&talent.summon_gargoyle.enabled\n# Racials, Items, and other ogcds\nactions+=/arcane_torrent,if=runic_power.deficit>65&(pet.gargoyle.active||!talent.summon_gargoyle.enabled)&rune.deficit>=5\nactions+=/blood_fury,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled\nactions+=/berserking,if=buff.unholy_frenzy.up||pet.gargoyle.active||(talent.army_of_the_damned.enabled&pet.apoc_ghoul.active)\nactions+=/lights_judgment,if=(buff.unholy_strength.up&buff.festermight.remains<=5)||active_enemies>=2&(buff.unholy_strength.up||buff.festermight.remains<=5)\nactions+=/ancestral_call,if=(pet.gargoyle.active&talent.summon_gargoyle.enabled)||pet.apoc_ghoul.active\nactions+=/arcane_pulse,if=active_enemies>=2||(rune.deficit>=5&runic_power.deficit>=60)\nactions+=/fireblood,if=(pet.gargoyle.active&talent.summon_gargoyle.enabled)||pet.apoc_ghoul.active\nactions+=/bag_of_tricks,if=buff.unholy_strength.up&active_enemies=1||buff.festermight.remains<gcd&active_enemies=1\n\n# Custom trinkets usage\nactions+=/use_items,if=time>20||!equipped.ramping_amplitude_gigavolt_engine||!equipped.vision_of_demise\nactions+=/use_item,name=azsharas_font_of_power,if=(essence.vision_of_perfection.enabled&!talent.unholy_frenzy.enabled)||(!essence.condensed_lifeforce.major&!essence.vision_of_perfection.enabled)\nactions+=/use_item,name=azsharas_font_of_power,if=cooldown.apocalypse.remains<14&(essence.condensed_lifeforce.major||essence.vision_of_perfection.enabled&talent.unholy_frenzy.enabled)\nactions+=/use_item,name=azsharas_font_of_power,if=time_to_die<cooldown.apocalypse.remains+34\nactions+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack<1\nactions+=/use_item,name=ashvanes_razor_coral,if=pet.guardian_of_azeroth.active&pet.apoc_ghoul.active\nactions+=/use_item,name=ashvanes_razor_coral,if=cooldown.apocalypse.ready&(essence.condensed_lifeforce.major&time_to_die<cooldown.condensed_lifeforce.remains+20||!essence.condensed_lifeforce.major)\nactions+=/use_item,name=ashvanes_razor_coral,if=time_to_die<cooldown.apocalypse.remains+20\nactions+=/use_item,name=vision_of_demise,if=(cooldown.apocalypse.ready&debuff.festering_wound.stack>=4&essence.vision_of_perfection.enabled)||buff.unholy_frenzy.up||pet.gargoyle.active\nactions+=/use_item,name=ramping_amplitude_gigavolt_engine,if=cooldown.apocalypse.remains<2||talent.army_of_the_damned.enabled||raid_event.adds.in<5\nactions+=/use_item,name=bygone_bee_almanac,if=cooldown.summon_gargoyle.remains>60||!talent.summon_gargoyle.enabled&time>20||!equipped.ramping_amplitude_gigavolt_engine\nactions+=/use_item,name=jes_howler,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled&time>20||!equipped.ramping_amplitude_gigavolt_engine\nactions+=/use_item,name=galecallers_beak,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled&time>20||!equipped.ramping_amplitude_gigavolt_engine\nactions+=/use_item,name=grongs_primal_rage,if=rune<=3&(time>20||!equipped.ramping_amplitude_gigavolt_engine)\nactions+=/potion,if=cooldown.army_of_the_dead.ready||pet.gargoyle.active||buff.unholy_frenzy.up\n# Maintaining Virulent Plague is a priority\nactions+=/outbreak,if=dot.virulent_plague.remains<=gcd\nactions+=/call_action_list,name=essences\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,strict=1,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,strict=1,name=generic,if=active_enemies=1\nactions+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<4\n\n# AoE rotation\nactions.aoe=death_and_decay,if=cooldown.apocalypse.remains\nactions.aoe+=/defile,if=cooldown.apocalypse.remains\nactions.aoe+=/epidemic,if=death_and_decay.ticking&runic_power.deficit<14&!talent.bursting_sores.enabled&!variable.pooling_for_gargoyle\nactions.aoe+=/epidemic,if=death_and_decay.ticking&(!death_knight.fwounded_targets&talent.bursting_sores.enabled)&!variable.pooling_for_gargoyle\nactions.aoe+=/scourge_strike,if=death_and_decay.ticking&cooldown.apocalypse.remains\nactions.aoe+=/clawing_shadows,if=death_and_decay.ticking&cooldown.apocalypse.remains\nactions.aoe+=/epidemic,if=!variable.pooling_for_gargoyle\nactions.aoe+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<=2&cooldown.death_and_decay.remains&cooldown.apocalypse.remains>5&(cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)\nactions.aoe+=/death_coil,if=buff.sudden_doom.react&rune.time_to_4>gcd\nactions.aoe+=/death_coil,if=buff.sudden_doom.react&!variable.pooling_for_gargoyle||pet.gargoyle.active\nactions.aoe+=/death_coil,if=runic_power.deficit<14&(cooldown.apocalypse.remains>5||debuff.festering_wound.stack>4)&!variable.pooling_for_gargoyle\nactions.aoe+=/scourge_strike,cycle_targets=1,if=((cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)&(cooldown.apocalypse.remains>5&debuff.festering_wound.stack>0||debuff.festering_wound.stack>4)&(time_to_die<cooldown.death_and_decay.remains+10||time_to_die>cooldown.apocalypse.remains))\nactions.aoe+=/clawing_shadows,cycle_targets=1,if=((cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)&(cooldown.apocalypse.remains>5&debuff.festering_wound.stack>0||debuff.festering_wound.stack>4)&(time_to_die<cooldown.death_and_decay.remains+10||time_to_die>cooldown.apocalypse.remains))\nactions.aoe+=/death_coil,if=runic_power.deficit<20&!variable.pooling_for_gargoyle\nactions.aoe+=/festering_strike,if=((((debuff.festering_wound.stack<4&!buff.unholy_frenzy.up)||debuff.festering_wound.stack<3)&cooldown.apocalypse.remains<3)||debuff.festering_wound.stack<1)&(cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)\nactions.aoe+=/scourge_strike,if=death_and_decay.ticking\nactions.aoe+=/death_coil,if=!variable.pooling_for_gargoyle\n\nactions.cooldowns=army_of_the_dead\nactions.cooldowns+=/apocalypse,if=debuff.festering_wound.stack>=4&(active_enemies>=2||!essence.vision_of_perfection.enabled||!azerite.magus_of_the_dead.enabled||essence.vision_of_perfection.enabled&(talent.unholy_frenzy.enabled&cooldown.unholy_frenzy.remains<=3||!talent.unholy_frenzy.enabled))\nactions.cooldowns+=/dark_transformation,if=!raid_event.adds.exists||raid_event.adds.in>15\nactions.cooldowns+=/summon_gargoyle,if=runic_power.deficit<14\nactions.cooldowns+=/unholy_frenzy,if=essence.vision_of_perfection.enabled&pet.apoc_ghoul.active||debuff.festering_wound.stack<4&!essence.vision_of_perfection.enabled&(!azerite.magus_of_the_dead.enabled||azerite.magus_of_the_dead.enabled&pet.apoc_ghoul.active)\nactions.cooldowns+=/unholy_frenzy,if=active_enemies>=2&((cooldown.death_and_decay.remains<=gcd&!talent.defile.enabled)||(cooldown.defile.remains<=gcd&talent.defile.enabled))\nactions.cooldowns+=/soul_reaper,cycle_targets=1,if=target.time_to_die<8&target.time_to_die>4\nactions.cooldowns+=/soul_reaper,if=(!raid_event.adds.exists||raid_event.adds.in>20)&rune<=(1-buff.unholy_frenzy.up)\nactions.cooldowns+=/unholy_blight\n\nactions.essences=memory_of_lucid_dreams,if=rune.time_to_1>gcd&runic_power<40\nactions.essences+=/blood_of_the_enemy,if=death_and_decay.ticking||pet.apoc_ghoul.active&active_enemies=1\nactions.essences+=/guardian_of_azeroth,if=(cooldown.apocalypse.remains<6&cooldown.army_of_the_dead.remains>cooldown.condensed_lifeforce.remains)||cooldown.army_of_the_dead.remains<2||corruptions.ineffable_truth.enabled\nactions.essences+=/the_unbound_force,if=buff.reckless_force.up||buff.reckless_force_counter.stack<11\nactions.essences+=/focused_azerite_beam,if=!death_and_decay.ticking\nactions.essences+=/concentrated_flame,if=dot.concentrated_flame_burn.remains=0\nactions.essences+=/purifying_blast,if=!death_and_decay.ticking\nactions.essences+=/worldvein_resonance,if=talent.army_of_the_damned.enabled&essence.vision_of_perfection.minor&buff.unholy_strength.up||essence.vision_of_perfection.minor&pet.apoc_ghoul.active||talent.army_of_the_damned.enabled&pet.apoc_ghoul.active&cooldown.army_of_the_dead.remains>60||talent.army_of_the_damned.enabled&pet.army_ghoul.active\nactions.essences+=/worldvein_resonance,if=!death_and_decay.ticking&buff.unholy_strength.up&!essence.vision_of_perfection.minor&!talent.army_of_the_damned.enabled||target.time_to_die<cooldown.apocalypse.remains\nactions.essences+=/ripple_in_space,if=!death_and_decay.ticking\nactions.essences+=/reaping_flames\n\nactions.generic=death_coil,if=buff.sudden_doom.react&rune.time_to_4>gcd&!variable.pooling_for_gargoyle||pet.gargoyle.active\nactions.generic+=/death_coil,if=runic_power.deficit<14&rune.time_to_4>gcd&!variable.pooling_for_gargoyle\nactions.generic+=/scourge_strike,if=((debuff.festering_wound.up&(cooldown.apocalypse.remains>5&(!essence.vision_of_perfection.enabled||!talent.unholy_frenzy.enabled)||essence.vision_of_perfection.enabled&talent.unholy_frenzy.enabled&cooldown.unholy_frenzy.remains>6))||debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)\nactions.generic+=/clawing_shadows,if=((debuff.festering_wound.up&(cooldown.apocalypse.remains>5&(!essence.vision_of_perfection.enabled||!talent.unholy_frenzy.enabled)||essence.vision_of_perfection.enabled&talent.unholy_frenzy.enabled&cooldown.unholy_frenzy.remains>6))||debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)\nactions.generic+=/death_coil,if=runic_power.deficit<20&!variable.pooling_for_gargoyle\nactions.generic+=/festering_strike,if=debuff.festering_wound.stack<4&(cooldown.apocalypse.remains<3&(!essence.vision_of_perfection.enabled||!talent.unholy_frenzy.enabled||essence.vision_of_perfection.enabled&talent.unholy_frenzy.enabled&cooldown.unholy_frenzy.remains<7))||debuff.festering_wound.stack<1&(cooldown.army_of_the_dead.remains>5||death_knight.disable_aotd)\nactions.generic+=/death_coil,if=!variable.pooling_for_gargoyle",
				},
				["Frost DK"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200619,
					["author"] = "SimC",
					["desc"] = "# Frost Death Knight\n# https://github.com/simulationcraft/simc/\n# June 19, 2020\n\n# Changes:\n# - Include Mind Freeze.\n# - Add fallback for using ERW, PoF if player initiates BoS before pooling logic is completed.\n# - Change target.time_to_die to time_to_die to use encounter length rather than potential trash deaths.\n# - Cold Heart and racial tweaks.",
					["lists"] = {
						["cold_heart"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.cold_heart.stack > 5 & time_to_die < gcd",
								["action"] = "chains_of_ice",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.seething_rage.remains < gcd ) & buff.seething_rage.up",
								["action"] = "chains_of_ice",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.pillar_of_frost.remains <= gcd * ( 1 + cooldown.frostwyrms_fury.ready ) || buff.pillar_of_frost.remains < rune.time_to_3 ) & buff.pillar_of_frost.up & ( azerite.icy_citadel.rank <= 1 || buff.breath_of_sindragosa.up ) & ! talent.icecap.enabled",
								["action"] = "chains_of_ice",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains < 8 & buff.unholy_strength.remains < gcd * ( 1 + cooldown.frostwyrms_fury.ready ) & buff.unholy_strength.remains & buff.pillar_of_frost.up & ( azerite.icy_citadel.rank <= 1 || buff.breath_of_sindragosa.up ) & ! talent.icecap.enabled",
								["action"] = "chains_of_ice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.icy_citadel.remains < 4 || buff.icy_citadel.remains < rune.time_to_3 ) & buff.icy_citadel.up & azerite.icy_citadel.rank >= 2 & ! buff.breath_of_sindragosa.up & ! talent.icecap.enabled",
								["action"] = "chains_of_ice",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_citadel.up & buff.unholy_strength.up & azerite.icy_citadel.rank >= 2 & ! buff.breath_of_sindragosa.up & ! talent.icecap.enabled",
								["action"] = "chains_of_ice",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains < 4 & buff.pillar_of_frost.up & talent.icecap.enabled & buff.cold_heart.stack >= 18 & azerite.icy_citadel.rank <= 1",
								["action"] = "chains_of_ice",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & talent.icecap.enabled & azerite.icy_citadel.rank >= 2 & ( buff.cold_heart.stack >= 19 & buff.icy_citadel.remains < gcd & buff.icy_citadel.up || buff.unholy_strength.up & buff.cold_heart.stack >= 18 )",
								["action"] = "chains_of_ice",
							}, -- [8]
						},
						["obliteration"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & ! talent.frostscythe.enabled & ! buff.rime.up & spell_targets.howling_blast >= 3",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.frostscythe.enabled & ! buff.rime.up & spell_targets.howling_blast >= 3",
								["action"] = "obliterate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.killing_machine.react || ( buff.killing_machine.up & ( prev_gcd.1.frost_strike || prev_gcd.1.howling_blast || prev_gcd.1.glacial_advance ) ) ) & spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & buff.killing_machine.react || ( buff.killing_machine.up & ( prev_gcd.1.frost_strike || prev_gcd.1.howling_blast || prev_gcd.1.glacial_advance ) )",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react || ( buff.killing_machine.up & ( prev_gcd.1.frost_strike || prev_gcd.1.howling_blast || prev_gcd.1.glacial_advance ) )",
								["action"] = "obliterate",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.rime.up || runic_power.deficit < 10 || rune.time_to_2 > gcd ) & spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & spell_targets.howling_blast >= 2",
								["action"] = "howling_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & ! buff.rime.up || runic_power.deficit < 10 || rune.time_to_2 > gcd & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rime.up || runic_power.deficit < 10 || rune.time_to_2 > gcd",
								["action"] = "frost_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [13]
						},
						["bos_ticking"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.empower_rune_weapon.remains",
								["action"] = "pillar_of_frost",
							}, -- [1]
							{
								["action"] = "empower_rune_weapon",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power <= 32 & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power <= 32",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled",
								["action"] = "remorseless_winter",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & rune.time_to_5 < gcd || runic_power <= 45 & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_5 < gcd || runic_power <= 45",
								["action"] = "obliterate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= 32 & rune.time_to_3 > gcd",
								["action"] = "horn_of_winter",
							}, -- [10]
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit > 25 || rune > 3 & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 25 || rune > 3",
								["action"] = "obliterate",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 50",
								["action"] = "arcane_torrent",
							}, -- [15]
						},
						["essences"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & ( buff.pillar_of_frost.remains < 10 & ( buff.breath_of_sindragosa.up || talent.obliteration.enabled || talent.icecap.enabled & ! azerite.icy_citadel.enabled ) || buff.icy_citadel.up & talent.icecap.enabled ) & ( active_enemies = 1 || ! talent.icecap.enabled ) || active_enemies >= 2 & talent.icecap.enabled & cooldown.pillar_of_frost.ready & ( azerite.icy_citadel.rank >= 1 & buff.icy_citadel.up || ! azerite.icy_citadel.enabled )",
								["action"] = "blood_of_the_enemy",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.icecap.enabled || talent.icecap.enabled & azerite.icy_citadel.enabled & buff.pillar_of_frost.remains < 6 & buff.pillar_of_frost.up || talent.icecap.enabled & ! azerite.icy_citadel.enabled",
								["action"] = "guardian_of_azeroth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains < 5 & buff.pillar_of_frost.up || time_to_die < 5",
								["action"] = "chill_streak",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || buff.reckless_force_counter.stack < 11",
								["action"] = "the_unbound_force",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up",
								["action"] = "focused_azerite_beam",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up & dot.concentrated_flame_burn.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up || buff.empower_rune_weapon.up || cooldown.breath_of_sindragosa.remains > 60 + 15 || corruptions.ineffable_truth.enabled",
								["action"] = "worldvein_resonance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.pillar_of_frost.up & ! buff.breath_of_sindragosa.up",
								["action"] = "ripple_in_space",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.empower_rune_weapon.remains < 5 & buff.breath_of_sindragosa.up || ( rune.time_to_2 > gcd & runic_power < 50 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [9]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [10]
						},
						["bos_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit >= 25 & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= 25",
								["action"] = "obliterate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & spell_targets.glacial_advance >= 2 & cooldown.pillar_of_frost.remains > 5",
								["action"] = "glacial_advance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit < 20 & ! talent.frostscythe.enabled & cooldown.pillar_of_frost.remains > 5",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & cooldown.pillar_of_frost.remains > 5",
								["action"] = "frost_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & runic_power.deficit > ( 15 + talent.runic_attenuation.enabled * 3 ) & spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= ( 35 + talent.runic_attenuation.enabled * 3 ) & spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit >= ( 35 + talent.runic_attenuation.enabled * 3 ) & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= ( 35 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "obliterate",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40 & spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40 & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40",
								["action"] = "frost_strike",
							}, -- [13]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( equipped.notorious_gladiators_badge || equipped.corrupted_gladiators_badge || equipped.corrupted_gladiators_medallion || equipped.vial_of_animated_blood || equipped.first_mates_spyglass || equipped.jes_howler || equipped.notorious_gladiators_medallion || equipped.ashvanes_razor_coral )",
								["var_name"] = "other_on_use_equipped",
							}, -- [3]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled || ( azerite.frozen_tempest.rank & spell_targets.remorseless_winter >= 3 & ! buff.rime.up )",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.frostscythe.enabled",
								["action"] = "glacial_advance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["action"] = "frost_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "glacial_advance",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 ) & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 ) & ! talent.frostscythe.enabled",
								["action"] = "frost_strike",
							}, -- [9]
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "frostscythe",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & runic_power.deficit > ( 25 + talent.runic_attenuation.enabled * 3 ) & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "obliterate",
							}, -- [13]
							{
								["action"] = "glacial_advance",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "( debuff.razorice.stack < 5 || debuff.razorice.remains < 10 ) & ! talent.frostscythe.enabled",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [18]
						},
						["standard"] = {
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["action"] = "frost_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.icecap.enabled & buff.pillar_of_frost.up & azerite.icy_citadel.rank >= 2",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.frozen_pulse.up & talent.frozen_pulse.enabled",
								["action"] = "obliterate",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "frost_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & rune.time_to_4 >= gcd",
								["action"] = "frostscythe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "obliterate",
							}, -- [8]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & spell_targets.glacial_advance >= 2 & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "glacial_advance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "frost_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.breath_of_sindragosa.up",
								["action"] = "run_action_list",
								["list_name"] = "bos_ticking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( ( cooldown.breath_of_sindragosa.remains = 0 & cooldown.pillar_of_frost.remains < 10 ) || ( cooldown.breath_of_sindragosa.remains < 20 & time_to_die < 35 ) )",
								["action"] = "run_action_list",
								["list_name"] = "bos_pooling",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & talent.obliteration.enabled",
								["action"] = "run_action_list",
								["list_name"] = "obliteration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [11]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "( cooldown.empower_rune_weapon.ready & ! variable.other_on_use_equipped ) || ( cooldown.pillar_of_frost.remains <= 10 & variable.other_on_use_equipped )",
								["name"] = "azsharas_font_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "lurkers_insidious_gift",
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( ( cooldown.pillar_of_frost.remains <= 10 & variable.other_on_use_equipped ) || ( buff.pillar_of_frost.up & ! variable.other_on_use_equipped ) ) || ( buff.pillar_of_frost.up & ! talent.breath_of_sindragosa.enabled )",
								["name"] = "lurkers_insidious_gift",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "! buff.pillar_of_frost.up",
								["name"] = "cyclotronic_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.pillar_of_frost.ready || cooldown.pillar_of_frost.remains > 20 ) & ( ! talent.breath_of_sindragosa.enabled || cooldown.empower_rune_weapon.remains > 95 )",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down",
								["name"] = "ashvanes_razor_coral",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "cooldown.empower_rune_weapon.remains > 90 & debuff.razor_coral_debuff.up & variable.other_on_use_equipped || buff.breath_of_sindragosa.up & debuff.razor_coral_debuff.up & ! variable.other_on_use_equipped || buff.empower_rune_weapon.up & debuff.razor_coral_debuff.up & ! talent.breath_of_sindragosa.enabled || time_to_die < 21",
								["name"] = "ashvanes_razor_coral",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "jes_howler",
								["criteria"] = "( equipped.lurkers_insidious_gift & buff.pillar_of_frost.remains ) || ( ! equipped.lurkers_insidious_gift & buff.pillar_of_frost.remains < 12 & buff.pillar_of_frost.up )",
								["name"] = "jes_howler",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "cooldown.empower_rune_weapon.remains > 40",
								["name"] = "knot_of_ancient_fury",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "grongs_primal_rage",
								["criteria"] = "rune <= 3 & ! buff.pillar_of_frost.up & ( ! buff.breath_of_sindragosa.up || ! talent.breath_of_sindragosa.enabled )",
								["name"] = "grongs_primal_rage",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.breath_of_sindragosa.up & ! buff.pillar_of_frost.up",
								["name"] = "merekthas_fang",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "potion",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "blood_fury",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "berserking",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.pillar_of_frost.up & active_enemies >= 2 ) || ! buff.pillar_of_frost.up & ( rune.deficit >= 5 & runic_power.deficit >= 60 )",
								["action"] = "arcane_pulse",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "lights_judgment",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "ancestral_call",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains <= 8 & buff.empower_rune_weapon.up",
								["action"] = "fireblood",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & ( buff.pillar_of_frost.remains < 5 & talent.cold_heart.enabled || ! talent.cold_heart.enabled & buff.pillar_of_frost.remains < 3 ) & active_enemies = 1 || buff.seething_rage.up & active_enemies = 1",
								["action"] = "bag_of_tricks",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.empower_rune_weapon.remains || talent.icecap.enabled ) & ! buff.pillar_of_frost.up || talent.icecap.enabled & azerite.frostwhelps_indignation.enabled & buff.pillar_of_frost.remains < 2",
								["action"] = "pillar_of_frost",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "breath_of_sindragosa",
								["criteria"] = "cooldown.empower_rune_weapon.remains & cooldown.pillar_of_frost.remains",
								["use_off_gcd"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.ready & talent.obliteration.enabled & rune.time_to_5 > gcd & runic_power.deficit >= 10 || time_to_die < 20",
								["action"] = "empower_rune_weapon",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.pillar_of_frost.ready || time_to_die < 20 ) & talent.breath_of_sindragosa.enabled & runic_power > 60",
								["action"] = "empower_rune_weapon",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.icecap.enabled & rune < 3",
								["action"] = "empower_rune_weapon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.cold_heart.enabled & ( ( buff.cold_heart.stack >= 10 & debuff.razorice.stack = 5 ) || time_to_die <= gcd )",
								["action"] = "call_action_list",
								["list_name"] = "cold_heart",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( buff.pillar_of_frost.up & azerite.icy_citadel.rank <= 1 & ( buff.pillar_of_frost.remains <= gcd || buff.unholy_strength.remains <= gcd & buff.unholy_strength.up ) )",
								["action"] = "frostwyrms_fury",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "( buff.icy_citadel.up & ! talent.icecap.enabled & ( buff.unholy_strength.up || buff.icy_citadel.remains <= gcd ) ) || buff.icy_citadel.up & buff.icy_citadel.remains <= gcd & talent.icecap.enabled & buff.pillar_of_frost.up",
								["action"] = "frostwyrms_fury",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < gcd || ( time_to_die < cooldown.pillar_of_frost.remains & buff.unholy_strength.up )",
								["action"] = "frostwyrms_fury",
							}, -- [28]
						},
					},
					["version"] = 20200619,
					["warnings"] = "Imported 10 action lists.\n",
					["spec"] = 251,
					["profile"] = "# Frost Death Knight\n# https://github.com/simulationcraft/simc/\n# June 19, 2020\n\n# Changes:\n# - Include Mind Freeze.\n# - Add fallback for using ERW, PoF if player initiates BoS before pooling logic is completed.\n# - Change target.time_to_die to time_to_die to use encounter length rather than potential trash deaths.\n# - Cold Heart and racial tweaks.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/potion\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/variable,name=other_on_use_equipped,value=(equipped.notorious_gladiators_badge||equipped.corrupted_gladiators_badge||equipped.corrupted_gladiators_medallion||equipped.vial_of_animated_blood||equipped.first_mates_spyglass||equipped.jes_howler||equipped.notorious_gladiators_medallion||equipped.ashvanes_razor_coral)\n\n# Executed every time the actor is available.\nactions=mind_freeze\n# Apply Frost Fever and maintain Icy Talons\nactions+=/howling_blast,if=!dot.frost_fever.ticking&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/glacial_advance,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&spell_targets.glacial_advance>=2&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/frost_strike,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/call_action_list,name=essences\nactions+=/call_action_list,name=cooldowns\nactions+=/run_action_list,name=bos_ticking,if=buff.breath_of_sindragosa.up\nactions+=/run_action_list,name=bos_pooling,if=talent.breath_of_sindragosa.enabled&((cooldown.breath_of_sindragosa.remains=0&cooldown.pillar_of_frost.remains<10)||(cooldown.breath_of_sindragosa.remains<20&time_to_die<35))\nactions+=/run_action_list,name=obliteration,if=buff.pillar_of_frost.up&talent.obliteration.enabled\nactions+=/run_action_list,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,name=standard\n\nactions.aoe=remorseless_winter,if=talent.gathering_storm.enabled||(azerite.frozen_tempest.rank&spell_targets.remorseless_winter>=3&!buff.rime.up)\nactions.aoe+=/glacial_advance,if=talent.frostscythe.enabled\nactions.aoe+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled&!talent.frostscythe.enabled\nactions.aoe+=/frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled\nactions.aoe+=/howling_blast,if=buff.rime.up\nactions.aoe+=/frostscythe,if=buff.killing_machine.up\nactions.aoe+=/glacial_advance,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)\nactions.aoe+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit<(15+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled\nactions.aoe+=/frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled\nactions.aoe+=/remorseless_winter\nactions.aoe+=/frostscythe\nactions.aoe+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit>(25+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled\nactions.aoe+=/obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)\nactions.aoe+=/glacial_advance\nactions.aoe+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&!talent.frostscythe.enabled\nactions.aoe+=/frost_strike\nactions.aoe+=/horn_of_winter\nactions.aoe+=/arcane_torrent\n\n# Breath of Sindragosa pooling rotation : starts 20s before Pillar of Frost + BoS are available\nactions.bos_pooling=howling_blast,if=buff.rime.up\nactions.bos_pooling+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit>=25&!talent.frostscythe.enabled\nactions.bos_pooling+=/obliterate,if=runic_power.deficit>=25\nactions.bos_pooling+=/glacial_advance,if=runic_power.deficit<20&spell_targets.glacial_advance>=2&cooldown.pillar_of_frost.remains>5\nactions.bos_pooling+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit<20&!talent.frostscythe.enabled&cooldown.pillar_of_frost.remains>5\nactions.bos_pooling+=/frost_strike,if=runic_power.deficit<20&cooldown.pillar_of_frost.remains>5\nactions.bos_pooling+=/frostscythe,if=buff.killing_machine.up&runic_power.deficit>(15+talent.runic_attenuation.enabled*3)&spell_targets.frostscythe>=2\nactions.bos_pooling+=/frostscythe,if=runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)&spell_targets.frostscythe>=2\nactions.bos_pooling+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled\nactions.bos_pooling+=/obliterate,if=runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)\nactions.bos_pooling+=/glacial_advance,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&spell_targets.glacial_advance>=2\nactions.bos_pooling+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&!talent.frostscythe.enabled\nactions.bos_pooling+=/frost_strike,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40\n\n# Fallback to use PoF, ERW when user-initiates BoS prematurely.\nactions.bos_ticking=pillar_of_frost,if=cooldown.empower_rune_weapon.remains\nactions.bos_ticking+=/empower_rune_weapon\nactions.bos_ticking+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power<=32&!talent.frostscythe.enabled\nactions.bos_ticking+=/obliterate,if=runic_power<=32\nactions.bos_ticking+=/remorseless_winter,if=talent.gathering_storm.enabled\nactions.bos_ticking+=/howling_blast,if=buff.rime.up\nactions.bos_ticking+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&rune.time_to_5<gcd||runic_power<=45&!talent.frostscythe.enabled\nactions.bos_ticking+=/obliterate,if=rune.time_to_5<gcd||runic_power<=45\nactions.bos_ticking+=/frostscythe,if=buff.killing_machine.up&spell_targets.frostscythe>=2\nactions.bos_ticking+=/horn_of_winter,if=runic_power.deficit>=32&rune.time_to_3>gcd\nactions.bos_ticking+=/remorseless_winter\nactions.bos_ticking+=/frostscythe,if=spell_targets.frostscythe>=2\nactions.bos_ticking+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&runic_power.deficit>25||rune>3&!talent.frostscythe.enabled\nactions.bos_ticking+=/obliterate,if=runic_power.deficit>25||rune>3\nactions.bos_ticking+=/arcane_torrent,if=runic_power.deficit>50\n\n# Cold heart conditions\nactions.cold_heart=chains_of_ice,if=buff.cold_heart.stack>5&time_to_die<gcd\nactions.cold_heart+=/chains_of_ice,if=(buff.seething_rage.remains<gcd)&buff.seething_rage.up\nactions.cold_heart+=/chains_of_ice,if=(buff.pillar_of_frost.remains<=gcd*(1+cooldown.frostwyrms_fury.ready)||buff.pillar_of_frost.remains<rune.time_to_3)&buff.pillar_of_frost.up&(azerite.icy_citadel.rank<=1||buff.breath_of_sindragosa.up)&!talent.icecap.enabled\nactions.cold_heart+=/chains_of_ice,if=buff.pillar_of_frost.remains<8&buff.unholy_strength.remains<gcd*(1+cooldown.frostwyrms_fury.ready)&buff.unholy_strength.remains&buff.pillar_of_frost.up&(azerite.icy_citadel.rank<=1||buff.breath_of_sindragosa.up)&!talent.icecap.enabled\nactions.cold_heart+=/chains_of_ice,if=(buff.icy_citadel.remains<4||buff.icy_citadel.remains<rune.time_to_3)&buff.icy_citadel.up&azerite.icy_citadel.rank>=2&!buff.breath_of_sindragosa.up&!talent.icecap.enabled\nactions.cold_heart+=/chains_of_ice,if=buff.icy_citadel.up&buff.unholy_strength.up&azerite.icy_citadel.rank>=2&!buff.breath_of_sindragosa.up&!talent.icecap.enabled\nactions.cold_heart+=/chains_of_ice,if=buff.pillar_of_frost.remains<4&buff.pillar_of_frost.up&talent.icecap.enabled&buff.cold_heart.stack>=18&azerite.icy_citadel.rank<=1\nactions.cold_heart+=/chains_of_ice,if=buff.pillar_of_frost.up&talent.icecap.enabled&azerite.icy_citadel.rank>=2&(buff.cold_heart.stack>=19&buff.icy_citadel.remains<gcd&buff.icy_citadel.up||buff.unholy_strength.up&buff.cold_heart.stack>=18)\n\nactions.cooldowns=use_item,name=azsharas_font_of_power,if=(cooldown.empower_rune_weapon.ready&!variable.other_on_use_equipped)||(cooldown.pillar_of_frost.remains<=10&variable.other_on_use_equipped)\nactions.cooldowns+=/use_item,name=lurkers_insidious_gift,if=talent.breath_of_sindragosa.enabled&((cooldown.pillar_of_frost.remains<=10&variable.other_on_use_equipped)||(buff.pillar_of_frost.up&!variable.other_on_use_equipped))||(buff.pillar_of_frost.up&!talent.breath_of_sindragosa.enabled)\nactions.cooldowns+=/use_item,name=cyclotronic_blast,if=!buff.pillar_of_frost.up\nactions.cooldowns+=/use_items,if=(cooldown.pillar_of_frost.ready||cooldown.pillar_of_frost.remains>20)&(!talent.breath_of_sindragosa.enabled||cooldown.empower_rune_weapon.remains>95)\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=cooldown.empower_rune_weapon.remains>90&debuff.razor_coral_debuff.up&variable.other_on_use_equipped||buff.breath_of_sindragosa.up&debuff.razor_coral_debuff.up&!variable.other_on_use_equipped||buff.empower_rune_weapon.up&debuff.razor_coral_debuff.up&!talent.breath_of_sindragosa.enabled||time_to_die<21\nactions.cooldowns+=/use_item,name=jes_howler,if=(equipped.lurkers_insidious_gift&buff.pillar_of_frost.remains)||(!equipped.lurkers_insidious_gift&buff.pillar_of_frost.remains<12&buff.pillar_of_frost.up)\nactions.cooldowns+=/use_item,name=knot_of_ancient_fury,if=cooldown.empower_rune_weapon.remains>40\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=rune<=3&!buff.pillar_of_frost.up&(!buff.breath_of_sindragosa.up||!talent.breath_of_sindragosa.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.breath_of_sindragosa.up&!buff.pillar_of_frost.up\nactions.cooldowns+=/potion,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.cooldowns+=/blood_fury,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.cooldowns+=/berserking,if=buff.pillar_of_frost.up\nactions.cooldowns+=/arcane_pulse,if=(!buff.pillar_of_frost.up&active_enemies>=2)||!buff.pillar_of_frost.up&(rune.deficit>=5&runic_power.deficit>=60)\nactions.cooldowns+=/lights_judgment,if=buff.pillar_of_frost.up\nactions.cooldowns+=/ancestral_call,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.cooldowns+=/fireblood,if=buff.pillar_of_frost.remains<=8&buff.empower_rune_weapon.up\nactions.cooldowns+=/bag_of_tricks,if=buff.pillar_of_frost.up&(buff.pillar_of_frost.remains<5&talent.cold_heart.enabled||!talent.cold_heart.enabled&buff.pillar_of_frost.remains<3)&active_enemies=1||buff.seething_rage.up&active_enemies=1\n\n# Frost cooldowns\nactions.cooldowns+=/pillar_of_frost,if=(cooldown.empower_rune_weapon.remains||talent.icecap.enabled)&!buff.pillar_of_frost.up||talent.icecap.enabled&azerite.frostwhelps_indignation.enabled&buff.pillar_of_frost.remains<2\nactions.cooldowns+=/breath_of_sindragosa,use_off_gcd=1,if=cooldown.empower_rune_weapon.remains&cooldown.pillar_of_frost.remains\nactions.cooldowns+=/empower_rune_weapon,if=cooldown.pillar_of_frost.ready&talent.obliteration.enabled&rune.time_to_5>gcd&runic_power.deficit>=10||time_to_die<20\nactions.cooldowns+=/empower_rune_weapon,if=(cooldown.pillar_of_frost.ready||time_to_die<20)&talent.breath_of_sindragosa.enabled&runic_power>60\nactions.cooldowns+=/empower_rune_weapon,if=talent.icecap.enabled&rune<3\nactions.cooldowns+=/call_action_list,name=cold_heart,if=talent.cold_heart.enabled&((buff.cold_heart.stack>=10&debuff.razorice.stack=5)||time_to_die<=gcd)\nactions.cooldowns+=/frostwyrms_fury,if=(buff.pillar_of_frost.up&azerite.icy_citadel.rank<=1&(buff.pillar_of_frost.remains<=gcd||buff.unholy_strength.remains<=gcd&buff.unholy_strength.up))\nactions.cooldowns+=/frostwyrms_fury,if=(buff.icy_citadel.up&!talent.icecap.enabled&(buff.unholy_strength.up||buff.icy_citadel.remains<=gcd))||buff.icy_citadel.up&buff.icy_citadel.remains<=gcd&talent.icecap.enabled&buff.pillar_of_frost.up\nactions.cooldowns+=/frostwyrms_fury,if=time_to_die<gcd||(time_to_die<cooldown.pillar_of_frost.remains&buff.unholy_strength.up)\n\nactions.essences=blood_of_the_enemy,if=buff.pillar_of_frost.up&(buff.pillar_of_frost.remains<10&(buff.breath_of_sindragosa.up||talent.obliteration.enabled||talent.icecap.enabled&!azerite.icy_citadel.enabled)||buff.icy_citadel.up&talent.icecap.enabled)&(active_enemies=1||!talent.icecap.enabled)||active_enemies>=2&talent.icecap.enabled&cooldown.pillar_of_frost.ready&(azerite.icy_citadel.rank>=1&buff.icy_citadel.up||!azerite.icy_citadel.enabled)\nactions.essences+=/guardian_of_azeroth,if=!talent.icecap.enabled||talent.icecap.enabled&azerite.icy_citadel.enabled&buff.pillar_of_frost.remains<6&buff.pillar_of_frost.up||talent.icecap.enabled&!azerite.icy_citadel.enabled\nactions.essences+=/chill_streak,if=buff.pillar_of_frost.remains<5&buff.pillar_of_frost.up||time_to_die<5\nactions.essences+=/the_unbound_force,if=buff.reckless_force.up||buff.reckless_force_counter.stack<11\nactions.essences+=/focused_azerite_beam,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up\nactions.essences+=/concentrated_flame,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up&dot.concentrated_flame_burn.remains=0\nactions.essences+=/worldvein_resonance,if=buff.pillar_of_frost.up||buff.empower_rune_weapon.up||cooldown.breath_of_sindragosa.remains>60+15||corruptions.ineffable_truth.enabled\nactions.essences+=/ripple_in_space,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up\nactions.essences+=/memory_of_lucid_dreams,if=buff.empower_rune_weapon.remains<5&buff.breath_of_sindragosa.up||(rune.time_to_2>gcd&runic_power<50)\nactions.essences+=/reaping_flames\n\n# Obliteration rotation\nactions.obliteration=remorseless_winter,if=talent.gathering_storm.enabled\nactions.obliteration+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&!talent.frostscythe.enabled&!buff.rime.up&spell_targets.howling_blast>=3\nactions.obliteration+=/obliterate,if=!talent.frostscythe.enabled&!buff.rime.up&spell_targets.howling_blast>=3\nactions.obliteration+=/frostscythe,if=(buff.killing_machine.react||(buff.killing_machine.up&(prev_gcd.1.frost_strike||prev_gcd.1.howling_blast||prev_gcd.1.glacial_advance)))&spell_targets.frostscythe>=2\nactions.obliteration+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&buff.killing_machine.react||(buff.killing_machine.up&(prev_gcd.1.frost_strike||prev_gcd.1.howling_blast||prev_gcd.1.glacial_advance))\nactions.obliteration+=/obliterate,if=buff.killing_machine.react||(buff.killing_machine.up&(prev_gcd.1.frost_strike||prev_gcd.1.howling_blast||prev_gcd.1.glacial_advance))\nactions.obliteration+=/glacial_advance,if=(!buff.rime.up||runic_power.deficit<10||rune.time_to_2>gcd)&spell_targets.glacial_advance>=2\nactions.obliteration+=/howling_blast,if=buff.rime.up&spell_targets.howling_blast>=2\nactions.obliteration+=/frost_strike,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&!buff.rime.up||runic_power.deficit<10||rune.time_to_2>gcd&!talent.frostscythe.enabled\nactions.obliteration+=/frost_strike,if=!buff.rime.up||runic_power.deficit<10||rune.time_to_2>gcd\nactions.obliteration+=/howling_blast,if=buff.rime.up\nactions.obliteration+=/obliterate,cycle_targets=1,if=(debuff.razorice.stack<5||debuff.razorice.remains<10)&!talent.frostscythe.enabled\nactions.obliteration+=/obliterate\n\n# Standard single-target rotation\nactions.standard=remorseless_winter\nactions.standard+=/frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled\nactions.standard+=/howling_blast,if=buff.rime.up\nactions.standard+=/obliterate,if=talent.icecap.enabled&buff.pillar_of_frost.up&azerite.icy_citadel.rank>=2\nactions.standard+=/obliterate,if=!buff.frozen_pulse.up&talent.frozen_pulse.enabled\nactions.standard+=/frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)\nactions.standard+=/frostscythe,if=buff.killing_machine.up&rune.time_to_4>=gcd\nactions.standard+=/obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)\nactions.standard+=/frost_strike\nactions.standard+=/horn_of_winter\nactions.standard+=/arcane_torrent",
				},
				["Blood"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20200514,
					["spec"] = 250,
					["desc"] = "# Blood Death Knight\n# https://github.com/simulationcraft/simc\n# May 14, 2020\n\n# Changes:\n# - Added Mind Freeze.\n# - Added Mitigation list.\n# - Added 'Save Blood Shield Absorb' option.\n# - Even more aggressively generate Bone Shield stacks.",
					["lists"] = {
						["essences"] = {
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame_burn.remains < 2 & ! buff.dancing_rune_weapon.up",
								["action"] = "concentrated_flame",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.vampiric_blood.up & ( raid_event.adds.exists || raid_event.adds.in > 15 )",
								["action"] = "anima_of_death",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_1 > gcd & runic_power < 40",
								["action"] = "memory_of_lucid_dreams",
							}, -- [3]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up",
								["action"] = "ripple_in_space",
							}, -- [5]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dancing_rune_weapon.ready & ( ! cooldown.blooddrinker.ready || ! talent.blooddrinker.enabled )",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || rune < 1 & runic_power.deficit > 60",
								["action"] = "arcane_pulse",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dancing_rune_weapon.remains > 90",
								["action"] = "use_items",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "cooldown.dancing_rune_weapon.remains & ! buff.dancing_rune_weapon.up & rune.time_to_4 > cast_time",
								["name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "( cooldown.dancing_rune_weapon.remains < 5 & target.time_to_die > 15 ) || ( time_to_die < 34 )",
								["name"] = "azsharas_font_of_power",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "( cooldown.dancing_rune_weapon.remains & ! buff.dancing_rune_weapon.up & rune.time_to_4 > 3 )",
								["name"] = "merekthas_fang",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down",
								["name"] = "ashvanes_razor_coral",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "target.health.pct < 31 & equipped.dribbling_inkpod",
								["name"] = "ashvanes_razor_coral",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "buff.dancing_rune_weapon.up & debuff.razor_coral_debuff.up & ! equipped.dribbling_inkpod",
								["name"] = "ashvanes_razor_coral",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up",
								["action"] = "potion",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blooddrinker.enabled || ! cooldown.blooddrinker.ready",
								["action"] = "dancing_rune_weapon",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.stack >= 7",
								["action"] = "tombstone",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > 0",
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [22]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 || ( ! group & health.pct < 66 )",
								["action"] = "vampiric_blood",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s >= 0.5 * health.max || ( ! group & incoming_damage_5s >= 0.25 * health.max )",
								["action"] = "death_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "save_blood_shield & incoming_damage_5s > 0 & buff.blood_shield.up & buff.blood_shield.remains < 1.5 * gcd",
								["action"] = "death_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 - ( 20 * buff.blood_shield.up )",
								["action"] = "icebound_fortitude",
							}, -- [4]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 10 & ( ! talent.bonestorm.enabled || ! cooldown.bonestorm.ready || buff.dancing_rune_weapon.up )",
								["action"] = "death_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up",
								["action"] = "blooddrinker",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.remains < 1.5 * gcd.execute || ( buff.bone_shield.remains <= rune.time_to_3 || buff.bone_shield.remains <= ( gcd + cooldown.blooddrinker.ready * talent.blooddrinker.enabled * 2 ) || buff.bone_shield.stack < 3 ) & runic_power.deficit >= 20",
								["action"] = "marrowrend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up",
								["action"] = "heart_essence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.8 & ( buff.hemostasis.stack <= ( 5 - spell_targets.blood_boil ) || spell_targets.blood_boil > 2 )",
								["action"] = "blood_boil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.stack <= 6 & talent.ossuary.enabled & runic_power.deficit >= 15",
								["action"] = "marrowrend",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power >= 100 & ! buff.dancing_rune_weapon.up",
								["action"] = "bonestorm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= ( 15 + buff.dancing_rune_weapon.up * 5 + spell_targets.heart_strike * talent.heartbreaker.enabled * 2 ) || time_to_die < 10",
								["action"] = "death_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.death_and_decay >= 3",
								["action"] = "death_and_decay",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( charges_fractional >= 1.8 || buff.dancing_rune_weapon.up ) & rune.time_to_3 >= gcd",
								["action"] = "rune_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up || rune.time_to_4 < gcd",
								["action"] = "heart_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up",
								["action"] = "blood_boil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.crimson_scourge.up || talent.rapid_decomposition.enabled || spell_targets.death_and_decay >= 2",
								["action"] = "death_and_decay",
							}, -- [13]
							{
								["action"] = "consumption",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "blood_boil",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_3 < gcd || buff.bone_shield.stack > 6",
								["action"] = "heart_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
							}, -- [17]
							{
								["action"] = "rune_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [19]
						},
					},
					["version"] = 20200514,
					["warnings"] = "Imported 5 action lists.\n",
					["profile"] = "# Blood Death Knight\n# https://github.com/simulationcraft/simc\n# May 14, 2020\n\n# Changes:\n# - Added Mind Freeze.\n# - Added Mitigation list.\n# - Added 'Save Blood Shield Absorb' option.\n# - Even more aggressively generate Bone Shield stacks.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=mind_freeze\nactions+=/blood_fury,if=cooldown.dancing_rune_weapon.ready&(!cooldown.blooddrinker.ready||!talent.blooddrinker.enabled)\nactions+=/berserking\nactions+=/arcane_pulse,if=active_enemies>=2||rune<1&runic_power.deficit>60\nactions+=/lights_judgment,if=buff.unholy_strength.up\nactions+=/ancestral_call\nactions+=/fireblood\nactions+=/bag_of_tricks\nactions+=/use_items,if=cooldown.dancing_rune_weapon.remains>90\nactions+=/use_item,name=razdunks_big_red_button\nactions+=/use_item,name=cyclotronic_blast,if=cooldown.dancing_rune_weapon.remains&!buff.dancing_rune_weapon.up&rune.time_to_4>cast_time\nactions+=/use_item,name=azsharas_font_of_power,if=(cooldown.dancing_rune_weapon.remains<5&target.time_to_die>15)||(time_to_die<34)\nactions+=/use_item,name=merekthas_fang,if=(cooldown.dancing_rune_weapon.remains&!buff.dancing_rune_weapon.up&rune.time_to_4>3)\nactions+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down\nactions+=/use_item,name=ashvanes_razor_coral,if=target.health.pct<31&equipped.dribbling_inkpod\nactions+=/use_item,name=ashvanes_razor_coral,if=buff.dancing_rune_weapon.up&debuff.razor_coral_debuff.up&!equipped.dribbling_inkpod\nactions+=/potion,if=buff.dancing_rune_weapon.up\nactions+=/dancing_rune_weapon,if=!talent.blooddrinker.enabled||!cooldown.blooddrinker.ready\nactions+=/tombstone,if=buff.bone_shield.stack>=7\nactions+=/call_action_list,name=mitigation,if=incoming_damage_5s>0\nactions+=/call_action_list,name=essences\nactions+=/call_action_list,name=standard\n\nactions.essences=concentrated_flame,if=dot.concentrated_flame_burn.remains<2&!buff.dancing_rune_weapon.up\nactions.essences+=/anima_of_death,if=buff.vampiric_blood.up&(raid_event.adds.exists||raid_event.adds.in>15)\nactions.essences+=/memory_of_lucid_dreams,if=rune.time_to_1>gcd&runic_power<40\nactions.essences+=/worldvein_resonance\nactions.essences+=/ripple_in_space,if=!buff.dancing_rune_weapon.up\n\nactions.mitigation=vampiric_blood,if=health.pct<50||(!group&health.pct<66)\n# Incoming damage requirement is 25% of max health solo, 50% of max health in a group.\nactions.mitigation+=/death_strike,if=incoming_damage_5s>=0.5*health.max||(!group&incoming_damage_5s>=0.25*health.max)\n# Don't let an existing Blood Shield drop.\nactions.mitigation+=/death_strike,if=save_blood_shield&incoming_damage_5s>0&buff.blood_shield.up&buff.blood_shield.remains<1.5*gcd\nactions.mitigation+=/icebound_fortitude,if=health.pct<50-(20*buff.blood_shield.up)\n\nactions.standard=death_strike,if=runic_power.deficit<=10&(!talent.bonestorm.enabled||!cooldown.bonestorm.ready||buff.dancing_rune_weapon.up)\nactions.standard+=/blooddrinker,if=!buff.dancing_rune_weapon.up\nactions.standard+=/marrowrend,if=buff.bone_shield.remains<1.5*gcd.execute||(buff.bone_shield.remains<=rune.time_to_3||buff.bone_shield.remains<=(gcd+cooldown.blooddrinker.ready*talent.blooddrinker.enabled*2)||buff.bone_shield.stack<3)&runic_power.deficit>=20\nactions.standard+=/heart_essence,if=!buff.dancing_rune_weapon.up\nactions.standard+=/blood_boil,if=charges_fractional>=1.8&(buff.hemostasis.stack<=(5-spell_targets.blood_boil)||spell_targets.blood_boil>2)\nactions.standard+=/marrowrend,if=buff.bone_shield.stack<=6&talent.ossuary.enabled&runic_power.deficit>=15\nactions.standard+=/bonestorm,if=runic_power>=100&!buff.dancing_rune_weapon.up\nactions.standard+=/death_strike,if=runic_power.deficit<=(15+buff.dancing_rune_weapon.up*5+spell_targets.heart_strike*talent.heartbreaker.enabled*2)||time_to_die<10\nactions.standard+=/death_and_decay,if=spell_targets.death_and_decay>=3\nactions.standard+=/rune_strike,if=(charges_fractional>=1.8||buff.dancing_rune_weapon.up)&rune.time_to_3>=gcd\nactions.standard+=/heart_strike,if=buff.dancing_rune_weapon.up||rune.time_to_4<gcd\nactions.standard+=/blood_boil,if=buff.dancing_rune_weapon.up\nactions.standard+=/death_and_decay,if=buff.crimson_scourge.up||talent.rapid_decomposition.enabled||spell_targets.death_and_decay>=2\nactions.standard+=/consumption\nactions.standard+=/blood_boil\nactions.standard+=/heart_strike,if=rune.time_to_3<gcd||buff.bone_shield.stack>6\nactions.standard+=/use_item,name=grongs_primal_rage\nactions.standard+=/rune_strike\nactions.standard+=/arcane_torrent,if=runic_power.deficit>20",
					["author"] = "SimC + Hekili",
				},
			},
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
		},
		["Default"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetAllPotions_20201209"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["resetGlobalCooldownSync_20210403"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["minimapIcon"] = true,
			["displays"] = {
				["Interrupts"] = {
					["delays"] = {
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
						["fontSize"] = 23,
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Fira Mono Medium",
						["fontStyle"] = "THICKOUTLINE",
						["fontSize"] = 23,
					},
					["captions"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["keybindings"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["x"] = -551.6658325195312,
					["y"] = -61.66674041748047,
				},
				["Cooldowns"] = {
					["delays"] = {
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
						["fontSize"] = 23,
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Fira Mono Medium",
						["fontStyle"] = "THICKOUTLINE",
						["fontSize"] = 23,
					},
					["captions"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["keybindings"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["x"] = -618.332763671875,
					["y"] = -59.16656494140625,
				},
				["Primary"] = {
					["delays"] = {
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
						["fontSize"] = 23,
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Fira Mono Medium",
						["fontStyle"] = "THICKOUTLINE",
						["fontSize"] = 23,
					},
					["captions"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["y"] = -130.0000152587891,
					["x"] = -17.49560737609863,
					["keybindings"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
				},
				["AOE"] = {
					["targets"] = {
						["font"] = "Fira Mono Medium",
						["fontStyle"] = "THICKOUTLINE",
						["fontSize"] = 23,
					},
					["rel"] = "CENTER",
					["delays"] = {
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
						["fontSize"] = 23,
					},
					["captions"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["keybindings"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["x"] = -14.16622543334961,
					["y"] = -184.99951171875,
				},
				["Defensives"] = {
					["delays"] = {
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
						["fontSize"] = 23,
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Fira Mono Medium",
						["fontStyle"] = "THICKOUTLINE",
						["fontSize"] = 23,
					},
					["captions"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["keybindings"] = {
						["fontSize"] = 23,
						["fontStyle"] = "THICKOUTLINE",
						["font"] = "Fira Mono Medium",
					},
					["x"] = -684.9996948242188,
					["y"] = -60.83366394042969,
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "SimC",
					["builtIn"] = true,
					["date"] = 20210403,
					["spec"] = 263,
					["desc"] = "Enhancement Shaman\nApril 2, 2021",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "windstrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled",
								["action"] = "fae_transfusion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [4]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( talent.fire_nova.enabled || talent.lashing_flames.enabled || covenant.necrolord || runeforge.primal_lava_actuators.equipped )",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["criteria"] = "! buff.primordial_wave.up",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 3",
								["action"] = "fire_nova",
							}, -- [8]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.up & buff.maelstrom_weapon.stack >= 5",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled || buff.crash_lightning.down",
								["action"] = "crash_lightning",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "lava_lash",
								["criteria"] = "talent.lashing_flames.enabled",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up & ( buff.hot_hand.up || ( runeforge.primal_lava_actuators.equipped & buff.primal_lava_actuators.stack > 6 ) )",
								["action"] = "lava_lash",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "stormstrike",
							}, -- [15]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_harvest",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10",
								["action"] = "chain_lightning",
							}, -- [20]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["action"] = "fae_transfusion",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_lightning",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock > 1",
								["action"] = "fire_nova",
							}, -- [29]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [30]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [32]
						},
						["single"] = {
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.up || ( runeforge.primal_lava_actuators.equipped & buff.primal_lava_actuators.stack > 6 )",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up",
								["action"] = "primordial_wave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "ice_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "sundering",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [8]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fae_transfusion",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & raid_event.adds.in >= 90",
								["action"] = "chain_harvest",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [18]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock",
								["action"] = "fire_nova",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "lightning_bolt",
							}, -- [26]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [28]
						},
						["default"] = {
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 60",
								["description"] = "In-combat potion is before combat ends.",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Interrupt",
								["action"] = "wind_shear",
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [9]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled || runeforge.doom_winds.equipped ) & ( soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled || active_enemies = 1 )",
								["action"] = "fae_transfusion",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 90 || active_enemies > 1",
								["action"] = "ascendance",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds_debuff.down & ( raid_event.adds.in >= 60 || active_enemies > 1 ) || buff.windfury_totem.down",
								["action"] = "windfury_totem",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "If only one enemy, priority follows the 'single' action list.",
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "On multiple enemies, the priority follows the 'aoe' action list.",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [15]
							{
								["action"] = "counterstrike_totem",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "skyfury_totem",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "primal_strike",
								["enabled"] = true,
							}, -- [18]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_weapon.remains < 300",
								["action"] = "windfury_weapon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue_weapon.remains < 300",
								["action"] = "flametongue_weapon",
							}, -- [2]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.remains < 300",
								["action"] = "lightning_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.doom_winds.equipped & buff.windfury_totem.down",
								["action"] = "windfury_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [6]
						},
					},
					["version"] = 20210403,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 11: Converted 'soulbind.X' to 'soulbind.X.enabled' (2x).\n\nImported 4 action lists.\n",
					["profile"] = "## Enhancement Shaman\n## April 2, 2021\n\nactions.precombat=windfury_weapon,if=buff.windfury_weapon.remains<300\nactions.precombat+=/flametongue_weapon,if=buff.flametongue_weapon.remains<300\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/lightning_shield,if=buff.lightning_shield.remains<300\nactions.precombat+=/windfury_totem,if=!runeforge.doom_winds.equipped&buff.windfury_totem.down\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled\n\n## Executed every time the actor is available.\nactions=bloodlust\n# In-combat potion is before combat ends.\nactions+=/potion,if=boss&fight_remains<60\n# Interrupt\nactions+=/wind_shear\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/feral_spirit\nactions+=/fae_transfusion,if=(talent.ascendance.enabled||runeforge.doom_winds.equipped)&(soulbind.grove_invigoration||soulbind.field_of_blossoms||active_enemies=1)\nactions+=/ascendance,if=raid_event.adds.in>=90||active_enemies>1\nactions+=/windfury_totem,if=runeforge.doom_winds.equipped&buff.doom_winds_debuff.down&(raid_event.adds.in>=60||active_enemies>1)||buff.windfury_totem.down\n# If only one enemy, priority follows the 'single' action list.\nactions+=/call_action_list,name=single,if=active_enemies=1\n# On multiple enemies, the priority follows the 'aoe' action list.\nactions+=/call_action_list,name=aoe,if=active_enemies>1\nactions+=/counterstrike_totem\nactions+=/skyfury_totem\nactions+=/primal_strike\n\n## Multi target action priority list\nactions.aoe=windstrike,if=buff.crash_lightning.up\nactions.aoe+=/fae_transfusion,if=soulbind.grove_invigoration||soulbind.field_of_blossoms\nactions.aoe+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.aoe+=/frost_shock,if=buff.hailstorm.up\nactions.aoe+=/sundering\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.lashing_flames.enabled||covenant.necrolord||runeforge.primal_lava_actuators.equipped)\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe+=/vesper_totem\nactions.aoe+=/lightning_bolt,if=buff.primordial_wave.up&buff.maelstrom_weapon.stack>=5\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.up\nactions.aoe+=/crash_lightning,if=talent.crashing_storm.enabled||buff.crash_lightning.down\nactions.aoe+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe+=/lava_lash,if=buff.crash_lightning.up&(buff.hot_hand.up||(runeforge.primal_lava_actuators.equipped&buff.primal_lava_actuators.stack>6))\nactions.aoe+=/stormstrike,if=buff.crash_lightning.up\nactions.aoe+=/crash_lightning\nactions.aoe+=/chain_harvest,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack=10\nactions.aoe+=/windstrike\nactions.aoe+=/stormstrike\nactions.aoe+=/lava_lash\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable\nactions.aoe+=/fae_transfusion\nactions.aoe+=/frost_shock\nactions.aoe+=/ice_strike\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>1\nactions.aoe+=/earthen_spike\nactions.aoe+=/earth_elemental\nactions.aoe+=/windfury_totem,if=buff.windfury_totem.remains<30\n\n## Single target action priority list\nactions.single=windstrike\nactions.single+=/lava_lash,if=buff.hot_hand.up||(runeforge.primal_lava_actuators.equipped&buff.primal_lava_actuators.stack>6)\nactions.single+=/primordial_wave,if=!buff.primordial_wave.up\nactions.single+=/stormstrike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/ice_strike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/sundering,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/flame_shock,if=!ticking\nactions.single+=/vesper_totem\nactions.single+=/frost_shock,if=buff.hailstorm.up\nactions.single+=/earthen_spike\nactions.single+=/fae_transfusion\nactions.single+=/chain_lightning,if=buff.stormkeeper.up\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/chain_harvest,if=buff.maelstrom_weapon.stack>=5&raid_event.adds.in>=90\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack=10\nactions.single+=/stormstrike\nactions.single+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/lava_lash\nactions.single+=/crash_lightning\nactions.single+=/flame_shock,cycle_targets=1,if=refreshable\nactions.single+=/frost_shock\nactions.single+=/ice_strike\nactions.single+=/sundering,if=raid_event.adds.in>=40\nactions.single+=/fire_nova,if=active_dot.flame_shock\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/earth_elemental\nactions.single+=/windfury_totem,if=buff.windfury_totem.remains<30",
					["author"] = "SimC",
				},
				["Frost DK"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210403,
					["author"] = "SimC",
					["desc"] = "Death Knight Frost\nApril 2, 2021\n\nChanges\n- Removed last-second usage of Chains of Ice as it doesn't play well in practice.",
					["lists"] = {
						["obliteration_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled || conduit.everfrost.enabled || runeforge.biting_cold.enabled || active_enemies >= 2",
								["action"] = "remorseless_winter",
								["description"] = "Pooling For Obliteration: Starts 10 seconds before Pillar of Frost comes off CD",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "buff.killing_machine.react",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.glacial_advance >= 2 & runic_power.deficit < 60",
								["action"] = "glacial_advance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "runic_power.deficit < 70",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "rune > 4",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 & ( ! death_and_decay.ticking & covenant.night_fae || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [7]
						},
						["cold_heart"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & buff.pillar_of_frost.remains < 3 & buff.pillar_of_frost.up & buff.cold_heart.stack >= 10",
								["action"] = "chains_of_ice",
								["description"] = "Use during Pillar with Icecap/Breath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & death_knight.runeforge.fallen_crusader & ! buff.pillar_of_frost.up & ( buff.cold_heart.stack >= 16 & buff.unholy_strength.up || buff.cold_heart.stack >= 19 & cooldown.pillar_of_frost.remains > 10 )",
								["action"] = "chains_of_ice",
								["description"] = "Outside of Pillar useage with Icecap/Breath",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.obliteration.enabled & ! death_knight.runeforge.fallen_crusader & buff.cold_heart.stack >= 10 & ! buff.pillar_of_frost.up & cooldown.pillar_of_frost.remains > 20",
								["action"] = "chains_of_ice",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.pillar_of_frost.up & ( buff.cold_heart.stack >= 16 & buff.unholy_strength.up || buff.cold_heart.stack >= 19 || cooldown.pillar_of_frost.remains < 3 & buff.cold_heart.stack >= 14 )",
								["action"] = "chains_of_ice",
								["description"] = "Prevent Cold Heart overcapping during pillar",
							}, -- [4]
						},
						["obliteration"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( talent.gathering_storm.enabled || conduit.everfrost.enabled || runeforge.biting_cold.enabled )",
								["action"] = "remorseless_winter",
								["description"] = "Obliteration rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & ! buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react & spell_targets.frostscythe >= 2 & ( buff.deaths_due.stack = 8 || ! death_and_decay.ticking || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "buff.killing_machine.react || ! buff.rime.up & spell_targets.howling_blast >= 3",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.glacial_advance >= 2 & ( runic_power.deficit < 10 || rune.time_to_2 > gcd ) || ( debuff.razorice.stack < 5 || debuff.razorice.remains < 15 )",
								["action"] = "glacial_advance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "conduit.eradicating_blow.enabled & buff.eradicating_blow.stack = 2 & active_enemies = 1",
								["action"] = "frost_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & spell_targets.howling_blast >= 2",
								["action"] = "howling_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "! talent.avalanche.enabled & ! buff.killing_machine.up || talent.avalanche.enabled & ! buff.rime.up",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["bos_ticking"] = {
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["cycle_targets"] = 1,
								["criteria"] = "runic_power.deficit >= 60",
								["description"] = "Breath of Sindragosa Active Rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled || conduit.everfrost.enabled || runeforge.biting_cold.enabled || active_enemies >= 2",
								["action"] = "remorseless_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & ( runic_power.deficit < 55 || rune.time_to_3 <= gcd || spell_targets.howling_blast >= 2 )",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "rune.time_to_4 < gcd || runic_power.deficit >= 45",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & spell_targets.frostscythe >= 2 & ( ! death_and_decay.ticking & covenant.night_fae || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= 40 & rune.time_to_3 > gcd",
								["action"] = "horn_of_winter",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.frostscythe >= 2 & ( buff.deaths_due.stack = 8 || ! death_and_decay.ticking || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "runic_power.deficit > 25 & rune > 3",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 50",
								["action"] = "arcane_torrent",
							}, -- [10]
						},
						["racials"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "blood_fury",
								["description"] = "Racial Abilities",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.pillar_of_frost.up & active_enemies >= 2 ) || ! buff.pillar_of_frost.up & ( rune.deficit >= 5 & runic_power.deficit >= 60 )",
								["action"] = "arcane_pulse",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains <= 8 & buff.empower_rune_weapon.up",
								["action"] = "fireblood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & active_enemies = 1 & ( buff.pillar_of_frost.remains < 5 & talent.cold_heart.enabled || ! talent.cold_heart.enabled & buff.pillar_of_frost.remains < 3 )",
								["action"] = "bag_of_tricks",
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "AoE Rotation",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.frostscythe.enabled",
								["action"] = "glacial_advance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & covenant.night_fae & buff.deaths_due.stack < 4",
								["action"] = "obliterate",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react & ( ! death_and_decay.ticking & covenant.night_fae || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "glacial_advance",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! death_and_decay.ticking & covenant.night_fae || ! covenant.night_fae",
								["action"] = "frostscythe",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.enabled * 3 )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "glacial_advance",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [14]
						},
						["bos_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
								["description"] = "Breath of Sindragosa pooling rotation : starts 10s before BoS is available",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || rune.time_to_5 <= gcd & ( talent.gathering_storm.enabled || conduit.everfrost.enabled || runeforge.biting_cold.enabled )",
								["action"] = "remorseless_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["cycle_targets"] = 1,
								["criteria"] = "runic_power.deficit >= 25",
								["description"] = "'target_if=max:(debuff.razorice.stack+1)%(debuff.razorice.remains+1)*death_knight.runeforge.razorice' Repeats a lot, this is intended to target the highest priority enemy with an ability that will apply razorice if runeforged. That being an enemy with 0 stacks, or an enemy that the debuff will soon expire on.",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & spell_targets.glacial_advance >= 2 & cooldown.pillar_of_frost.remains > 5",
								["action"] = "glacial_advance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "runic_power.deficit < 20 & cooldown.pillar_of_frost.remains > 5",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react & runic_power.deficit > ( 15 + talent.runic_attenuation.enabled * 3 ) & spell_targets.frostscythe >= 2 & ( buff.deaths_due.stack = 8 || ! death_and_decay.ticking || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= ( 35 + talent.runic_attenuation.enabled * 3 ) & spell_targets.frostscythe >= 2 & ( buff.deaths_due.stack = 8 || ! death_and_decay.ticking || ! covenant.night_fae )",
								["action"] = "frostscythe",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["criteria"] = "runic_power.deficit >= ( 35 + talent.runic_attenuation.enabled * 3 )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40 & spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40",
								["cycle_targets"] = 1,
							}, -- [10]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( equipped.inscrutable_quantum_device & cooldown.inscrutable_quantum_device.ready )",
								["description"] = "Prevent specified trinkets being used with automatic lines",
								["var_name"] = "specified_trinket",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "conduit.everfrost.enabled & talent.gathering_storm.enabled & ! talent.obliteration.enabled & cooldown.pillar_of_frost.remains",
								["action"] = "remorseless_winter",
								["description"] = "Apply Frost Fever, maintain Icy Talons and keep Remorseless Winter rolling",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & ( talent.icecap.enabled || cooldown.breath_of_sindragosa.remains > 15 || talent.obliteration.enabled & cooldown.pillar_of_frost.remains & ! buff.killing_machine.up )",
								["action"] = "howling_blast",
								["description"] = "Apply Frost Fever and maintain Icy Talons",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & spell_targets.glacial_advance >= 2 & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "glacial_advance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "frost_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Choose Action list to run",
								["action"] = "call_action_list",
								["list_name"] = "covenants",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "racials",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.cold_heart.enabled & buff.cold_heart.stack >= 10 & ( debuff.razorice.stack = 5 || ! death_knight.runeforge.razorice )",
								["action"] = "call_action_list",
								["list_name"] = "cold_heart",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.breath_of_sindragosa.up",
								["action"] = "run_action_list",
								["list_name"] = "bos_ticking",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( cooldown.breath_of_sindragosa.remains < 10 )",
								["action"] = "run_action_list",
								["list_name"] = "bos_pooling",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & talent.obliteration.enabled",
								["action"] = "run_action_list",
								["list_name"] = "obliteration",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & cooldown.pillar_of_frost.remains < 10",
								["action"] = "run_action_list",
								["list_name"] = "obliteration_pooling",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [17]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["description"] = "Potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ( cooldown.pillar_of_frost.ready & rune.time_to_5 > gcd & runic_power.deficit >= 10 || buff.pillar_of_frost.up & rune.time_to_5 > gcd ) || fight_remains < 20",
								["action"] = "empower_rune_weapon",
								["description"] = "Cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & runic_power.deficit > 40 & rune.time_to_5 > gcd & ( buff.breath_of_sindragosa.up || fight_remains < 20 )",
								["action"] = "empower_rune_weapon",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.icecap.enabled & rune < 3",
								["action"] = "empower_rune_weapon",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( cooldown.breath_of_sindragosa.remains || cooldown.breath_of_sindragosa.ready & runic_power.deficit < 60 )",
								["action"] = "pillar_of_frost",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.icecap.enabled & ! buff.pillar_of_frost.up",
								["action"] = "pillar_of_frost",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ( talent.gathering_storm.enabled & buff.remorseless_winter.up || ! talent.gathering_storm.enabled )",
								["action"] = "pillar_of_frost",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "breath_of_sindragosa",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.remains < gcd & buff.pillar_of_frost.up & ! talent.obliteration.enabled",
								["action"] = "frostwyrms_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( buff.pillar_of_frost.up & buff.pillar_of_frost.remains < gcd || raid_event.adds.exists & raid_event.adds.remains < gcd || fight_remains < gcd )",
								["action"] = "frostwyrms_fury",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.obliteration.enabled & ! buff.pillar_of_frost.up & ( ( buff.unholy_strength.up || ! death_knight.runeforge.fallen_crusader ) & ( debuff.razorice.stack = 5 || ! death_knight.runeforge.razorice ) )",
								["action"] = "frostwyrms_fury",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & runic_power.deficit > 40 & rune >= 3 & buff.pillar_of_frost.up || ! talent.breath_of_sindragosa.enabled & runic_power.deficit >= 25",
								["action"] = "hypothermic_presence",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "raise_dead",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( pet.ghoul.remains < gcd || target.time_to_die < gcd )",
								["action"] = "sacrificial_pact",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 5 || runeforge.phearomones.enabled",
								["action"] = "death_and_decay",
							}, -- [15]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up || target.time_to_pct_20 < 5 || fight_remains < 21",
								["action"] = "inscrutable_quantum_device",
								["description"] = "Trinkets",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & ( ! talent.icecap.enabled || talent.icecap.enabled & buff.pillar_of_frost.remains >= 10 )",
								["action"] = "use_items",
							}, -- [2]
						},
						["covenants"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || ! raid_event.adds.exists || active_enemies >= 2",
								["action"] = "deaths_due",
								["description"] = "Covenant Abilities",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & runic_power.deficit > 3 & cooldown.pillar_of_frost.remains < 3 & ! talent.breath_of_sindragosa.enabled & ( ! raid_event.adds.exists || raid_event.adds.in > 15 )",
								["action"] = "swarming_mist",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ! talent.breath_of_sindragosa.enabled",
								["action"] = "swarming_mist",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.breath_of_sindragosa.enabled & ( buff.breath_of_sindragosa.up & ( active_enemies = 1 & runic_power.deficit > 40 || active_enemies >= 2 & runic_power.deficit > 60 ) || ! buff.breath_of_sindragosa.up & cooldown.breath_of_sindragosa.remains )",
								["action"] = "swarming_mist",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & cooldown.pillar_of_frost.remains < 3 & ( ! raid_event.adds.exists || raid_event.adds.in > 15 )",
								["action"] = "abomination_limb",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "abomination_limb",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & cooldown.pillar_of_frost.remains < 3 & ( ! raid_event.adds.exists || raid_event.adds.in > 15 )",
								["action"] = "shackle_the_unworthy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "shackle_the_unworthy",
							}, -- [8]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled || conduit.everfrost.enabled || runeforge.biting_cold.enabled",
								["action"] = "remorseless_winter",
								["description"] = "Standard single-target rotation",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! death_knight.runeforge.razorice & ( debuff.razorice.stack < 5 || debuff.razorice.remains < 7 )",
								["action"] = "glacial_advance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["action"] = "frost_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "conduit.eradicating_blow.enabled & buff.eradicating_blow.stack = 2 || conduit.unleashed_frenzy.enabled & buff.unleashed_frenzy.remains < 3 & buff.unleashed_frenzy.up",
								["action"] = "frost_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.frozen_pulse.up & talent.frozen_pulse.enabled || buff.killing_machine.react || death_and_decay.ticking & covenant.night_fae & buff.deaths_due.stack > 8 || rune.time_to_4 <= gcd",
								["action"] = "obliterate",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "frost_strike",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.enabled * 3 )",
								["action"] = "obliterate",
							}, -- [8]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [11]
						},
					},
					["version"] = 20210403,
					["warnings"] = "WARNING:  The import for 'obliteration_pooling' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 1: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\n\nWARNING:  The import for 'cold_heart' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'obliteration' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 1: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 6: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 9: Converted 'talent.X' to 'talent.X.enabled' (2x).\n\nWARNING:  The import for 'bos_ticking' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\n\nWARNING:  The import for 'covenants' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'standard' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 1: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 4: Converted 'conduit.X' to 'conduit.X.enabled' (2x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 8: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'bos_pooling' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 8: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'cooldowns' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 9: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 11: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 12: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'trinkets' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (2x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 3: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 11: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 13: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'aoe' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 8: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 10: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 12 action lists.\n",
					["profile"] = "## Death Knight Frost\n## April 2, 2021\n\n## Changes\n## - Removed last-second usage of Chains of Ice as it doesn't play well in practice.\n\n## Evaluates a trinkets cooldown, divided by pillar of frost or breath of sindragosa's cooldown. If it's value has no remainder return 1, else return 0.5.\n## actions.precombat=variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=trinket.1.has_use_buff&(!talent.breath_of_sindragosa&(trinket.1.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.duration%%trinket.1.cooldown.duration=0)||talent.icecap)\n## actions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=trinket.2.has_use_buff&(!talent.breath_of_sindragosa&(trinket.2.cooldown.duration%%cooldown.pillar_of_frost.duration=0)||talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.duration%%trinket.2.cooldown.duration=0)||talent.icecap)\n## Estimates a trinkets value by comparing the cooldown of the trinket, divided by the duration of the buff it provides. Has a strength modifier to give a higher priority to strength trinkets, as well as a modifier for if a trinket will or will not sync with cooldowns.\n## actions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!trinket.1.has_use_buff&trinket.2.has_use_buff||trinket.2.has_use_buff&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\n\n## Executed every time the actor is available.\nactions=mind_freeze\n# Prevent specified trinkets being used with automatic lines\nactions+=/variable,name=specified_trinket,value=(equipped.inscrutable_quantum_device&cooldown.inscrutable_quantum_device.ready)\n# Apply Frost Fever, maintain Icy Talons and keep Remorseless Winter rolling\nactions+=/remorseless_winter,if=conduit.everfrost&talent.gathering_storm&!talent.obliteration&cooldown.pillar_of_frost.remains\n# Apply Frost Fever and maintain Icy Talons\nactions+=/howling_blast,if=!dot.frost_fever.ticking&(talent.icecap||cooldown.breath_of_sindragosa.remains>15||talent.obliteration&cooldown.pillar_of_frost.remains&!buff.killing_machine.up)\nactions+=/glacial_advance,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&spell_targets.glacial_advance>=2&(!talent.breath_of_sindragosa||cooldown.breath_of_sindragosa.remains>15)\nactions+=/frost_strike,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&(!talent.breath_of_sindragosa||cooldown.breath_of_sindragosa.remains>15)\n# Choose Action list to run\nactions+=/call_action_list,name=covenants\nactions+=/call_action_list,name=racials\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=cold_heart,if=talent.cold_heart&buff.cold_heart.stack>=10&(debuff.razorice.stack=5||!death_knight.runeforge.razorice)\nactions+=/run_action_list,name=bos_ticking,if=buff.breath_of_sindragosa.up\nactions+=/run_action_list,name=bos_pooling,if=talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.remains<10)\nactions+=/run_action_list,name=obliteration,if=buff.pillar_of_frost.up&talent.obliteration\nactions+=/run_action_list,name=obliteration_pooling,if=talent.obliteration&cooldown.pillar_of_frost.remains<10\nactions+=/run_action_list,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,name=standard\n\n# AoE Rotation\nactions.aoe=remorseless_winter\nactions.aoe+=/glacial_advance,if=talent.frostscythe\nactions.aoe+=/frost_strike,cycle_targets=1,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm\nactions.aoe+=/howling_blast,if=buff.rime.up\nactions.aoe+=/obliterate,if=death_and_decay.ticking&covenant.night_fae&buff.deaths_due.stack<4\nactions.aoe+=/frostscythe,if=buff.killing_machine.react&(!death_and_decay.ticking&covenant.night_fae||!covenant.night_fae)\nactions.aoe+=/glacial_advance,if=runic_power.deficit<(15+talent.runic_attenuation*3)\nactions.aoe+=/frost_strike,cycle_targets=1,if=runic_power.deficit<(15+talent.runic_attenuation*3)\nactions.aoe+=/frostscythe,if=!death_and_decay.ticking&covenant.night_fae||!covenant.night_fae\nactions.aoe+=/obliterate,cycle_targets=1,if=runic_power.deficit>(25+talent.runic_attenuation*3)\nactions.aoe+=/glacial_advance\nactions.aoe+=/frost_strike,cycle_targets=1\nactions.aoe+=/horn_of_winter\nactions.aoe+=/arcane_torrent\n\n# Breath of Sindragosa pooling rotation : starts 10s before BoS is available\nactions.bos_pooling=howling_blast,if=buff.rime.up\nactions.bos_pooling+=/remorseless_winter,if=active_enemies>=2||rune.time_to_5<=gcd&(talent.gathering_storm||conduit.everfrost||runeforge.biting_cold)\n# 'target_if=max:(debuff.razorice.stack+1)%(debuff.razorice.remains+1)*death_knight.runeforge.razorice' Repeats a lot, this is intended to target the highest priority enemy with an ability that will apply razorice if runeforged. That being an enemy with 0 stacks, or an enemy that the debuff will soon expire on.\nactions.bos_pooling+=/obliterate,cycle_targets=1,if=runic_power.deficit>=25\nactions.bos_pooling+=/glacial_advance,if=runic_power.deficit<20&spell_targets.glacial_advance>=2&cooldown.pillar_of_frost.remains>5\nactions.bos_pooling+=/frost_strike,cycle_targets=1,if=runic_power.deficit<20&cooldown.pillar_of_frost.remains>5\nactions.bos_pooling+=/frostscythe,if=buff.killing_machine.react&runic_power.deficit>(15+talent.runic_attenuation*3)&spell_targets.frostscythe>=2&(buff.deaths_due.stack=8||!death_and_decay.ticking||!covenant.night_fae)\nactions.bos_pooling+=/frostscythe,if=runic_power.deficit>=(35+talent.runic_attenuation*3)&spell_targets.frostscythe>=2&(buff.deaths_due.stack=8||!death_and_decay.ticking||!covenant.night_fae)\nactions.bos_pooling+=/obliterate,cycle_targets=1,if=runic_power.deficit>=(35+talent.runic_attenuation*3)\nactions.bos_pooling+=/glacial_advance,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&spell_targets.glacial_advance>=2\nactions.bos_pooling+=/frost_strike,cycle_targets=1,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40\n\n# Breath of Sindragosa Active Rotation\nactions.bos_ticking=obliterate,cycle_targets=1,if=runic_power.deficit>=60\nactions.bos_ticking+=/remorseless_winter,if=talent.gathering_storm||conduit.everfrost||runeforge.biting_cold||active_enemies>=2\nactions.bos_ticking+=/howling_blast,if=buff.rime.up&(runic_power.deficit<55||rune.time_to_3<=gcd||spell_targets.howling_blast>=2)\nactions.bos_ticking+=/obliterate,cycle_targets=1,if=rune.time_to_4<gcd||runic_power.deficit>=45\nactions.bos_ticking+=/frostscythe,if=buff.killing_machine.up&spell_targets.frostscythe>=2&(!death_and_decay.ticking&covenant.night_fae||!covenant.night_fae)\nactions.bos_ticking+=/horn_of_winter,if=runic_power.deficit>=40&rune.time_to_3>gcd\nactions.bos_ticking+=/frostscythe,if=spell_targets.frostscythe>=2&(buff.deaths_due.stack=8||!death_and_decay.ticking||!covenant.night_fae)\nactions.bos_ticking+=/obliterate,cycle_targets=1,if=runic_power.deficit>25&rune>3\nactions.bos_ticking+=/howling_blast,if=buff.rime.up\nactions.bos_ticking+=/arcane_torrent,if=runic_power.deficit>50\n\n## Cold Heart Conditions\n## actions.cold_heart=chains_of_ice,if=fight_remains<gcd\n# Use during Pillar with Icecap/Breath\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&buff.pillar_of_frost.remains<3&buff.pillar_of_frost.up&buff.cold_heart.stack>=10\n# Outside of Pillar useage with Icecap/Breath\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&death_knight.runeforge.fallen_crusader&!buff.pillar_of_frost.up&(buff.cold_heart.stack>=16&buff.unholy_strength.up||buff.cold_heart.stack>=19&cooldown.pillar_of_frost.remains>10)\nactions.cold_heart+=/chains_of_ice,if=!talent.obliteration&!death_knight.runeforge.fallen_crusader&buff.cold_heart.stack>=10&!buff.pillar_of_frost.up&cooldown.pillar_of_frost.remains>20\n# Prevent Cold Heart overcapping during pillar\nactions.cold_heart+=/chains_of_ice,if=talent.obliteration&!buff.pillar_of_frost.up&(buff.cold_heart.stack>=16&buff.unholy_strength.up||buff.cold_heart.stack>=19||cooldown.pillar_of_frost.remains<3&buff.cold_heart.stack>=14)\n\n# Potion\nactions.cooldowns+=/potion,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\n# Cooldowns\nactions.cooldowns+=/empower_rune_weapon,if=talent.obliteration&(cooldown.pillar_of_frost.ready&rune.time_to_5>gcd&runic_power.deficit>=10||buff.pillar_of_frost.up&rune.time_to_5>gcd)||fight_remains<20\nactions.cooldowns+=/empower_rune_weapon,if=talent.breath_of_sindragosa&runic_power.deficit>40&rune.time_to_5>gcd&(buff.breath_of_sindragosa.up||fight_remains<20)\nactions.cooldowns+=/empower_rune_weapon,if=talent.icecap&rune<3\nactions.cooldowns+=/pillar_of_frost,if=talent.breath_of_sindragosa&(cooldown.breath_of_sindragosa.remains||cooldown.breath_of_sindragosa.ready&runic_power.deficit<60)\nactions.cooldowns+=/pillar_of_frost,if=talent.icecap&!buff.pillar_of_frost.up\nactions.cooldowns+=/pillar_of_frost,if=talent.obliteration&(talent.gathering_storm.enabled&buff.remorseless_winter.up||!talent.gathering_storm.enabled)\nactions.cooldowns+=/breath_of_sindragosa,if=buff.pillar_of_frost.up\nactions.cooldowns+=/frostwyrms_fury,if=buff.pillar_of_frost.remains<gcd&buff.pillar_of_frost.up&!talent.obliteration\nactions.cooldowns+=/frostwyrms_fury,if=active_enemies>=2&(buff.pillar_of_frost.up&buff.pillar_of_frost.remains<gcd||raid_event.adds.exists&raid_event.adds.remains<gcd||fight_remains<gcd)\nactions.cooldowns+=/frostwyrms_fury,if=talent.obliteration&!buff.pillar_of_frost.up&((buff.unholy_strength.up||!death_knight.runeforge.fallen_crusader)&(debuff.razorice.stack=5||!death_knight.runeforge.razorice))\nactions.cooldowns+=/hypothermic_presence,if=talent.breath_of_sindragosa&runic_power.deficit>40&rune>=3&buff.pillar_of_frost.up||!talent.breath_of_sindragosa&runic_power.deficit>=25\nactions.cooldowns+=/raise_dead,if=buff.pillar_of_frost.up\nactions.cooldowns+=/sacrificial_pact,if=active_enemies>=2&(pet.ghoul.remains<gcd||target.time_to_die<gcd)\nactions.cooldowns+=/death_and_decay,if=active_enemies>5||runeforge.phearomones\n\n# Covenant Abilities\nactions.covenants=deaths_due,if=raid_event.adds.in>15||!raid_event.adds.exists||active_enemies>=2\nactions.covenants+=/swarming_mist,if=active_enemies=1&runic_power.deficit>3&cooldown.pillar_of_frost.remains<3&!talent.breath_of_sindragosa&(!raid_event.adds.exists||raid_event.adds.in>15)\nactions.covenants+=/swarming_mist,if=active_enemies>=2&!talent.breath_of_sindragosa\nactions.covenants+=/swarming_mist,if=talent.breath_of_sindragosa&(buff.breath_of_sindragosa.up&(active_enemies=1&runic_power.deficit>40||active_enemies>=2&runic_power.deficit>60)||!buff.breath_of_sindragosa.up&cooldown.breath_of_sindragosa.remains)\nactions.covenants+=/abomination_limb,if=active_enemies=1&cooldown.pillar_of_frost.remains<3&(!raid_event.adds.exists||raid_event.adds.in>15)\nactions.covenants+=/abomination_limb,if=active_enemies>=2\nactions.covenants+=/shackle_the_unworthy,if=active_enemies=1&cooldown.pillar_of_frost.remains<3&(!raid_event.adds.exists||raid_event.adds.in>15)\nactions.covenants+=/shackle_the_unworthy,if=active_enemies>=2\n\n# Obliteration rotation\nactions.obliteration=remorseless_winter,if=active_enemies>=3&(talent.gathering_storm||conduit.everfrost||runeforge.biting_cold)\nactions.obliteration+=/howling_blast,if=!dot.frost_fever.ticking&!buff.killing_machine.up\nactions.obliteration+=/frostscythe,if=buff.killing_machine.react&spell_targets.frostscythe>=2&(buff.deaths_due.stack=8||!death_and_decay.ticking||!covenant.night_fae)\nactions.obliteration+=/obliterate,cycle_targets=1,if=buff.killing_machine.react||!buff.rime.up&spell_targets.howling_blast>=3\nactions.obliteration+=/glacial_advance,if=spell_targets.glacial_advance>=2&(runic_power.deficit<10||rune.time_to_2>gcd)||(debuff.razorice.stack<5||debuff.razorice.remains<15)\nactions.obliteration+=/frost_strike,if=conduit.eradicating_blow&buff.eradicating_blow.stack=2&active_enemies=1\nactions.obliteration+=/howling_blast,if=buff.rime.up&spell_targets.howling_blast>=2\nactions.obliteration+=/glacial_advance,if=spell_targets.glacial_advance>=2\nactions.obliteration+=/frost_strike,cycle_targets=1,if=!talent.avalanche&!buff.killing_machine.up||talent.avalanche&!buff.rime.up\nactions.obliteration+=/howling_blast,if=buff.rime.up\nactions.obliteration+=/obliterate,cycle_targets=1\n\n# Pooling For Obliteration: Starts 10 seconds before Pillar of Frost comes off CD\nactions.obliteration_pooling=remorseless_winter,if=talent.gathering_storm||conduit.everfrost||runeforge.biting_cold||active_enemies>=2\nactions.obliteration_pooling+=/howling_blast,if=buff.rime.up\nactions.obliteration_pooling+=/obliterate,cycle_targets=1,if=buff.killing_machine.react\nactions.obliteration_pooling+=/glacial_advance,if=spell_targets.glacial_advance>=2&runic_power.deficit<60\nactions.obliteration_pooling+=/frost_strike,cycle_targets=1,if=runic_power.deficit<70\nactions.obliteration_pooling+=/obliterate,cycle_targets=1,if=rune>4\nactions.obliteration_pooling+=/frostscythe,if=active_enemies>=4&(!death_and_decay.ticking&covenant.night_fae||!covenant.night_fae)\n\n# Racial Abilities\nactions.racials=blood_fury,if=buff.pillar_of_frost.up\nactions.racials+=/berserking,if=buff.pillar_of_frost.up\nactions.racials+=/arcane_pulse,if=(!buff.pillar_of_frost.up&active_enemies>=2)||!buff.pillar_of_frost.up&(rune.deficit>=5&runic_power.deficit>=60)\nactions.racials+=/lights_judgment,if=buff.pillar_of_frost.up\nactions.racials+=/ancestral_call,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.racials+=/fireblood,if=buff.pillar_of_frost.remains<=8&buff.empower_rune_weapon.up\nactions.racials+=/bag_of_tricks,if=buff.pillar_of_frost.up&active_enemies=1&(buff.pillar_of_frost.remains<5&talent.cold_heart.enabled||!talent.cold_heart.enabled&buff.pillar_of_frost.remains<3)\n\n# Standard single-target rotation\nactions.standard=remorseless_winter,if=talent.gathering_storm||conduit.everfrost||runeforge.biting_cold\nactions.standard+=/glacial_advance,if=!death_knight.runeforge.razorice&(debuff.razorice.stack<5||debuff.razorice.remains<7)\nactions.standard+=/frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm\nactions.standard+=/frost_strike,if=conduit.eradicating_blow&buff.eradicating_blow.stack=2||conduit.unleashed_frenzy&buff.unleashed_frenzy.remains<3&buff.unleashed_frenzy.up\nactions.standard+=/howling_blast,if=buff.rime.up\nactions.standard+=/obliterate,if=!buff.frozen_pulse.up&talent.frozen_pulse||buff.killing_machine.react||death_and_decay.ticking&covenant.night_fae&buff.deaths_due.stack>8||rune.time_to_4<=gcd\nactions.standard+=/frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation*3)\nactions.standard+=/obliterate,if=runic_power.deficit>(25+talent.runic_attenuation*3)\nactions.standard+=/frost_strike\nactions.standard+=/horn_of_winter\nactions.standard+=/arcane_torrent\n\n# Trinkets\nactions.trinkets=inscrutable_quantum_device,if=buff.pillar_of_frost.up||target.time_to_pct_20<5||fight_remains<21\nactions.trinkets+=/use_items,if=buff.pillar_of_frost.up&(!talent.icecap||talent.icecap&buff.pillar_of_frost.remains>=10)\n## The trinket with the highest estimated value, will be used first and paired with Pillar of Frost.\n## actions.trinkets+=/use_item,slot=trinket1,if=!variable.specified_trinket&buff.pillar_of_frost.up&(!talent.icecap||talent.icecap&buff.pillar_of_frost.remains>=10)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||trinket.1.proc.any_dps.duration>=fight_remains\n## actions.trinkets+=/use_item,slot=trinket2,if=!variable.specified_trinket&buff.pillar_of_frost.up&(!talent.icecap||talent.icecap&buff.pillar_of_frost.remains>=10)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||trinket.2.proc.any_dps.duration>=fight_remains\n## If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.\n## actions.trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&(trinket.2.cooldown.remains||!trinket.2.has_use_buff)||cooldown.pillar_of_frost.remains>20\n## actions.trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&(trinket.1.cooldown.remains||!trinket.1.has_use_buff)||cooldown.pillar_of_frost.remains>20",
					["spec"] = 251,
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210419,
					["spec"] = 262,
					["desc"] = "Elemental Shaman\nApril 12, 2021\n\nChanges:\n- Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n- Add Meteor and Eye of the Storm again.",
					["profile"] = "## Elemental Shaman\n## April 12, 2021\n\n## Changes:\n## - Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n## - Add Meteor and Eye of the Storm again.\n\n# Executed every time the actor is available.\nactions.precombat=earth_elemental,if=!talent.primal_elementalist.enabled\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,line_cd=5,if=!talent.elemental_blast.enabled\nactions.precombat+=/flame_shock,if=refreshable\nactions.precombat+=/potion\n\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/spiritwalkers_grace,moving=1\nactions+=/potion\nactions+=/use_items\nactions+=/fire_elemental\nactions+=/meteor\nactions+=/storm_elemental\nactions+=/eye_of_the_storm,if=buff.call_lightning.remains>=10\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\n\nactions+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions+=/vesper_totem\nactions+=/fae_transfusion,if=!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up\n\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target,strict=1,if=!talent.storm_elemental.enabled&active_enemies<=2\nactions+=/run_action_list,name=se_single_target,strict=1,if=talent.storm_elemental.enabled&active_enemies<=2\n\nactions.aoe=earthquake,if=buff.echoing_shock.up\nactions.aoe+=/chain_harvest\nactions.aoe+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(active_dot.flame_shock<3&active_enemies<=5||runeforge.skybreakers_fiery_demise.equipped)\nactions.aoe+=/flame_shock,if=!active_dot.flame_shock\nactions.aoe+=/echoing_shock,if=talent.echoing_shock.enabled&maelstrom>=60\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(!pet.storm_elemental.active)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.aoe+=/earth_shock,if=runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up\nactions.aoe+=/earth_elemental,if=runeforge.deeptremor_stone.equipped&(!talent.primal_elementalist.enabled||(!pet.storm_elemental.active&!pet.fire_elemental.active))\nactions.aoe+=/lava_burst,cycle_targets=1,if=spell_targets.chain_lightning<4||buff.lava_surge.up||(talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=60)\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled||buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3\n# Make sure you don't lose a Stormkeeper buff.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!pet.storm_elemental.active)&dot.flame_shock.ticking\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<5&(!pet.storm_elemental.active)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=buff.lava_surge.up&cooldown_react\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\nactions.se_single_target=flame_shock,cycle_targets=1,if=(remains<=gcd)&(buff.lava_surge.up||!buff.bloodlust.up)\nactions.se_single_target+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.se_single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(maelstrom<44)\nactions.se_single_target+=/echoing_shock,if=talent.echoing_shock.enabled\nactions.se_single_target+=/lava_burst,if=buff.wind_gust.stack<18||buff.lava_surge.up\nactions.se_single_target+=/lightning_bolt,if=buff.stormkeeper.up\nactions.se_single_target+=/earthquake,if=buff.echoes_of_great_sundering.up\nactions.se_single_target+=/earthquake,if=(spell_targets.chain_lightning>1)&(!dot.flame_shock.refreshable)\nactions.se_single_target+=/earth_shock,if=spell_targets.chain_lightning<2&maelstrom>=60&(buff.wind_gust.stack<20||maelstrom>90)||(runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up)\nactions.se_single_target+=/lightning_bolt,if=(buff.stormkeeper.remains<settings.stack_buffer*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.se_single_target+=/lava_burst,if=buff.ascendance.up\nactions.se_single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\nactions.se_single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)\nactions.se_single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.se_single_target+=/chain_harvest\nactions.se_single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.se_single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(!pet.storm_elemental.active)\nactions.se_single_target+=/chain_lightning,if=spell_targets.chain_lightning=2\nactions.se_single_target+=/lightning_bolt\nactions.se_single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.se_single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.se_single_target+=/frost_shock,moving=1\n\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4)&(buff.lava_surge.up||!buff.bloodlust.up)\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&(time>=60||buff.bloodlust.up)&(cooldown.lava_burst.remains>0)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up&maelstrom<60||!buff.master_of_the_elements.up)||!talent.master_of_the_elements.enabled)\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(maelstrom<44)\nactions.single_target+=/echoing_shock,if=talent.echoing_shock.enabled&cooldown.lava_burst.remains<=0\nactions.single_target+=/lava_burst,if=talent.echoing_shock.enabled&buff.echoing_shock.up\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(buff.master_of_the_elements.up)\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&(talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled||cooldown.elemental_blast.remains<=1.1*gcd*2)\nactions.single_target+=/earthquake,if=spell_targets.chain_lightning>1&!dot.flame_shock.refreshable&!runeforge.echoes_of_great_sundering.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92)\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lightning_bolt,if=(buff.stormkeeper.remains<settings.stack_buffer*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack\nactions.single_target+=/lava_burst,if=cooldown_react\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable\nactions.single_target+=/earthquake,if=spell_targets.chain_lightning>1&!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/frost_shock,if=runeforge.elemental_equilibrium.equipped&!buff.elemental_equilibrium_debuff.up&!talent.elemental_blast.enabled&!talent.echoing_shock.enabled\nactions.single_target+=/chain_harvest\nactions.single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||!pet.fire_elemental.active\nactions.single_target+=/chain_lightning,if=spell_targets.chain_lightning=2\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20210419,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "( ! ticking || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 ) & ( buff.lava_surge.up || ! buff.bloodlust.up )",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( time >= 60 || buff.bloodlust.up ) & ( cooldown.lava_burst.remains > 0 ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up & maelstrom < 60 || ! buff.master_of_the_elements.up ) || ! talent.master_of_the_elements.enabled )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( maelstrom < 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & cooldown.lava_burst.remains <= 0",
								["action"] = "echoing_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & ( talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled || cooldown.elemental_blast.remains <= 1.1 * gcd * 2 )",
								["action"] = "earthquake",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1 & ! dot.flame_shock.refreshable & ! runeforge.echoes_of_great_sundering.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 )",
								["action"] = "earthquake",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < settings.stack_buffer * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 )",
								["action"] = "icefury",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1 & ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up",
								["action"] = "earthquake",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.elemental_equilibrium.equipped & ! buff.elemental_equilibrium_debuff.up & ! talent.elemental_blast.enabled & ! talent.echoing_shock.enabled",
								["action"] = "frost_shock",
							}, -- [23]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || ! pet.fire_elemental.active",
								["action"] = "earth_elemental",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning = 2",
								["action"] = "chain_lightning",
							}, -- [27]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [28]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = 1,
							}, -- [30]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [31]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [1]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "spiritwalkers_grace",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.remains >= 10",
								["action"] = "eye_of_the_storm",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["criteria"] = "! buff.primordial_wave.up",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up",
								["action"] = "fae_transfusion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "single_target",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "se_single_target",
							}, -- [19]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "earth_elemental",
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! talent.primal_elementalist.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "stormkeeper",
								["description"] = "Use Stormkeeper precombat unless some adds will spawn soon.",
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["criteria"] = "! talent.elemental_blast.enabled",
								["line_cd"] = "5",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.echoing_shock.up",
								["action"] = "earthquake",
							}, -- [1]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( active_dot.flame_shock < 3 & active_enemies <= 5 || runeforge.skybreakers_fiery_demise.equipped )",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! active_dot.flame_shock",
								["action"] = "flame_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & maelstrom >= 60",
								["action"] = "echoing_shock",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( ! pet.storm_elemental.active ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.deeptremor_stone.equipped & ( ! talent.primal_elementalist.enabled || ( ! pet.storm_elemental.active & ! pet.fire_elemental.active ) )",
								["action"] = "earth_elemental",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["criteria"] = "spell_targets.chain_lightning < 4 || buff.lava_surge.up || ( talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 60 )",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "earthquake",
								["description"] = "Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!",
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "chain_lightning",
								["description"] = "Make sure you don't lose a Stormkeeper buff.",
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["description"] = "Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.",
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! pet.storm_elemental.active ) & dot.flame_shock.ticking",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "elemental_blast",
								["description"] = "Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.",
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 5 & ( ! pet.storm_elemental.active )",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [16]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "lava_burst",
								["criteria"] = "buff.lava_surge.up & cooldown_react",
								["moving"] = 1,
							}, -- [18]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [19]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
						},
						["se_single_target"] = {
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "( remains <= gcd ) & ( buff.lava_surge.up || ! buff.bloodlust.up )",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( maelstrom < 44 )",
								["action"] = "stormkeeper",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled",
								["action"] = "echoing_shock",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.wind_gust.stack < 18 || buff.lava_surge.up",
								["action"] = "lava_burst",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.chain_lightning > 1 ) & ( ! dot.flame_shock.refreshable )",
								["action"] = "earthquake",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 2 & maelstrom >= 60 & ( buff.wind_gust.stack < 20 || maelstrom > 90 ) || ( runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < settings.stack_buffer * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 )",
								["action"] = "icefury",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [16]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || talent.primal_elementalist.enabled & ( ! pet.storm_elemental.active )",
								["action"] = "earth_elemental",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning = 2",
								["action"] = "chain_lightning",
							}, -- [20]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [21]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = 1,
							}, -- [23]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [24]
						},
					},
					["author"] = "SimulationCraft",
				},
				["Unholy"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210502,
					["spec"] = 252,
					["desc"] = "Death Knight Unholy\nMay 2, 2021\n\nChanges:\n- Adjustments to DnD/Defile/Deaths Due to only count targets who are expected to live long enough to matter (aoe_setup #1).\n- Disabled Sacrificial Pact because dead ghouls make for sad DKs.\n- Using Wound Spender abilities more flexibly (at 4+ stacks instead of 5+); DPS neutral and may prevent some no-rec situations.\n- Using Festering Strike in AOE if you have nothing else to do and won't overcap wounds is DPS neutral.\n- Changed many 'fight_remains' conditionals to apply in boss fights only (less CD waste on trash).\n- Added another Outbreak entry to set up stronger Epidemics.\n- TODO:  New trinket criteria.",
					["lists"] = {
						["aoe_setup"] = {
							{
								["enabled"] = true,
								["criteria"] = "death_knight.fwounded_targets >= cycle_enemies || raid_event.adds.exists & raid_event.adds.remains <= 11",
								["action"] = "any_dnd",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "death_knight.fwounded_targets >= 5",
								["action"] = "any_dnd",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power & ( buff.dark_transformation.up & runeforge.deadliest_coil.enabled & active_enemies <= 3 || active_enemies = 2 )",
								["action"] = "death_coil",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power",
								["action"] = "epidemic",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack <= 3 & cooldown.apocalypse.remains < 3",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack < 1",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack <= 3 & rune.time_to_4 < cooldown.any_dnd.remains",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ! settings.cycle || death_knight.fwounded_targets >= cycle_enemies ) & debuff.festering_wound.stack > 3 & rune.time_to_3 < cooldown.any_dnd.remains",
								["action"] = "wound_spender",
								["description"] = "When target swaps are disabled, this will let you spend runes/wounds instead of waiting for DnD/Defile/Death's Due.",
							}, -- [8]
						},
						["aoe_burst"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.sudden_doom.react || ! variable.pooling_runic_power ) & ( buff.dark_transformation.up & runeforge.deadliest_coil.enabled & active_enemies <= 3 || active_enemies = 2 )",
								["action"] = "death_coil",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 10 + death_knight.fwounded_targets * 3 ) & death_knight.fwounded_targets < 6 & ! variable.pooling_runic_power || buff.swarming_mist.up",
								["action"] = "epidemic",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 25 & death_knight.fwounded_targets > 5 & ! variable.pooling_runic_power",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! death_knight.fwounded_targets & ! variable.pooling_runic_power || fight_remains < 5 || raid_event.adds.exists & raid_event.adds.remains < 5",
								["action"] = "epidemic",
							}, -- [4]
							{
								["action"] = "wound_spender",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power",
								["action"] = "epidemic",
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.major_cooldowns_active || boss & fight_remains < 26",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.unholy_blight.remains < 5 & cooldown.dark_transformation.remains_expected < 5 & talent.unholy_blight.enabled || ! talent.unholy_blight.enabled || boss & fight_remains < 35",
								["action"] = "army_of_the_dead",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "soul_reaper",
								["criteria"] = "target.time_to_pct_35 < 5 & target.time_to_die > 5 & active_enemies <= 3",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ( cooldown.apocalypse.remains_expected < 5 || cooldown.apocalypse.remains_expected > 10 ) & ( cooldown.dark_transformation.remains < gcd || buff.dark_transformation.up )",
								["action"] = "unholy_blight",
								["description"] = "Holds Blight for up to 5 seconds to sync with Apocalypse, Otherwise, use with Dark Transformation.",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || boss & fight_remains < 21",
								["action"] = "unholy_blight",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ( dot.unholy_blight_dot.remains || ! talent.unholy_blight.enabled )",
								["action"] = "dark_transformation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || boss & fight_remains < 21",
								["action"] = "dark_transformation",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & debuff.festering_wound.stack > 3",
								["action"] = "apocalypse",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "apocalypse",
								["criteria"] = "active_enemies >= 2 & debuff.festering_wound.stack > 3 & ! death_and_decay.ticking",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14 & ( cooldown.unholy_blight.remains < 10 || dot.unholy_blight_dot.remains )",
								["action"] = "summon_gargoyle",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & debuff.festering_wound.stack < 2 & ( pet.apoc_ghoul.active || buff.dark_transformation.up & ! pet.army_ghoul.active )",
								["action"] = "unholy_assault",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "unholy_assault",
								["criteria"] = "active_enemies >= 2 & debuff.festering_wound.stack < 2",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! pet.ghoul.active",
								["action"] = "raise_dead",
							}, -- [13]
						},
						["generic"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & ! variable.pooling_runic_power || pet.gargoyle.active",
								["action"] = "death_coil",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & cooldown.deaths_due.remains < 3 & runic_power.deficit < 10",
								["action"] = "death_coil",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.defile.enabled || covenant.night_fae || runeforge.phearomones.enabled ) & ( ! variable.pooling_runes || fight_remains < 5 )",
								["action"] = "any_dnd",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & runic_power.deficit < 20 & ! variable.pooling_runic_power",
								["action"] = "death_coil",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & cooldown.deaths_due.remains < 10 & debuff.festering_wound.stack < 4 & ! variable.pooling_runes & ( ! death_and_decay.ticking || buff.deaths_due.stack = 4 )",
								["action"] = "festering_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 13 || fight_remains < 5 & ! debuff.festering_wound.up",
								["action"] = "death_coil",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack > 3 & ! variable.pooling_runes",
								["action"] = "wound_spender",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.up & cooldown.apocalypse.remains_expected > 5 & ! variable.pooling_runes",
								["action"] = "wound_spender",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & ! variable.pooling_runic_power",
								["action"] = "death_coil",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack < 1 & ! variable.pooling_runes",
								["action"] = "festering_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack < 4 & cooldown.apocalypse.remains_expected < 5 & ! variable.pooling_runes",
								["action"] = "festering_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_runic_power",
								["action"] = "death_coil",
							}, -- [12]
						},
						["covenants"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & runic_power.deficit > 16 & ( cooldown.apocalypse.remains || ! talent.army_of_the_damned.enabled & cooldown.dark_transformation.remains ) || boss & fight_remains < 11",
								["action"] = "swarming_mist",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains & ( active_enemies >= 2 & active_enemies <= 5 & runic_power.deficit > 10 + ( active_enemies * 6 ) || active_enemies > 5 & runic_power.deficit > 40 )",
								["action"] = "swarming_mist",
								["description"] = "Set to use after apoc is on CD as to prevent overcapping RP while setting up CD's",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ! soulbind.lead_by_example.enabled & ( cooldown.apocalypse.remains || ! talent.army_of_the_damned.enabled & cooldown.dark_transformation.remains ) & rune.time_to_4 > ( 3 + buff.runic_corruption.remains ) || boss & fight_remains < 21",
								["action"] = "abomination_limb",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & soulbind.lead_by_example.enabled & ( dot.unholy_blight_dot.remains > 11 || ! talent.unholy_blight.enabled & cooldown.dark_transformation.remains )",
								["action"] = "abomination_limb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & rune.time_to_4 > ( 3 + buff.runic_corruption.remains )",
								["action"] = "abomination_limb",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.st_planning & ( cooldown.apocalypse.remains || ! talent.army_of_the_damned.enabled & cooldown.dark_transformation.remains ) || boss & fight_remains < 15",
								["action"] = "shackle_the_unworthy",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( death_and_decay.ticking || raid_event.adds.remains <= 14 )",
								["action"] = "shackle_the_unworthy",
							}, -- [7]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [2]
						},
						["racials"] = {
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 65 & ( pet.gargoyle.active || ! talent.summon_gargoyle.enabled ) & rune.deficit >= 5",
								["action"] = "arcane_torrent",
								["description"] = "Racials",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.major_cooldowns_active || target.time_to_die <= buff.blood_fury.duration",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.major_cooldowns_active || target.time_to_die <= buff.berserking.duration",
								["action"] = "berserking",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.major_cooldowns_active || target.time_to_die <= 15",
								["action"] = "ancestral_call",
								["description"] = "Ancestral Call can trigger 4 potential buffs, each lasting 15 seconds. Utilized hard coded time as a trigger to keep it readable.",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || ( rune.deficit >= 5 & runic_power.deficit >= 60 )",
								["action"] = "arcane_pulse",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.major_cooldowns_active || target.time_to_die <= buff.fireblood.duration",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & active_enemies = 1",
								["action"] = "bag_of_tricks",
							}, -- [8]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "( cooldown.unholy_blight.remains || cooldown.dark_transformation.remains ) & ( pet.army_ghoul.active || pet.apoc_ghoul.active & ! talent.army_of_the_damned.enabled || target.time_to_pct_20 < 5 ) || boss & fight_remains < 21",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "macabre_sheet_music",
								["action"] = "macabre_sheet_music",
								["criteria"] = "cooldown.apocalypse.remains < 5 & ( ! equipped.inscrutable_quantum_device || cooldown.inscrutable_quantum_device.remains ) || boss & fight_remains < 21",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
								["criteria"] = "cooldown.apocalypse.remains & ( ! equipped.inscrutable_quantum_device || cooldown.inscrutable_quantum_device.remains ) || boss & fight_remains < 3",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "darkmoon_deck_voracity",
								["action"] = "darkmoon_deck_voracity",
								["criteria"] = "cooldown.apocalypse.remains & ( ! equipped.inscrutable_quantum_device || cooldown.inscrutable_quantum_device.remains ) || boss & fight_remains < 21",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.apocalypse.remains || buff.dark_transformation.up ) & ( ! equipped.inscrutable_quantum_device || cooldown.inscrutable_quantum_device.remains )",
								["action"] = "use_items",
							}, -- [5]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( equipped.inscrutable_quantum_device & cooldown.inscrutable_quantum_device.ready )",
								["description"] = "Prevent specified trinkets being used with automatic lines",
								["var_name"] = "specified_trinket",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.summon_gargoyle.remains < 5 & talent.summon_gargoyle.enabled",
								["var_name"] = "pooling_runic_power",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.soul_reaper.enabled & rune < 2 & target.time_to_pct_35 < 5 & fight_remains > 5",
								["var_name"] = "pooling_runes",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 & ( ! raid_event.adds.exists || raid_event.adds.in > 15 )",
								["var_name"] = "st_planning",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "pet.gargoyle.active || buff.unholy_assault.up || talent.army_of_the_damned.enabled & pet.apoc_ghoul.active || buff.dark_transformation.up",
								["var_name"] = "major_cooldowns_active",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.virulent_plague.refreshable & ! talent.unholy_blight.enabled & ! raid_event.adds.exists",
								["action"] = "outbreak",
								["description"] = "Maintaining Virulent Plague is a priority",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["criteria"] = "dot.virulent_plague.refreshable & active_enemies >= 2 & ( ! talent.unholy_blight.enabled || cooldown.unholy_blight.remains & buff.unholy_blight_buff.down )",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["line_cd"] = "6",
								["criteria"] = "active_dot.virulent_plague < active_enemies & active_enemies >= 2 & ( ! talent.unholy_blight.enabled || cooldown.unholy_blight.remains & buff.unholy_blight_buff.down )",
								["description"] = "If there are enemies missing VP, apply it (but no more than once per 6 seconds).",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.superstrain.enabled & ( dot.frost_fever.refreshable || dot.blood_plague.refreshable )",
								["action"] = "outbreak",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & death_and_decay.active_remains < ( gcd * 1.5 ) & death_and_decay.ticking",
								["action"] = "wound_spender",
								["description"] = "Refreshes Deaths Due's buff just before deaths due ends",
							}, -- [11]
							{
								["enabled"] = true,
								["sec"] = "cooldown.soul_reaper.remains",
								["action"] = "wait",
								["criteria"] = "talent.soul_reaper.enabled & target.time_to_pct_35 < 5 & target.time_to_die > 5 & cooldown.soul_reaper.remains < ( gcd * 0.75 ) & active_enemies = 1",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Wait for Death's Due/Defile if Night Fae to get strength buff back asap",
								["sec"] = "cooldown.deaths_due.remains",
								["criteria"] = "covenant.night_fae & cooldown.deaths_due.remains < gcd & active_enemies = 1",
								["action"] = "wait",
							}, -- [13]
							{
								["enabled"] = true,
								["sec"] = "cooldown.defile.remains",
								["action"] = "wait",
								["criteria"] = "covenant.night_fae & cooldown.defile.remains < gcd & active_enemies = 1",
							}, -- [14]
							{
								["enabled"] = true,
								["description"] = "Action Lists and Openers (Openers/Sequences unsupported in addon.)",
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "covenants",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "racials",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "actions.default+=/sequence,if=active_enemies=1&!death_knight.disable_aotd,name=opener:army_of_the_dead:festering_strike:festering_strike:unholy_blight:potion:dark_transformation:apocalypse",
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( cooldown.death_and_decay.remains < 10 & ! talent.defile.enabled || cooldown.defile.remains < 10 & talent.defile.enabled ) & ! death_and_decay.ticking",
								["action"] = "run_action_list",
								["list_name"] = "aoe_setup",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 2 & death_and_decay.ticking",
								["list_name"] = "aoe_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( ! death_and_decay.ticking & ( cooldown.death_and_decay.remains > 10 & ! talent.defile.enabled || cooldown.defile.remains > 10 & talent.defile.enabled ) )",
								["action"] = "run_action_list",
								["list_name"] = "generic_aoe",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "generic",
							}, -- [22]
						},
						["generic_aoe"] = {
							{
								["enabled"] = true,
								["sec"] = "cooldown.soul_reaper.remains",
								["action"] = "wait",
								["criteria"] = "talent.soul_reaper.enabled & target.time_to_pct_35 < 5 & fight_remains > 5 & cooldown.soul_reaper.remains < ( gcd * 0.75 ) & active_enemies <= 3",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.pooling_runic_power || buff.sudden_doom.react ) & ( buff.dark_transformation.up & runeforge.deadliest_coil.enabled & active_enemies <= 3 || active_enemies = 2 )",
								["action"] = "death_coil",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react || ! variable.pooling_runic_power",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If target cycling is disabled, switch back to the single-target generic list instead.",
								["strict"] = 1,
								["criteria"] = "cycle_enemies = 1",
								["list_name"] = "generic",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "wound_spender",
								["criteria"] = "( cooldown.apocalypse.remains > 5 & debuff.festering_wound.up || debuff.festering_wound.stack > 3 ) & ( fight_remains < cooldown.death_and_decay.remains + 10 || fight_remains > cooldown.apocalypse.remains )",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "debuff.festering_wound.stack <= 3 & cooldown.apocalypse.remains < 3 || debuff.festering_wound.stack < 1",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "festering_strike",
								["criteria"] = "cooldown.apocalypse.remains > 5 & debuff.festering_wound.stack < 1",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.festering_wound >= cycle_enemies & debuff.festering_wound.stack < 4",
								["action"] = "festering_strike",
								["description"] = "This is effectively filler which sims DPS neutral, but should prevent a scenario where the addon has nothing to recommend.",
							}, -- [8]
						},
					},
					["version"] = 20210502,
					["warnings"] = "WARNING:  The import for 'aoe_setup' required some automated changes.\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'aoe_burst' required some automated changes.\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'trinkets' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'generic' required some automated changes.\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'covenants' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'cooldowns' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'generic_aoe' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 6: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 8: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 9: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 10: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 12: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 19: Converted 'talent.X' to 'talent.X.enabled' (2x).\nLine 21: Converted 'talent.X' to 'talent.X.enabled' (2x).\n\nImported 10 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "## Death Knight Unholy\n## May 2, 2021\n\n## Changes:\n## - Adjustments to DnD/Defile/Deaths Due to only count targets who are expected to live long enough to matter (aoe_setup #1).\n## - Disabled Sacrificial Pact because dead ghouls make for sad DKs.\n## - Using Wound Spender abilities more flexibly (at 4+ stacks instead of 5+); DPS neutral and may prevent some no-rec situations.\n## - Using Festering Strike in AOE if you have nothing else to do and won't overcap wounds is DPS neutral.\n## - Changed many 'fight_remains' conditionals to apply in boss fights only (less CD waste on trash).\n## - Added another Outbreak entry to set up stronger Epidemics.\n## - TODO:  New trinket criteria.\n\nactions.precombat+=/potion\nactions.precombat+=/raise_dead\n## Evaluates a trinkets cooldown, divided by 45. This was chosen as unholy works on 45 second burst cycles, but has too many cdr effects to give a cooldown.x.duration divisor instead. If it's value has no remainder return 1, else return 0.5.\n## actions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=trinket.1.has_use_buff&(trinket.1.cooldown.duration%%45=0)\n## actions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=trinket.2.has_use_buff&(trinket.2.cooldown.duration%%45=0)\n## Estimates a trinkets value by comparing the cooldown of the trinket, divided by the duration of the buff it provides. Has a strength modifier to give a higher priority to strength trinkets, as well as a modifier for if a trinket will or will not sync with cooldowns.\n## actions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!trinket.1.has_use_buff&trinket.2.has_use_buff||trinket.2.has_use_buff&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff)*(variable.trinket_1_sync))\n\n\n## Executed every time the actor is available.\nactions=mind_freeze\n# Prevent specified trinkets being used with automatic lines\nactions+=/variable,name=specified_trinket,value=(equipped.inscrutable_quantum_device&cooldown.inscrutable_quantum_device.ready)\n## Variables\nactions+=/variable,name=pooling_runic_power,value=cooldown.summon_gargoyle.remains<5&talent.summon_gargoyle\nactions+=/variable,name=pooling_runes,value=talent.soul_reaper&rune<2&target.time_to_pct_35<5&fight_remains>5\nactions+=/variable,name=st_planning,value=active_enemies=1&(!raid_event.adds.exists||raid_event.adds.in>15)\nactions+=/variable,name=major_cooldowns_active,value=pet.gargoyle.active||buff.unholy_assault.up||talent.army_of_the_damned&pet.apoc_ghoul.active||buff.dark_transformation.up\n# Maintaining Virulent Plague is a priority\nactions+=/outbreak,if=dot.virulent_plague.refreshable&!talent.unholy_blight&!raid_event.adds.exists\nactions+=/outbreak,cycle_targets=1,if=dot.virulent_plague.refreshable&active_enemies>=2&(!talent.unholy_blight||cooldown.unholy_blight.remains&buff.unholy_blight_buff.down)\n# If there are enemies missing VP, apply it (but no more than once per 6 seconds).\nactions+=/outbreak,line_cd=6,if=active_dot.virulent_plague<active_enemies&active_enemies>=2&(!talent.unholy_blight||cooldown.unholy_blight.remains&buff.unholy_blight_buff.down)\nactions+=/outbreak,if=runeforge.superstrain&(dot.frost_fever.refreshable||dot.blood_plague.refreshable)\n# Refreshes Deaths Due's buff just before deaths due ends\nactions+=/wound_spender,if=covenant.night_fae&death_and_decay.active_remains<(gcd*1.5)&death_and_decay.ticking\nactions+=/wait,sec=cooldown.soul_reaper.remains,if=talent.soul_reaper&target.time_to_pct_35<5&target.time_to_die>5&cooldown.soul_reaper.remains<(gcd*0.75)&active_enemies=1\n# Wait for Death's Due/Defile if Night Fae to get strength buff back asap\nactions+=/wait,sec=cooldown.deaths_due.remains,if=covenant.night_fae&cooldown.deaths_due.remains<gcd&active_enemies=1\nactions+=/wait,sec=cooldown.defile.remains,if=covenant.night_fae&cooldown.defile.remains<gcd&active_enemies=1\n# Action Lists and Openers (Openers/Sequences unsupported in addon.)\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=covenants\nactions+=/call_action_list,name=racials\n# actions+=/sequence,if=active_enemies=1&!death_knight.disable_aotd,name=opener:army_of_the_dead:festering_strike:festering_strike:unholy_blight:potion:dark_transformation:apocalypse\nactions+=/call_action_list,name=cooldowns\nactions+=/run_action_list,name=aoe_setup,if=active_enemies>=2&(cooldown.death_and_decay.remains<10&!talent.defile||cooldown.defile.remains<10&talent.defile)&!death_and_decay.ticking\nactions+=/run_action_list,name=aoe_burst,strict=1,if=active_enemies>=2&death_and_decay.ticking\nactions+=/run_action_list,name=generic_aoe,if=active_enemies>=2&(!death_and_decay.ticking&(cooldown.death_and_decay.remains>10&!talent.defile||cooldown.defile.remains>10&talent.defile))\nactions+=/call_action_list,name=generic,strict=1,if=active_enemies=1\n\n## AoE Burst\nactions.aoe_burst=death_coil,if=(buff.sudden_doom.react||!variable.pooling_runic_power)&(buff.dark_transformation.up&runeforge.deadliest_coil&active_enemies<=3||active_enemies=2)\nactions.aoe_burst+=/epidemic,if=runic_power.deficit<(10+death_knight.fwounded_targets*3)&death_knight.fwounded_targets<6&!variable.pooling_runic_power||buff.swarming_mist.up\nactions.aoe_burst+=/epidemic,if=runic_power.deficit<25&death_knight.fwounded_targets>5&!variable.pooling_runic_power\nactions.aoe_burst+=/epidemic,if=!death_knight.fwounded_targets&!variable.pooling_runic_power||fight_remains<5||raid_event.adds.exists&raid_event.adds.remains<5\nactions.aoe_burst+=/wound_spender\nactions.aoe_burst+=/epidemic,if=!variable.pooling_runic_power\n\n## AoE Setup\nactions.aoe_setup=any_dnd,if=death_knight.fwounded_targets>=cycle_enemies||raid_event.adds.exists&raid_event.adds.remains<=11\nactions.aoe_setup+=/any_dnd,if=death_knight.fwounded_targets>=5\nactions.aoe_setup+=/death_coil,if=!variable.pooling_runic_power&(buff.dark_transformation.up&runeforge.deadliest_coil&active_enemies<=3||active_enemies=2)\nactions.aoe_setup+=/epidemic,if=!variable.pooling_runic_power\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<=3&cooldown.apocalypse.remains<3\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<1\nactions.aoe_setup+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<=3&rune.time_to_4<cooldown.any_dnd.remains\n# When target swaps are disabled, this will let you spend runes/wounds instead of waiting for DnD/Defile/Death's Due.\nactions.aoe_setup+=/wound_spender,if=(!settings.cycle||death_knight.fwounded_targets>=cycle_enemies)&debuff.festering_wound.stack>3&rune.time_to_3<cooldown.any_dnd.remains\n\n## Potion\nactions.cooldowns=potion,if=variable.major_cooldowns_active||boss&fight_remains<26\n## Cooldowns\nactions.cooldowns+=/army_of_the_dead,if=cooldown.unholy_blight.remains<5&cooldown.dark_transformation.remains_expected<5&talent.unholy_blight||!talent.unholy_blight||boss&fight_remains<35\nactions.cooldowns+=/soul_reaper,cycle_targets=1,if=target.time_to_pct_35<5&target.time_to_die>5&active_enemies<=3\n# Holds Blight for up to 5 seconds to sync with Apocalypse, Otherwise, use with Dark Transformation.\nactions.cooldowns+=/unholy_blight,if=variable.st_planning&(cooldown.apocalypse.remains_expected<5||cooldown.apocalypse.remains_expected>10)&(cooldown.dark_transformation.remains<gcd||buff.dark_transformation.up)\nactions.cooldowns+=/unholy_blight,if=active_enemies>=2||boss&fight_remains<21\nactions.cooldowns+=/dark_transformation,if=variable.st_planning&(dot.unholy_blight_dot.remains||!talent.unholy_blight)\nactions.cooldowns+=/dark_transformation,if=active_enemies>=2||boss&fight_remains<21\nactions.cooldowns+=/apocalypse,if=active_enemies=1&debuff.festering_wound.stack>3\nactions.cooldowns+=/apocalypse,cycle_targets=1,if=active_enemies>=2&debuff.festering_wound.stack>3&!death_and_decay.ticking\nactions.cooldowns+=/summon_gargoyle,if=runic_power.deficit<14&(cooldown.unholy_blight.remains<10||dot.unholy_blight_dot.remains)\nactions.cooldowns+=/unholy_assault,if=variable.st_planning&debuff.festering_wound.stack<2&(pet.apoc_ghoul.active||buff.dark_transformation.up&!pet.army_ghoul.active)\nactions.cooldowns+=/unholy_assault,cycle_targets=1,if=active_enemies>=2&debuff.festering_wound.stack<2\nactions.cooldowns+=/raise_dead,if=!pet.ghoul.active\n## Disabled, just not really normal behavior that's worth pursuing in-game.\n## actions.cooldowns+=/sacrificial_pact,if=active_enemies>=2&!buff.dark_transformation.up&!cooldown.dark_transformation.ready||boss&fight_remains<gcd\n\n## Covenant Abilities\nactions.covenants=swarming_mist,if=variable.st_planning&runic_power.deficit>16&(cooldown.apocalypse.remains||!talent.army_of_the_damned&cooldown.dark_transformation.remains)||boss&fight_remains<11\n# Set to use after apoc is on CD as to prevent overcapping RP while setting up CD's\nactions.covenants+=/swarming_mist,if=cooldown.apocalypse.remains&(active_enemies>=2&active_enemies<=5&runic_power.deficit>10+(active_enemies*6)||active_enemies>5&runic_power.deficit>40)\nactions.covenants+=/abomination_limb,if=variable.st_planning&!soulbind.lead_by_example&(cooldown.apocalypse.remains||!talent.army_of_the_damned&cooldown.dark_transformation.remains)&rune.time_to_4>(3+buff.runic_corruption.remains)||boss&fight_remains<21\nactions.covenants+=/abomination_limb,if=variable.st_planning&soulbind.lead_by_example&(dot.unholy_blight_dot.remains>11||!talent.unholy_blight&cooldown.dark_transformation.remains)\nactions.covenants+=/abomination_limb,if=active_enemies>=2&rune.time_to_4>(3+buff.runic_corruption.remains)\nactions.covenants+=/shackle_the_unworthy,if=variable.st_planning&(cooldown.apocalypse.remains||!talent.army_of_the_damned&cooldown.dark_transformation.remains)||boss&fight_remains<15\nactions.covenants+=/shackle_the_unworthy,if=active_enemies>=2&(death_and_decay.ticking||raid_event.adds.remains<=14)\n\n## Single Target\nactions.generic=death_coil,if=buff.sudden_doom.react&!variable.pooling_runic_power||pet.gargoyle.active\nactions.generic+=/death_coil,if=covenant.night_fae&cooldown.deaths_due.remains<3&runic_power.deficit<10\nactions.generic+=/any_dnd,if=(talent.defile.enabled||covenant.night_fae||runeforge.phearomones)&(!variable.pooling_runes||fight_remains<5)\nactions.generic+=/death_coil,if=covenant.night_fae&runic_power.deficit<20&!variable.pooling_runic_power\nactions.generic+=/festering_strike,if=covenant.night_fae&cooldown.deaths_due.remains<10&debuff.festering_wound.stack<4&!variable.pooling_runes&(!death_and_decay.ticking||buff.deaths_due.stack=4)\nactions.generic+=/death_coil,if=runic_power.deficit<13||fight_remains<5&!debuff.festering_wound.up\nactions.generic+=/wound_spender,if=debuff.festering_wound.stack>3&!variable.pooling_runes\nactions.generic+=/wound_spender,if=debuff.festering_wound.up&cooldown.apocalypse.remains_expected>5&!variable.pooling_runes\nactions.generic+=/death_coil,if=runic_power.deficit<20&!variable.pooling_runic_power\nactions.generic+=/festering_strike,if=debuff.festering_wound.stack<1&!variable.pooling_runes\nactions.generic+=/festering_strike,if=debuff.festering_wound.stack<4&cooldown.apocalypse.remains_expected<5&!variable.pooling_runes\nactions.generic+=/death_coil,if=!variable.pooling_runic_power\n\n## Generic AoE Priority\nactions.generic_aoe=wait,sec=cooldown.soul_reaper.remains,if=talent.soul_reaper&target.time_to_pct_35<5&fight_remains>5&cooldown.soul_reaper.remains<(gcd*0.75)&active_enemies<=3\nactions.generic_aoe+=/death_coil,if=(!variable.pooling_runic_power||buff.sudden_doom.react)&(buff.dark_transformation.up&runeforge.deadliest_coil&active_enemies<=3||active_enemies=2)\nactions.generic_aoe+=/epidemic,if=buff.sudden_doom.react||!variable.pooling_runic_power\n# If target cycling is disabled, switch back to the single-target generic list instead.\nactions.generic_aoe+=/run_action_list,name=generic,strict=1,if=cycle_enemies=1\nactions.generic_aoe+=/wound_spender,cycle_targets=1,if=(cooldown.apocalypse.remains>5&debuff.festering_wound.up||debuff.festering_wound.stack>3)&(fight_remains<cooldown.death_and_decay.remains+10||fight_remains>cooldown.apocalypse.remains)\nactions.generic_aoe+=/festering_strike,cycle_targets=1,if=debuff.festering_wound.stack<=3&cooldown.apocalypse.remains<3||debuff.festering_wound.stack<1\nactions.generic_aoe+=/festering_strike,cycle_targets=1,if=cooldown.apocalypse.remains>5&debuff.festering_wound.stack<1\n# This is effectively filler which sims DPS neutral, but should prevent a scenario where the addon has nothing to recommend.\nactions.generic_aoe+=/festering_strike,if=active_dot.festering_wound>=cycle_enemies&debuff.festering_wound.stack<4\n\n# Racials\nactions.racials=arcane_torrent,if=runic_power.deficit>65&(pet.gargoyle.active||!talent.summon_gargoyle.enabled)&rune.deficit>=5\nactions.racials+=/blood_fury,if=variable.major_cooldowns_active||target.time_to_die<=buff.blood_fury.duration\nactions.racials+=/berserking,if=variable.major_cooldowns_active||target.time_to_die<=buff.berserking.duration\nactions.racials+=/lights_judgment,if=buff.unholy_strength.up\n# Ancestral Call can trigger 4 potential buffs, each lasting 15 seconds. Utilized hard coded time as a trigger to keep it readable.\nactions.racials+=/ancestral_call,if=variable.major_cooldowns_active||target.time_to_die<=15\nactions.racials+=/arcane_pulse,if=active_enemies>=2||(rune.deficit>=5&runic_power.deficit>=60)\nactions.racials+=/fireblood,if=variable.major_cooldowns_active||target.time_to_die<=buff.fireblood.duration\nactions.racials+=/bag_of_tricks,if=buff.unholy_strength.up&active_enemies=1\n\n## Trinkets\nactions.trinkets=use_item,name=inscrutable_quantum_device,if=(cooldown.unholy_blight.remains||cooldown.dark_transformation.remains)&(pet.army_ghoul.active||pet.apoc_ghoul.active&!talent.army_of_the_damned||target.time_to_pct_20<5)||boss&fight_remains<21\nactions.trinkets+=/use_item,name=macabre_sheet_music,if=cooldown.apocalypse.remains<5&(!equipped.inscrutable_quantum_device||cooldown.inscrutable_quantum_device.remains)||boss&fight_remains<21\nactions.trinkets+=/use_item,name=dreadfire_vessel,if=cooldown.apocalypse.remains&(!equipped.inscrutable_quantum_device||cooldown.inscrutable_quantum_device.remains)||boss&fight_remains<3\nactions.trinkets+=/use_item,name=darkmoon_deck_voracity,if=cooldown.apocalypse.remains&(!equipped.inscrutable_quantum_device||cooldown.inscrutable_quantum_device.remains)||boss&fight_remains<21\nactions.trinkets+=/use_items,if=(cooldown.apocalypse.remains||buff.dark_transformation.up)&(!equipped.inscrutable_quantum_device||cooldown.inscrutable_quantum_device.remains)\n## TODO:\n## The trinket with the highest estimated value, will be used first and paired with Apocalypse (if buff is 15 seconds or less) or Blight/DT (if greater than 15 seconds)\n## actions.trinkets+=/use_item,slot=trinket1,if=!variable.specified_trinket&((trinket.1.proc.any_dps.duration<=15&cooldown.apocalypse.remains>20||trinket.1.proc.any_dps.duration>15&(cooldown.unholy_blight.remains>20||cooldown.dark_transformation.remains>20))&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1))||trinket.1.proc.any_dps.duration>=fight_remains\n## actions.trinkets+=/use_item,slot=trinket2,if=!variable.specified_trinket&((trinket.2.proc.any_dps.duration<=15&cooldown.apocalypse.remains>20||trinket.2.proc.any_dps.duration>15&(cooldown.unholy_blight.remains>20||cooldown.dark_transformation.remains>20))&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2))||trinket.2.proc.any_dps.duration>=fight_remains\n## If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.\n## actions.trinkets+=/use_item,slot=trinket1,if=!trinket.1.has_use_buff&(trinket.2.cooldown.remains||!trinket.2.has_use_buff)\n## actions.trinkets+=/use_item,slot=trinket2,if=!trinket.2.has_use_buff&(trinket.1.cooldown.remains||!trinket.1.has_use_buff)",
				},
				["Blood"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20201206,
					["spec"] = 250,
					["desc"] = "# Blood Death Knight\n# December 6, 2020",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "tanking || incoming_damage_5s > 0",
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dancing_rune_weapon.ready & ( ! cooldown.blooddrinker.ready || ! talent.blooddrinker.enabled )",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 || rune < 1 & runic_power.deficit > 60",
								["action"] = "arcane_pulse",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "lights_judgment",
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up",
								["action"] = "potion",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up & ( ! covenant.night_fae || buff.deaths_due.remains > 7 )",
								["action"] = "blooddrinker",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "charges >= 2 & ( covenant.kyrian || buff.dancing_rune_weapon.up )",
								["action"] = "blood_boil",
							}, -- [14]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains < 3",
								["action"] = "death_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "covenants",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [18]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [2]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 || ( ! group & health.pct < 66 )",
								["action"] = "vampiric_blood",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_3s >= health.current",
								["action"] = "death_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "save_blood_shield & incoming_damage_5s > 0 & buff.blood_shield.up & buff.blood_shield.remains < 1.5 * gcd",
								["action"] = "death_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.remains < 3 * gcd.execute || ( buff.bone_shield.remains <= rune.time_to_3 || buff.bone_shield.remains <= ( gcd + cooldown.blooddrinker.ready * talent.blooddrinker.enabled * 2 ) || buff.bone_shield.stack < 3 ) & runic_power.deficit >= 20",
								["action"] = "marrowrend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.rune_tap.down & incoming_damage_3s > health.max * 0.1",
								["action"] = "rune_tap",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 - ( 20 * buff.blood_shield.up )",
								["action"] = "icebound_fortitude",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & pet.ghoul.remains < 5",
								["action"] = "sacrificial_pact",
							}, -- [7]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 10 & ( ! talent.bonestorm.enabled || ! cooldown.bonestorm.ready || buff.dancing_rune_weapon.up )",
								["action"] = "death_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "pet.ghoul.remains < gcd * 2",
								["action"] = "sacrificial_pact",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rune <= 2 & rune.time_to_4 > gcd & charges_fractional >= 1.8",
								["action"] = "blood_tap",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blooddrinker.enabled || ! cooldown.blooddrinker.ready",
								["action"] = "dancing_rune_weapon",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.stack >= 7 & rune >= 2",
								["action"] = "tombstone",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! covenant.necrolord || buff.abomination_limb.up ) & ( buff.bone_shield.remains <= rune.time_to_3 || buff.bone_shield.remains <= ( gcd + cooldown.blooddrinker.ready * talent.blooddrinker.enabled * 2 ) || buff.bone_shield.stack < 3 ) & runic_power.deficit >= 20",
								["action"] = "marrowrend",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.stack < 6 & runic_power.deficit >= 15 & ( ! covenant.night_fae || buff.deaths_due.remains > 5 )",
								["action"] = "marrowrend",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blooddrinker.enabled & death_and_decay.remains < 5 & runic_power.deficit <= ( 15 + buff.dancing_rune_weapon.up * 5 + spell_targets.heart_strike * talent.heartbreaker.enabled * 2 )",
								["action"] = "heart_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.8 & ( buff.hemostasis.stack <= ( 5 - spell_targets.blood_boil ) || spell_targets.blood_boil > 2 )",
								["action"] = "blood_boil",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.mark_of_blood.down & fight_remains > 7.5",
								["action"] = "mark_of_blood",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.crimson_scourge.up & talent.relish_in_blood.enabled ) & runic_power.deficit > 10",
								["action"] = "death_and_decay",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runic_power >= 100 & ! buff.dancing_rune_weapon.up",
								["action"] = "bonestorm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= ( 15 + buff.dancing_rune_weapon.up * 5 + spell_targets.heart_strike * talent.heartbreaker.enabled * 2 ) || fight_remains < 10",
								["action"] = "death_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.death_and_decay >= 3",
								["action"] = "death_and_decay",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up || rune.time_to_4 < gcd",
								["action"] = "heart_strike",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.dancing_rune_weapon.up",
								["action"] = "blood_boil",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_3 > gcd",
								["action"] = "blood_tap",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.crimson_scourge.up || talent.rapid_decomposition.enabled || spell_targets.death_and_decay >= 2",
								["action"] = "death_and_decay",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bone_shield.remains > 3 * gcd",
								["action"] = "consumption",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional >= 1.1 & buff.bone_shield.remains > 3 * gcd",
								["action"] = "blood_boil",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_3 < gcd || buff.bone_shield.stack > 7 & buff.bone_shield.remains > rune.time_to_3 + gcd",
								["action"] = "heart_strike",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [22]
						},
						["covenants"] = {
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & buff.deaths_due.remains > 6 & runic_power > 70",
								["action"] = "death_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & death_and_decay.ticking & ( ( buff.deaths_due.up || buff.dancing_rune_weapon.up ) & buff.deaths_due.remains < 6 )",
								["action"] = "heart_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.deaths_due.up || buff.deaths_due.remains < 4 || buff.crimson_scourge.up",
								["action"] = "deaths_due",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! covenant.night_fae || buff.deaths_due.remains > 6 ) & ! buff.dancing_rune_weapon.up & ( pet.ghoul.remains < 10 || target.time_to_die < gcd )",
								["action"] = "sacrificial_pact",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "covenant.venthyr & runic_power > 70 & cooldown.swarming_mist.remains < 3",
								["action"] = "death_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up",
								["action"] = "swarming_mist",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "covenant.necrolord & buff.bone_shield.stack <= 0",
								["action"] = "marrowrend",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dancing_rune_weapon.up",
								["action"] = "abomination_limb",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dancing_rune_weapon.remains < 3 || ! buff.dancing_rune_weapon.up",
								["action"] = "shackle_the_unworthy",
							}, -- [9]
						},
					},
					["version"] = 20201206,
					["warnings"] = "Imported 5 action lists.\n",
					["author"] = "SimC + Hekili",
					["profile"] = "# Blood Death Knight\n# December 6, 2020\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=use_item,name=azsharas_font_of_power\nactions.precombat+=/use_item,effect_name=cyclotronic_blast\n\n# Executed every time the actor is available.\nactions=mind_freeze\nactions+=/call_action_list,name=mitigation,if=tanking||incoming_damage_5s>0\nactions+=/blood_fury,if=cooldown.dancing_rune_weapon.ready&(!cooldown.blooddrinker.ready||!talent.blooddrinker.enabled)\nactions+=/berserking\nactions+=/arcane_pulse,if=active_enemies>=2||rune<1&runic_power.deficit>60\nactions+=/lights_judgment,if=buff.unholy_strength.up\nactions+=/ancestral_call\nactions+=/fireblood\nactions+=/bag_of_tricks\n# Since the potion cooldown has changed, we'll sync with DRW\nactions+=/potion,if=buff.dancing_rune_weapon.up\nactions+=/use_items\nactions+=/raise_dead\nactions+=/blooddrinker,if=!buff.dancing_rune_weapon.up&(!covenant.night_fae||buff.deaths_due.remains>7)\nactions+=/blood_boil,if=charges>=2&(covenant.kyrian||buff.dancing_rune_weapon.up)\nactions+=/raise_dead\nactions+=/death_strike,if=fight_remains<3\nactions+=/call_action_list,name=covenants\nactions+=/call_action_list,name=standard\n\n# Burn RP if we have time between DD refreshes\nactions.covenants=death_strike,if=covenant.night_fae&buff.deaths_due.remains>6&runic_power>70\n# Make sure we never lose that buff\nactions.covenants+=/heart_strike,if=covenant.night_fae&death_and_decay.ticking&((buff.deaths_due.up||buff.dancing_rune_weapon.up)&buff.deaths_due.remains<6)\n# And that we always cast DD as high prio when we actually need it\nactions.covenants+=/deaths_due,if=!buff.deaths_due.up||buff.deaths_due.remains<4||buff.crimson_scourge.up\n# Attempt to sacrifice the ghoul if we predictably will not do much in the near future\nactions.covenants+=/sacrificial_pact,if=(!covenant.night_fae||buff.deaths_due.remains>6)&!buff.dancing_rune_weapon.up&(pet.ghoul.remains<10||target.time_to_die<gcd)\n# Burn RP off just before swarming comes back off CD\nactions.covenants+=/death_strike,if=covenant.venthyr&runic_power>70&cooldown.swarming_mist.remains<3\n# And swarming as long as we're not < 3s off DRW\nactions.covenants+=/swarming_mist,if=!buff.dancing_rune_weapon.up\n# Pre-AL marrow on pull in order to guarantee ossuary during the first DRW\nactions.covenants+=/marrowrend,if=covenant.necrolord&buff.bone_shield.stack<=0\n# And we cast AL\nactions.covenants+=/abomination_limb,if=!buff.dancing_rune_weapon.up\n# We just don't cast this during DRW\nactions.covenants+=/shackle_the_unworthy,if=cooldown.dancing_rune_weapon.remains<3||!buff.dancing_rune_weapon.up\n\nactions.mitigation=vampiric_blood,if=health.pct<50||(!group&health.pct<66)\n# Incoming damage requirement is 25% of max health solo, 50% of max health in a group.\nactions.mitigation+=/death_strike,if=incoming_damage_3s>=health.current\n# Don't let an existing Blood Shield drop.\nactions.mitigation+=/death_strike,if=save_blood_shield&incoming_damage_5s>0&buff.blood_shield.up&buff.blood_shield.remains<1.5*gcd\nactions.mitigation+=/marrowrend,if=buff.bone_shield.remains<3*gcd.execute||(buff.bone_shield.remains<=rune.time_to_3||buff.bone_shield.remains<=(gcd+cooldown.blooddrinker.ready*talent.blooddrinker.enabled*2)||buff.bone_shield.stack<3)&runic_power.deficit>=20\nactions.mitigation+=/rune_tap,if=tanking&buff.rune_tap.down&incoming_damage_3s>health.max*0.1\nactions.mitigation+=/icebound_fortitude,if=health.pct<50-(20*buff.blood_shield.up)\nactions.mitigation+=/sacrificial_pact,if=health.pct<75&pet.ghoul.remains<5\n\nactions.standard=death_strike,if=runic_power.deficit<=10&(!talent.bonestorm.enabled||!cooldown.bonestorm.ready||buff.dancing_rune_weapon.up)\nactions.standard+=/sacrificial_pact,if=pet.ghoul.remains<gcd*2\n\n# actions.standard+=/blooddrinker,if=!buff.dancing_rune_weapon.up\n# Duplicated here because the mitigation list relies on tanking/taking damage.\n# actions.standard+=/marrowrend,if=buff.bone_shield.remains<3*gcd.execute||(buff.bone_shield.remains<=rune.time_to_3||buff.bone_shield.remains<=(gcd+cooldown.blooddrinker.ready*talent.blooddrinker.enabled*2)||buff.bone_shield.stack<3)&runic_power.deficit>=20\n\n# Use blood tap to prevent overcapping charges if we have space for a rune and a GCD to spare to burn it\nactions.standard=blood_tap,if=rune<=2&rune.time_to_4>gcd&charges_fractional>=1.8\nactions.standard+=/dancing_rune_weapon,if=!talent.blooddrinker.enabled||!cooldown.blooddrinker.ready\nactions.standard+=/tombstone,if=buff.bone_shield.stack>=7&rune>=2\nactions.standard+=/marrowrend,if=(!covenant.necrolord||buff.abomination_limb.up)&(buff.bone_shield.remains<=rune.time_to_3||buff.bone_shield.remains<=(gcd+cooldown.blooddrinker.ready*talent.blooddrinker.enabled*2)||buff.bone_shield.stack<3)&runic_power.deficit>=20\n# actions.standard+=/death_strike,if=runic_power.deficit<=70\nactions.standard+=/marrowrend,if=buff.bone_shield.stack<6&runic_power.deficit>=15&(!covenant.night_fae||buff.deaths_due.remains>5)\nactions.standard+=/heart_strike,if=!talent.blooddrinker.enabled&death_and_decay.remains<5&runic_power.deficit<=(15+buff.dancing_rune_weapon.up*5+spell_targets.heart_strike*talent.heartbreaker.enabled*2)\nactions.standard+=/blood_boil,if=charges_fractional>=1.8&(buff.hemostasis.stack<=(5-spell_targets.blood_boil)||spell_targets.blood_boil>2)\n# Mark of Blood does not pandemic-extend.\nactions.standard+=/mark_of_blood,if=debuff.mark_of_blood.down&fight_remains>7.5\nactions.standard+=/death_and_decay,if=(buff.crimson_scourge.up&talent.relish_in_blood.enabled)&runic_power.deficit>10\nactions.standard+=/bonestorm,if=runic_power>=100&!buff.dancing_rune_weapon.up\nactions.standard+=/death_strike,if=runic_power.deficit<=(15+buff.dancing_rune_weapon.up*5+spell_targets.heart_strike*talent.heartbreaker.enabled*2)||fight_remains<10\nactions.standard+=/death_and_decay,if=spell_targets.death_and_decay>=3\nactions.standard+=/heart_strike,if=buff.dancing_rune_weapon.up||rune.time_to_4<gcd\nactions.standard+=/blood_boil,if=buff.dancing_rune_weapon.up\nactions.standard+=/blood_tap,if=rune.time_to_3>gcd\nactions.standard+=/death_and_decay,if=buff.crimson_scourge.up||talent.rapid_decomposition.enabled||spell_targets.death_and_decay>=2\nactions.standard+=/consumption,if=buff.bone_shield.remains>3*gcd\nactions.standard+=/blood_boil,if=charges_fractional>=1.1&buff.bone_shield.remains>3*gcd\nactions.standard+=/heart_strike,if=rune.time_to_3<gcd||buff.bone_shield.stack>7&buff.bone_shield.remains>rune.time_to_3+gcd\nactions.standard+=/arcane_torrent,if=runic_power.deficit>20",
				},
			},
			["enabled"] = false,
			["toggles"] = {
				["interrupts"] = {
					["value"] = true,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 148.1858294103572,
				["hide"] = true,
			},
			["notifications"] = {
				["x"] = -605.8327026367188,
				["y"] = -229.1653594970703,
			},
			["specs"] = {
				[262] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["stack_buffer"] = 1.1,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = true,
					["damage"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Elemental",
					["throttleTime"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_intellect",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[263] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["pad_windstrike"] = true,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Enhancement",
					["throttleTime"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_agility",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[250] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["save_blood_shield"] = true,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Blood",
					["damage"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_phantom_fire",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[251] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["bos_rp"] = 50,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Frost DK",
					["damage"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_strength",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[252] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = true,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = true,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["throttleTime"] = false,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Unholy",
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_strength",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["cycleDebuff"] = "festering_wound",
					["damage"] = true,
					["damageRange"] = 0,
				},
			},
		},
		["Leapinleper - Area 52"] = {
			["runOnce"] = {
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[73] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["free_revenge"] = true,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Protection Warrior",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[71] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Arms",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[72] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["check_ww_range"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Fury",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -669.9998779296875,
					["y"] = -327.9996643066406,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["x"] = -593.9996948242188,
					["y"] = -226.0001220703125,
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = -593.9995727539062,
					["y"] = -170.9996948242188,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -550.9998779296875,
					["y"] = -328.0003051757813,
				},
			},
			["packs"] = {
				["Arms"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200614,
					["author"] = "SimulationCraft",
					["desc"] = "# Arms Warrior\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Added Pummel.\n# - Added Victory Rush/Impending Victory.\n# - Added Battle Shout to precombat APL.\n# - Executioner's Precision is deleted.\n# - Added Use Items.",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "rage < 56 & buff.deadly_calm.down & buff.memory_of_lucid_dreams.down",
								["action"] = "skullsplitter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.deadly_calm.up & ( cooldown.colossus_smash.remains < 2 || ( talent.warbreaker.enabled & cooldown.warbreaker.remains < 2 ) )",
								["action"] = "ravager",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! essence.condensed_lifeforce.enabled & ! talent.massacre.enabled & ( target.time_to_pct_20 > 10 || fight_remains > 50 ) || essence.condensed_lifeforce.enabled & ! talent.massacre.enabled & ( target.time_to_pct_20 > 10 || fight_remains > 80 ) || talent.massacre.enabled & ( target.time_to_pct_35 > 10 || fight_remains > 50 )",
								["action"] = "colossus_smash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! essence.condensed_lifeforce.enabled & ! talent.massacre.enabled & ( target.time_to_pct_20 > 10 || fight_remains > 50 ) || essence.condensed_lifeforce.enabled & ! talent.massacre.enabled & ( target.time_to_pct_20 > 10 || fight_remains > 80 ) || talent.massacre.enabled & ( target.time_to_pct_35 > 10 || fight_remains > 50 )",
								["action"] = "warbreaker",
							}, -- [4]
							{
								["action"] = "deadly_calm",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "execute",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.mortal_strike.remains & debuff.colossus_smash.down & ( ! talent.deadly_calm.enabled || buff.deadly_calm.down ) & ( ( debuff.colossus_smash.up & ! azerite.test_of_might.enabled ) || buff.test_of_might.up ) & buff.memory_of_lucid_dreams.down & rage < 40",
								["action"] = "bladestorm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 2",
								["action"] = "cleave",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.rend.enabled & dot.deep_wounds.remains & rage < 70 & buff.memory_of_lucid_dreams.down & debuff.colossus_smash.down ) || ( talent.rend.enabled & dot.deep_wounds.remains & dot.rend.remains > gcd & rage < 70 & buff.memory_of_lucid_dreams.down & debuff.colossus_smash.down )",
								["action"] = "overpower",
							}, -- [9]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "remains <= duration * 0.3",
								["action"] = "rend",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( buff.memory_of_lucid_dreams.up ) || ( debuff.colossus_smash.up ) || ( buff.deadly_calm.up ) ) & talent.fervor_of_battle.enabled ) || ( ( buff.memory_of_lucid_dreams.up || rage > 89 ) & debuff.colossus_smash.up & buff.test_of_might.down & ! talent.fervor_of_battle.enabled )",
								["action"] = "whirlwind",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fervor_of_battle.enabled & ( buff.memory_of_lucid_dreams.up || debuff.colossus_smash.up )",
								["action"] = "slam",
							}, -- [13]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.fervor_of_battle.enabled & ( buff.test_of_might.up || debuff.colossus_smash.down & buff.test_of_might.down & rage > 60 )",
								["action"] = "whirlwind",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fervor_of_battle.enabled",
								["action"] = "slam",
							}, -- [16]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [18]
						},
						["default"] = {
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( target.health.pct < 21 || talent.massacre.enabled & target.health.pct < 36 ) & ( buff.memory_of_lucid_dreams.up || buff.guardian_of_azeroth.up ) || ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & ( target.health.pct < 21 || talent.massacre.enabled & target.health.pct < 36 ) & debuff.colossus_smash.up || fight_remains < 25",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up & buff.test_of_might.up || buff.guardian_of_azeroth.up & debuff.colossus_smash.up || buff.seething_rage.up || ( ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & ! essence.blood_of_the_enemy.major & debuff.colossus_smash.up )",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up & buff.test_of_might.up || buff.guardian_of_azeroth.up & debuff.colossus_smash.up || buff.seething_rage.up || ( ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & ! essence.blood_of_the_enemy.major & debuff.colossus_smash.up )",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.down & rage < 50 & ( cooldown.mortal_strike.remains > gcd || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) )",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down",
								["action"] = "lights_judgment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up & buff.test_of_might.up || buff.guardian_of_azeroth.up & debuff.colossus_smash.up || buff.seething_rage.up || ( ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & ! essence.blood_of_the_enemy.major & debuff.colossus_smash.up )",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up & buff.test_of_might.up || buff.guardian_of_azeroth.up & debuff.colossus_smash.up || buff.seething_rage.up || ( ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & ! essence.blood_of_the_enemy.major & debuff.colossus_smash.up )",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & buff.memory_of_lucid_dreams.down & cooldown.mortal_strike.remains",
								["action"] = "bag_of_tricks",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.razor_coral_debuff.up || ( ( target.health.pct < 20.1 || talent.massacre.enabled & target.health.pct < 35.1 ) & ( buff.memory_of_lucid_dreams.up & ( cooldown.memory_of_lucid_dreams.remains < 106 || cooldown.memory_of_lucid_dreams.remains < 117 & fight_remains < 20 & ! talent.massacre.enabled ) || buff.guardian_of_azeroth.up & debuff.colossus_smash.up ) ) || essence.condensed_lifeforce.major & target.health.pct < 20 || ( target.health.pct < 30.1 & debuff.conductive_ink_debuff.up & ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major ) || ( ! debuff.conductive_ink_debuff.up & ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major & debuff.colossus_smash.up )",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 70 & ( cooldown.colossus_smash.remains < 12 || ( talent.warbreaker.enabled & cooldown.warbreaker.remains < 12 ) ) || ! debuff.colossus_smash.up & ! buff.test_of_might.up & ! buff.memory_of_lucid_dreams.up & time_to_die > 150",
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.remains < 8 || ( talent.warbreaker.enabled & cooldown.warbreaker.remains < 8 )",
								["action"] = "avatar",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.remains < 8 || ( talent.warbreaker.enabled & cooldown.warbreaker.remains < 8 )",
								["action"] = "use_items",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & ( cooldown.bladestorm.remains > 10 || cooldown.colossus_smash.remains > 8 || azerite.test_of_might.enabled )",
								["action"] = "sweeping_strikes",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ( debuff.colossus_smash.up & ! azerite.test_of_might.enabled ) ) & ( fight_remains > 90 || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) )",
								["action"] = "blood_of_the_enemy",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up",
								["action"] = "purifying_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up",
								["action"] = "ripple_in_space",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up",
								["action"] = "worldvein_resonance",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up",
								["action"] = "focused_azerite_beam",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up",
								["action"] = "reaping_flames",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up & ! buff.test_of_might.up & dot.concentrated_flame_burn.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 5 & ( fight_remains > 210 || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) || fight_remains < 31 )",
								["action"] = "guardian_of_azeroth",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.warbreaker.enabled & cooldown.warbreaker.remains < 5 & ( fight_remains > 210 || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) || fight_remains < 31 )",
								["action"] = "guardian_of_azeroth",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 1 & ( fight_remains > 150 || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.warbreaker.enabled & cooldown.warbreaker.remains < 1 & ( fight_remains > 150 || ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "spell_targets.whirlwind > 4",
								["list_name"] = "five_target",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "( talent.massacre.enabled & target.health.pct < 35 ) || target.health.pct < 20",
								["list_name"] = "execute",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [30]
						},
						["precombat"] = {
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.fervor_of_battle.enabled || ! talent.fervor_of_battle.enabled & time_to_die > 150",
								["action"] = "memory_of_lucid_dreams",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.fervor_of_battle.enabled || talent.massacre.enabled & time_to_die > 210 || talent.rend.enabled & ( time_to_die > 210 || time_to_die < 145 )",
								["action"] = "guardian_of_azeroth",
							}, -- [4]
							{
								["enabled"] = true,
								["potion"] = "potion_of_unbridled_fury",
								["action"] = "potion",
								["criteria"] = "essence.condensed_lifeforce.major",
							}, -- [5]
							{
								["enabled"] = true,
								["potion"] = "potion_of_focused_resolve",
								["action"] = "potion",
								["criteria"] = "essence.memory_of_lucid_dreams.major",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
						["execute"] = {
							{
								["enabled"] = true,
								["criteria"] = "rage < 52 & buff.deadly_calm.down & buff.memory_of_lucid_dreams.down",
								["action"] = "skullsplitter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.deadly_calm.up & ( cooldown.colossus_smash.remains < 2 || ( talent.warbreaker.enabled & cooldown.warbreaker.remains < 2 ) )",
								["action"] = "ravager",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! essence.memory_of_lucid_dreams.major || ( buff.memory_of_lucid_dreams.up || cooldown.memory_of_lucid_dreams.remains > 10 )",
								["action"] = "colossus_smash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! essence.memory_of_lucid_dreams.major || ( buff.memory_of_lucid_dreams.up || cooldown.memory_of_lucid_dreams.remains > 10 )",
								["action"] = "warbreaker",
							}, -- [4]
							{
								["action"] = "deadly_calm",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.memory_of_lucid_dreams.up & buff.test_of_might.up & rage < 30 & ! buff.deadly_calm.up",
								["action"] = "bladestorm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 2",
								["action"] = "cleave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.crushing_assault.up & buff.memory_of_lucid_dreams.down",
								["action"] = "slam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "remains <= duration * 0.3 & target.time_to_die > 7",
								["action"] = "rend",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.overpower.stack = 2 & talent.dreadnaught.enabled",
								["action"] = "mortal_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up || buff.deadly_calm.up || debuff.colossus_smash.up || buff.test_of_might.up",
								["action"] = "execute",
							}, -- [11]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [13]
						},
						["five_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "rage < 60 & ( ! talent.deadly_calm.enabled || buff.deadly_calm.down )",
								["action"] = "skullsplitter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.warbreaker.enabled || cooldown.warbreaker.remains < 2 )",
								["action"] = "ravager",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down",
								["action"] = "colossus_smash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down",
								["action"] = "warbreaker",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.sweeping_strikes.down & ( ! talent.deadly_calm.enabled || buff.deadly_calm.down ) & ( ( debuff.colossus_smash.remains > 4.5 & ! azerite.test_of_might.enabled ) || buff.test_of_might.up )",
								["action"] = "bladestorm",
							}, -- [5]
							{
								["action"] = "deadly_calm",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "cleave",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.cleave.enabled & dot.deep_wounds.remains < 2 ) || ( buff.sudden_death.react || buff.stone_heart.react ) & ( buff.sweeping_strikes.up || cooldown.sweeping_strikes.remains > 8 )",
								["action"] = "execute",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.cleave.enabled & dot.deep_wounds.remains < 2 ) || buff.sweeping_strikes.up & buff.overpower.stack = 2 & talent.dreadnaught.enabled",
								["action"] = "mortal_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up || ( buff.crushing_assault.up & talent.fervor_of_battle.enabled )",
								["action"] = "whirlwind",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.deadly_calm.up || rage > 60",
								["action"] = "whirlwind",
							}, -- [11]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [15]
						},
					},
					["version"] = 20200614,
					["warnings"] = "Imported 5 action lists.\n",
					["spec"] = 71,
					["profile"] = "# Arms Warrior\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Added Pummel.\n# - Added Victory Rush/Impending Victory.\n# - Added Battle Shout to precombat APL.\n# - Executioner's Precision is deleted.\n# - Added Use Items.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/memory_of_lucid_dreams,if=talent.fervor_of_battle.enabled||!talent.fervor_of_battle.enabled&time_to_die>150\nactions.precombat+=/guardian_of_azeroth,if=talent.fervor_of_battle.enabled||talent.massacre.enabled&time_to_die>210||talent.rend.enabled&(time_to_die>210||time_to_die<145)\nactions.precombat+=/potion,name=potion_of_unbridled_fury,if=essence.condensed_lifeforce.major\nactions.precombat+=/potion,name=potion_of_focused_resolve,if=essence.memory_of_lucid_dreams.major\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=charge\nactions+=/pummel\nactions+=/potion,if=(target.health.pct<21||talent.massacre.enabled&target.health.pct<36)&(buff.memory_of_lucid_dreams.up||buff.guardian_of_azeroth.up)||!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&(target.health.pct<21||talent.massacre.enabled&target.health.pct<36)&debuff.colossus_smash.up||fight_remains<25\nactions+=/blood_fury,if=buff.memory_of_lucid_dreams.up&buff.test_of_might.up||buff.guardian_of_azeroth.up&debuff.colossus_smash.up||buff.seething_rage.up||(!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&!essence.blood_of_the_enemy.major&debuff.colossus_smash.up)\nactions+=/berserking,if=buff.memory_of_lucid_dreams.up&buff.test_of_might.up||buff.guardian_of_azeroth.up&debuff.colossus_smash.up||buff.seething_rage.up||(!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&!essence.blood_of_the_enemy.major&debuff.colossus_smash.up)\nactions+=/arcane_torrent,if=buff.memory_of_lucid_dreams.down&rage<50&(cooldown.mortal_strike.remains>gcd||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35))\nactions+=/lights_judgment,if=debuff.colossus_smash.down\nactions+=/fireblood,if=buff.memory_of_lucid_dreams.up&buff.test_of_might.up||buff.guardian_of_azeroth.up&debuff.colossus_smash.up||buff.seething_rage.up||(!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&!essence.blood_of_the_enemy.major&debuff.colossus_smash.up)\nactions+=/ancestral_call,if=buff.memory_of_lucid_dreams.up&buff.test_of_might.up||buff.guardian_of_azeroth.up&debuff.colossus_smash.up||buff.seething_rage.up||(!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&!essence.blood_of_the_enemy.major&debuff.colossus_smash.up)\nactions+=/bag_of_tricks,if=debuff.colossus_smash.down&buff.memory_of_lucid_dreams.down&cooldown.mortal_strike.remains\nactions+=/use_item,name=ashvanes_razor_coral,if=!debuff.razor_coral_debuff.up||((target.health.pct<20.1||talent.massacre.enabled&target.health.pct<35.1)&(buff.memory_of_lucid_dreams.up&(cooldown.memory_of_lucid_dreams.remains<106||cooldown.memory_of_lucid_dreams.remains<117&fight_remains<20&!talent.massacre.enabled)||buff.guardian_of_azeroth.up&debuff.colossus_smash.up))||essence.condensed_lifeforce.major&target.health.pct<20||(target.health.pct<30.1&debuff.conductive_ink_debuff.up&!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major)||(!debuff.conductive_ink_debuff.up&!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major&debuff.colossus_smash.up)\nactions+=/use_item,name=azsharas_font_of_power,if=time_to_die<70&(cooldown.colossus_smash.remains<12||(talent.warbreaker.enabled&cooldown.warbreaker.remains<12))||!debuff.colossus_smash.up&!buff.test_of_might.up&!buff.memory_of_lucid_dreams.up&time_to_die>150\nactions+=/avatar,if=cooldown.colossus_smash.remains<8||(talent.warbreaker.enabled&cooldown.warbreaker.remains<8)\nactions+=/use_items,if=cooldown.colossus_smash.remains<8||(talent.warbreaker.enabled&cooldown.warbreaker.remains<8)\nactions+=/sweeping_strikes,if=spell_targets.whirlwind>1&(cooldown.bladestorm.remains>10||cooldown.colossus_smash.remains>8||azerite.test_of_might.enabled)\nactions+=/blood_of_the_enemy,if=(buff.test_of_might.up||(debuff.colossus_smash.up&!azerite.test_of_might.enabled))&(fight_remains>90||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35))\nactions+=/purifying_blast,if=!debuff.colossus_smash.up&!buff.test_of_might.up\nactions+=/ripple_in_space,if=!debuff.colossus_smash.up&!buff.test_of_might.up\nactions+=/worldvein_resonance,if=!debuff.colossus_smash.up&!buff.test_of_might.up\nactions+=/focused_azerite_beam,if=!debuff.colossus_smash.up&!buff.test_of_might.up\nactions+=/reaping_flames,if=!debuff.colossus_smash.up&!buff.test_of_might.up\nactions+=/concentrated_flame,if=!debuff.colossus_smash.up&!buff.test_of_might.up&dot.concentrated_flame_burn.remains=0\nactions+=/the_unbound_force,if=buff.reckless_force.up\nactions+=/guardian_of_azeroth,if=!talent.warbreaker.enabled&cooldown.colossus_smash.remains<5&(fight_remains>210||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35)||fight_remains<31)\nactions+=/guardian_of_azeroth,if=talent.warbreaker.enabled&cooldown.warbreaker.remains<5&(fight_remains>210||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35)||fight_remains<31)\nactions+=/memory_of_lucid_dreams,if=!talent.warbreaker.enabled&cooldown.colossus_smash.remains<1&(fight_remains>150||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35))\nactions+=/memory_of_lucid_dreams,if=talent.warbreaker.enabled&cooldown.warbreaker.remains<1&(fight_remains>150||(target.health.pct<20||talent.massacre.enabled&target.health.pct<35))\nactions+=/run_action_list,name=five_target,if=spell_targets.whirlwind>4\nactions+=/run_action_list,name=execute,if=(talent.massacre.enabled&target.health.pct<35)||target.health.pct<20\nactions+=/run_action_list,name=single_target\n\nactions.execute=skullsplitter,if=rage<52&buff.deadly_calm.down&buff.memory_of_lucid_dreams.down\nactions.execute+=/ravager,if=!buff.deadly_calm.up&(cooldown.colossus_smash.remains<2||(talent.warbreaker.enabled&cooldown.warbreaker.remains<2))\nactions.execute+=/colossus_smash,if=!essence.memory_of_lucid_dreams.major||(buff.memory_of_lucid_dreams.up||cooldown.memory_of_lucid_dreams.remains>10)\nactions.execute+=/warbreaker,if=!essence.memory_of_lucid_dreams.major||(buff.memory_of_lucid_dreams.up||cooldown.memory_of_lucid_dreams.remains>10)\nactions.execute+=/deadly_calm\nactions.execute+=/bladestorm,if=!buff.memory_of_lucid_dreams.up&buff.test_of_might.up&rage<30&!buff.deadly_calm.up\nactions.execute+=/cleave,if=spell_targets.whirlwind>2\nactions.execute+=/slam,if=buff.crushing_assault.up&buff.memory_of_lucid_dreams.down\nactions.execute+=/rend,if=remains<=duration*0.3&target.time_to_die>7\nactions.execute+=/mortal_strike,if=buff.overpower.stack=2&talent.dreadnaught.enabled\nactions.execute+=/execute,if=buff.memory_of_lucid_dreams.up||buff.deadly_calm.up||debuff.colossus_smash.up||buff.test_of_might.up\nactions.execute+=/overpower\nactions.execute+=/execute\n\nactions.five_target=skullsplitter,if=rage<60&(!talent.deadly_calm.enabled||buff.deadly_calm.down)\nactions.five_target+=/ravager,if=(!talent.warbreaker.enabled||cooldown.warbreaker.remains<2)\nactions.five_target+=/colossus_smash,if=debuff.colossus_smash.down\nactions.five_target+=/warbreaker,if=debuff.colossus_smash.down\nactions.five_target+=/bladestorm,if=buff.sweeping_strikes.down&(!talent.deadly_calm.enabled||buff.deadly_calm.down)&((debuff.colossus_smash.remains>4.5&!azerite.test_of_might.enabled)||buff.test_of_might.up)\nactions.five_target+=/deadly_calm\nactions.five_target+=/cleave\nactions.five_target+=/execute,if=(!talent.cleave.enabled&dot.deep_wounds.remains<2)||(buff.sudden_death.react||buff.stone_heart.react)&(buff.sweeping_strikes.up||cooldown.sweeping_strikes.remains>8)\nactions.five_target+=/mortal_strike,if=(!talent.cleave.enabled&dot.deep_wounds.remains<2)||buff.sweeping_strikes.up&buff.overpower.stack=2&talent.dreadnaught.enabled\nactions.five_target+=/whirlwind,if=debuff.colossus_smash.up||(buff.crushing_assault.up&talent.fervor_of_battle.enabled)\nactions.five_target+=/whirlwind,if=buff.deadly_calm.up||rage>60\nactions.five_target+=/overpower\nactions.five_target+=/whirlwind\nactions.five_target+=/victory_rush\nactions.five_target+=/impending_victory\n\nactions.single_target=skullsplitter,if=rage<56&buff.deadly_calm.down&buff.memory_of_lucid_dreams.down\nactions.single_target+=/ravager,if=!buff.deadly_calm.up&(cooldown.colossus_smash.remains<2||(talent.warbreaker.enabled&cooldown.warbreaker.remains<2))\nactions.single_target+=/colossus_smash,if=!essence.condensed_lifeforce.enabled&!talent.massacre.enabled&(target.time_to_pct_20>10||fight_remains>50)||essence.condensed_lifeforce.enabled&!talent.massacre.enabled&(target.time_to_pct_20>10||fight_remains>80)||talent.massacre.enabled&(target.time_to_pct_35>10||fight_remains>50)\nactions.single_target+=/warbreaker,if=!essence.condensed_lifeforce.enabled&!talent.massacre.enabled&(target.time_to_pct_20>10||fight_remains>50)||essence.condensed_lifeforce.enabled&!talent.massacre.enabled&(target.time_to_pct_20>10||fight_remains>80)||talent.massacre.enabled&(target.time_to_pct_35>10||fight_remains>50)\nactions.single_target+=/deadly_calm\nactions.single_target+=/execute,if=buff.sudden_death.react\nactions.single_target+=/bladestorm,if=cooldown.mortal_strike.remains&debuff.colossus_smash.down&(!talent.deadly_calm.enabled||buff.deadly_calm.down)&((debuff.colossus_smash.up&!azerite.test_of_might.enabled)||buff.test_of_might.up)&buff.memory_of_lucid_dreams.down&rage<40\nactions.single_target+=/cleave,if=spell_targets.whirlwind>2\nactions.single_target+=/overpower,if=(!talent.rend.enabled&dot.deep_wounds.remains&rage<70&buff.memory_of_lucid_dreams.down&debuff.colossus_smash.down)||(talent.rend.enabled&dot.deep_wounds.remains&dot.rend.remains>gcd&rage<70&buff.memory_of_lucid_dreams.down&debuff.colossus_smash.down)\nactions.single_target+=/mortal_strike\nactions.single_target+=/rend,if=remains<=duration*0.3\nactions.single_target+=/whirlwind,if=(((buff.memory_of_lucid_dreams.up)||(debuff.colossus_smash.up)||(buff.deadly_calm.up))&talent.fervor_of_battle.enabled)||((buff.memory_of_lucid_dreams.up||rage>89)&debuff.colossus_smash.up&buff.test_of_might.down&!talent.fervor_of_battle.enabled)\nactions.single_target+=/slam,if=!talent.fervor_of_battle.enabled&(buff.memory_of_lucid_dreams.up||debuff.colossus_smash.up)\nactions.single_target+=/overpower\nactions.single_target+=/whirlwind,if=talent.fervor_of_battle.enabled&(buff.test_of_might.up||debuff.colossus_smash.down&buff.test_of_might.down&rage>60)\nactions.single_target+=/slam,if=!talent.fervor_of_battle.enabled\nactions.single_target+=/victory_rush\nactions.single_target+=/impending_victory",
				},
				["Protection Warrior"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200614,
					["spec"] = 73,
					["desc"] = "# Protection Warrior\n# https://github.com/simulationcraft/simc\n# June 14, 2020\n\n# Changes\n# - Add Mitigation logic to new SimC APL.\n# - Delay trinkets (except Grong's) for Avatar.\n# - Lighten Shield Block and Ignore Pain damage intake requirements.\n# - Remove rotational usage of Last Stand.\n# - Use Revenge (when it costs Rage) only if it won't interfere with mitigation.",
					["profile"] = "# Protection Warrior\n# https://github.com/simulationcraft/simc\n# June 14, 2020\n\n# Changes\n# - Add Mitigation logic to new SimC APL.\n# - Delay trinkets (except Grong's) for Avatar.\n# - Lighten Shield Block and Ignore Pain damage intake requirements.\n# - Remove rotational usage of Last Stand.\n# - Use Revenge (when it costs Rage) only if it won't interfere with mitigation.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/worldvein_resonance\nactions.precombat+=/memory_of_lucid_dreams\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=intercept\nactions+=/pummel\nactions+=/shockwave,if=debuff.casting.up&!target.is_boss\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion,if=buff.avatar.up||time_to_die<25\n# use Ignore Pain to avoid rage capping\nactions+=/ignore_pain,if=rage.deficit<25+20*talent.booming_voice.enabled*cooldown.demoralizing_shout.ready\nactions+=/worldvein_resonance,if=cooldown.avatar.remains<=2\nactions+=/memory_of_lucid_dreams,if=cooldown.avatar.remains<=gcd\nactions+=/concentrated_flame,if=buff.avatar.down&!dot.concentrated_flame_burn.remains>0||essence.the_crucible_of_flame.rank<3\n# actions+=/last_stand,if=essence.anima_of_life_and_death.major\nactions+=/heart_essence,if=!(essence.the_crucible_of_flame.major||essence.worldvein_resonance.major||essence.anima_of_life_and_death.major||essence.memory_of_lucid_dreams.major)\nactions+=/use_items,if=cooldown.avatar.remains<=gcd||buff.avatar.up\nactions+=/avatar\nactions+=/call_action_list,name=mitigation,if=incoming_damage_5s>0\nactions+=/run_action_list,name=aoe,if=spell_targets.thunder_clap>=3\nactions+=/call_action_list,name=st\n\nactions.mitigation=ignore_pain,if=incoming_damage_5s\nactions.mitigation+=/shield_block,if=(!talent.bolster.enabled||!buff.last_stand.up)&(charges_fractional>1.8||incoming_damage_5s)\nactions.mitigation+=/demoralizing_shout,if=(target.within10||active_enemies>1)&((incoming_damage_5s>0.15*health.max||health.pct<30)||(!talent.booming_voice.enabled||rage.max-rage<40))\nactions.mitigation+=/last_stand,if=incoming_damage_3s>health&cooldown.anima_of_death.remains<=2\nactions.mitigation+=/shield_wall,if=incoming_damage_5s>health||health.pct<20\n\nactions.aoe=thunder_clap\nactions.aoe+=/demoralizing_shout,if=talent.booming_voice.enabled\nactions.aoe+=/shield_block,if=cooldown.shield_slam.ready&buff.shield_block.down&buff.memory_of_lucid_dreams.up\nactions.aoe+=/shield_slam,if=buff.memory_of_lucid_dreams.up\nactions.aoe+=/dragon_roar\nactions.aoe+=/revenge,if=buff.revenge.up||!toggle.defensives||buff.ignore_pain.up||(buff.shield_block.remains||cooldown.shield_block.charges_fractional<0.8)\nactions.aoe+=/use_item,name=grongs_primal_rage,if=buff.avatar.down||cooldown.thunder_clap.remains>=4\nactions.aoe+=/ravager\nactions.aoe+=/shield_block,if=cooldown.shield_slam.ready&buff.shield_block.down&charges=2\nactions.aoe+=/shield_slam\nactions.aoe+=/victory_rush\nactions.aoe+=/impending_victory\nactions.aoe+=/devastate\n\nactions.st=thunder_clap,if=spell_targets.thunder_clap=2&talent.unstoppable_force.enabled&buff.avatar.up\nactions.st+=/shield_block,if=cooldown.shield_slam.ready&buff.shield_block.down&charges=2\nactions.st+=/shield_slam\nactions.st+=/thunder_clap,if=(talent.unstoppable_force.enabled&buff.avatar.up)\nactions.st+=/demoralizing_shout,if=talent.booming_voice.enabled\nactions.st+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack=0\nactions.st+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack>7&(cooldown.avatar.remains<5||buff.avatar.up)\nactions.st+=/dragon_roar\nactions.st+=/thunder_clap\nactions.st+=/revenge,if=buff.revenge.up||!toggle.defensives||buff.ignore_pain.up||(buff.shield_block.remains||cooldown.shield_block.charges_fractional<0.8)\nactions.st+=/use_item,name=grongs_primal_rage,if=buff.avatar.down||cooldown.shield_slam.remains>=4\nactions.st+=/ravager\nactions.st+=/victory_rush\nactions.st+=/impending_victory\nactions.st+=/devastate",
					["version"] = 20200614,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["action"] = "intercept",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.casting.up & ! target.is_boss",
								["action"] = "shockwave",
							}, -- [3]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up || time_to_die < 25",
								["action"] = "potion",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 25 + 20 * talent.booming_voice.enabled * cooldown.demoralizing_shout.ready",
								["action"] = "ignore_pain",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains <= 2",
								["action"] = "worldvein_resonance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains <= gcd",
								["action"] = "memory_of_lucid_dreams",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.down & ! dot.concentrated_flame_burn.remains > 0 || essence.the_crucible_of_flame.rank < 3",
								["action"] = "concentrated_flame",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! ( essence.the_crucible_of_flame.major || essence.worldvein_resonance.major || essence.anima_of_life_and_death.major || essence.memory_of_lucid_dreams.major )",
								["action"] = "heart_essence",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains <= gcd || buff.avatar.up",
								["action"] = "use_items",
							}, -- [17]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "incoming_damage_5s > 0",
								["list_name"] = "mitigation",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "spell_targets.thunder_clap >= 3",
								["list_name"] = "aoe",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [21]
						},
						["precombat"] = {
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [2]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s",
								["action"] = "ignore_pain",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.bolster.enabled || ! buff.last_stand.up ) & ( charges_fractional > 1.8 || incoming_damage_5s )",
								["action"] = "shield_block",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( target.within10 || active_enemies > 1 ) & ( ( incoming_damage_5s > 0.15 * health.max || health.pct < 30 ) || ( ! talent.booming_voice.enabled || rage.max - rage < 40 ) )",
								["action"] = "demoralizing_shout",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_3s > health & cooldown.anima_of_death.remains <= 2",
								["action"] = "last_stand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > health || health.pct < 20",
								["action"] = "shield_wall",
							}, -- [5]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thunder_clap = 2 & talent.unstoppable_force.enabled & buff.avatar.up",
								["action"] = "thunder_clap",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.ready & buff.shield_block.down & charges = 2",
								["action"] = "shield_block",
							}, -- [2]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.unstoppable_force.enabled & buff.avatar.up )",
								["action"] = "thunder_clap",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.booming_voice.enabled",
								["action"] = "demoralizing_shout",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.razor_coral_debuff.stack = 0",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.razor_coral_debuff.stack > 7 & ( cooldown.avatar.remains < 5 || buff.avatar.up )",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [7]
							{
								["action"] = "dragon_roar",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.revenge.up || ! toggle.defensives || buff.ignore_pain.up || ( buff.shield_block.remains || cooldown.shield_block.charges_fractional < 0.8 )",
								["action"] = "revenge",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.down || cooldown.shield_slam.remains >= 4",
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
							}, -- [11]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [15]
						},
						["aoe"] = {
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.booming_voice.enabled",
								["action"] = "demoralizing_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.ready & buff.shield_block.down & buff.memory_of_lucid_dreams.up",
								["action"] = "shield_block",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.memory_of_lucid_dreams.up",
								["action"] = "shield_slam",
							}, -- [4]
							{
								["action"] = "dragon_roar",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.revenge.up || ! toggle.defensives || buff.ignore_pain.up || ( buff.shield_block.remains || cooldown.shield_block.charges_fractional < 0.8 )",
								["action"] = "revenge",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.down || cooldown.thunder_clap.remains >= 4",
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
							}, -- [7]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.ready & buff.shield_block.down & charges = 2",
								["action"] = "shield_block",
							}, -- [9]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [13]
						},
					},
					["author"] = "SimulationCraft",
				},
				["Fury"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200210,
					["author"] = "SimC / Archimtiros",
					["desc"] = "# Fury Warrior\n# https://github.com/simulationcraft/simc\n# February 10, 2020\n\n# Changes:\n# - Added Pummel.\n# - Disabled movement / Heroic Leap call (not needed for in-game context).\n# - Moved Bladestorm and Dragon Roar above Bloodthirst to improve frequency of recommendations (sims roughly equal).\n# - Added Battle Shout to precombat APL.\n# - Added Victory Rush above single-target Whirlwind.\n# - Added Use Items.",
					["lists"] = {
						["single_target"] = {
							{
								["action"] = "siegebreaker",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.recklessness.up || buff.memory_of_lucid_dreams.up ) || ( talent.frothing_berserker.enabled || talent.carnage.enabled & ( buff.enrage.remains < gcd || rage > 90 ) || talent.massacre.enabled & ( buff.enrage.remains < gcd || rage > 90 ) )",
								["action"] = "rampage",
							}, -- [2]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bloodlust.up & buff.furious_slash.remains < 3",
								["action"] = "furious_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.rampage",
								["action"] = "bladestorm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "dragon_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || azerite.cold_steel_hot_blood.rank > 1",
								["action"] = "bloodthirst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2",
								["action"] = "raging_blow",
							}, -- [8]
							{
								["action"] = "bloodthirst",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.carnage.enabled || ( talent.massacre.enabled & rage < 80 ) || ( talent.frothing_berserker.enabled & rage < 90 )",
								["action"] = "raging_blow",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.furious_slash.enabled",
								["action"] = "furious_slash",
							}, -- [11]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "impending_victory",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [14]
						},
						["default"] = {
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.movement.distance > 25 & raid_event.movement.in > 45 )",
								["action"] = "heroic_leap",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.guardian_of_azeroth.up || ( ! essence.condensed_lifeforce.major & target.time_to_die <= 60 )",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3",
								["action"] = "rampage",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "blood_of_the_enemy",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up",
								["action"] = "purifying_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up",
								["action"] = "ripple_in_space",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up",
								["action"] = "focused_azerite_beam",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up",
								["action"] = "reaping_flames",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ! buff.siegebreaker.up & dot.concentrated_flame_burn.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up & ( time_to_die > 195 || target.health.pct < 20 )",
								["action"] = "guardian_of_azeroth",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! buff.recklessness.up",
								["action"] = "memory_of_lucid_dreams",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! essence.condensed_lifeforce.major & ! essence.blood_of_the_enemy.major || cooldown.guardian_of_azeroth.remains > 1 || buff.guardian_of_azeroth.up || cooldown.blood_of_the_enemy.remains < gcd",
								["action"] = "recklessness",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "time_to_die < 20 || ! debuff.razor_coral_debuff.up || ( target.time_to_pct_30 < 5 & debuff.conductive_ink_debuff.up ) || ( ! debuff.conductive_ink_debuff.up & buff.memory_of_lucid_dreams.up || prev_gcd.2.guardian_of_azeroth || prev_gcd.2.recklessness & ( ! essence.memory_of_lucid_dreams.major & ! essence.condensed_lifeforce.major ) )",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "ramping_amplitude_gigavolt_engine",
								["action"] = "ramping_amplitude_gigavolt_engine",
							}, -- [19]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "blood_fury",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "berserking",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & debuff.siegebreaker.down",
								["action"] = "lights_judgment",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "fireblood",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "ancestral_call",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down & debuff.siegebreaker.down & buff.enrage.up",
								["action"] = "bag_of_tricks",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [27]
						},
						["movement"] = {
							{
								["action"] = "heroic_leap",
								["enabled"] = true,
							}, -- [1]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [5]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [10]
						},
					},
					["version"] = 20200210,
					["warnings"] = "Imported 4 action lists.\n",
					["spec"] = 72,
					["profile"] = "# Fury Warrior\n# https://github.com/simulationcraft/simc\n# February 10, 2020\n\n# Changes:\n# - Added Pummel.\n# - Disabled movement / Heroic Leap call (not needed for in-game context).\n# - Moved Bladestorm and Dragon Roar above Bloodthirst to improve frequency of recommendations (sims roughly equal).\n# - Added Battle Shout to precombat APL.\n# - Added Victory Rush above single-target Whirlwind.\n# - Added Use Items.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/worldvein_resonance\nactions.precombat+=/memory_of_lucid_dreams\nactions.precombat+=/guardian_of_azeroth\nactions.precombat+=/recklessness\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=charge\nactions+=/pummel\n# This is mostly to prevent cooldowns from being accidentally used during movement.\n# actions+=/run_action_list,name=movement,if=movement.distance>5\nactions+=/heroic_leap,if=(raid_event.movement.distance>25&raid_event.movement.in>45)\nactions+=/potion,if=buff.guardian_of_azeroth.up||(!essence.condensed_lifeforce.major&target.time_to_die<=60)\nactions+=/rampage,if=cooldown.recklessness.remains<3\nactions+=/blood_of_the_enemy,if=buff.recklessness.up\nactions+=/purifying_blast,if=!buff.recklessness.up&!buff.siegebreaker.up\nactions+=/ripple_in_space,if=!buff.recklessness.up&!buff.siegebreaker.up\nactions+=/worldvein_resonance,if=!buff.recklessness.up&!buff.siegebreaker.up\nactions+=/focused_azerite_beam,if=!buff.recklessness.up&!buff.siegebreaker.up\nactions+=/reaping_flames,if=!buff.recklessness.up&!buff.siegebreaker.up\nactions+=/concentrated_flame,if=!buff.recklessness.up&!buff.siegebreaker.up&dot.concentrated_flame_burn.remains=0\nactions+=/the_unbound_force,if=buff.reckless_force.up\nactions+=/guardian_of_azeroth,if=!buff.recklessness.up&(time_to_die>195||target.health.pct<20)\nactions+=/memory_of_lucid_dreams,if=!buff.recklessness.up\nactions+=/recklessness,if=!essence.condensed_lifeforce.major&!essence.blood_of_the_enemy.major||cooldown.guardian_of_azeroth.remains>1||buff.guardian_of_azeroth.up||cooldown.blood_of_the_enemy.remains<gcd\nactions+=/whirlwind,if=spell_targets.whirlwind>1&!buff.meat_cleaver.up\nactions+=/use_item,name=ashvanes_razor_coral,if=time_to_die<20||!debuff.razor_coral_debuff.up||(target.time_to_pct_30<5&debuff.conductive_ink_debuff.up)||(!debuff.conductive_ink_debuff.up&buff.memory_of_lucid_dreams.up||prev_gcd.2.guardian_of_azeroth||prev_gcd.2.recklessness&(!essence.memory_of_lucid_dreams.major&!essence.condensed_lifeforce.major))\nactions+=/use_item,name=ramping_amplitude_gigavolt_engine\nactions+=/use_items\nactions+=/blood_fury,if=buff.recklessness.up\nactions+=/berserking,if=buff.recklessness.up\nactions+=/lights_judgment,if=buff.recklessness.down&debuff.siegebreaker.down\nactions+=/fireblood,if=buff.recklessness.up\nactions+=/ancestral_call,if=buff.recklessness.up\nactions+=/bag_of_tricks,if=buff.recklessness.down&debuff.siegebreaker.down&buff.enrage.up\nactions+=/run_action_list,name=single_target\n\nactions.movement=heroic_leap\n\nactions.single_target=siegebreaker\nactions.single_target+=/rampage,if=(buff.recklessness.up||buff.memory_of_lucid_dreams.up)||(talent.frothing_berserker.enabled||talent.carnage.enabled&(buff.enrage.remains<gcd||rage>90)||talent.massacre.enabled&(buff.enrage.remains<gcd||rage>90))\nactions.single_target+=/execute\nactions.single_target+=/furious_slash,if=!buff.bloodlust.up&buff.furious_slash.remains<3\nactions.single_target+=/bladestorm,if=prev_gcd.1.rampage\nactions.single_target+=/dragon_roar,if=buff.enrage.up\nactions.single_target+=/bloodthirst,if=buff.enrage.down||azerite.cold_steel_hot_blood.rank>1\nactions.single_target+=/raging_blow,if=charges=2\nactions.single_target+=/bloodthirst\nactions.single_target+=/raging_blow,if=talent.carnage.enabled||(talent.massacre.enabled&rage<80)||(talent.frothing_berserker.enabled&rage<90)\nactions.single_target+=/furious_slash,if=talent.furious_slash.enabled\nactions.single_target+=/victory_rush\nactions.single_target+=/impending_victory\nactions.single_target+=/whirlwind",
				},
			},
			["iconStore"] = {
				["minimapPos"] = 221.6636340365033,
			},
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
				},
			},
			["notifications"] = {
				["y"] = -94,
				["x"] = -696.999755859375,
			},
			["enabled"] = false,
		},
		["Holyshelf - Eonar"] = {
			["runOnce"] = {
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[70] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["check_wake_range"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Retribution",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_focused_resolve",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[66] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Protection Paladin",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Retribution"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200409,
					["spec"] = 70,
					["desc"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/\n# April 9, 2020\n\n# Changes:\n# - Updated for 8.3.\n# - Fix cast/channel CDs checks for AW/Crusade.\n# - Fixes for HoPo pooling w/o Inquisition and Worldvein Resonance w/o Crusade.",
					["profile"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/\n# April 9, 2020\n\n# Changes:\n# - Updated for 8.3.\n# - Fix cast/channel CDs checks for AW/Crusade.\n# - Fixes for HoPo pooling w/o Inquisition and Worldvein Resonance w/o Crusade.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/arcane_torrent,if=!talent.wake_of_ashes.enabled\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.trinkets+=/use_item,name=razdunks_big_red_button\nactions.trinkets+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||(buff.avenging_wrath.remains>=20||buff.crusade.stack=10&buff.crusade.remains>15)&(cooldown.guardian_of_azeroth.remains>90||time_to_die<30||!essence.condensed_lifeforce.major)\nactions.trinkets+=/use_item,name=jes_howler,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.trinkets+=/use_item,name=vial_of_animated_blood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18)||(cooldown.avenging_wrath.remains>30||cooldown.crusade.remains>30)\nactions.trinkets+=/use_item,name=dooms_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18\nactions.trinkets+=/use_item,name=galecallers_beak,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<15\nactions.trinkets+=/use_item,name=bygone_bee_almanac,if=buff.avenging_wrath.up||buff.crusade.up\nactions.trinkets+=/use_item,name=merekthas_fang,if=(!raid_event.adds.exists||raid_event.adds.in>15)||spell_targets.divine_storm>=2\nactions.trinkets+=/use_item,name=plunderbeards_flask,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=berserkers_juju,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=endless_tincture_of_fractional_power,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=pearl_divers_compass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10\nactions.trinkets+=/use_item,name=first_mates_spyglass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.trinkets+=/use_item,name=whirlwings_plumage,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=dread_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=dread_aspirants_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=grongs_primal_rage,if=!buff.avenging_wrath.up&!buff.crusade.up\nactions.trinkets+=/use_item,name=sinister_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.trinkets+=/use_item,name=sinister_gladiators_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=azsharas_font_of_power,if=!talent.crusade.enabled&cooldown.avenging_wrath.remains<5||talent.crusade.enabled&cooldown.crusade.remains<5&time>10||holy_power>=3&time<10&talent.wake_of_ashes.enabled\nactions.trinkets+=/use_item,name=vision_of_demise,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||cooldown.avenging_wrath.remains>=30||cooldown.crusade.remains>=30\nactions.trinkets+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||(buff.avenging_wrath.remains>=20||buff.crusade.stack=10&buff.crusade.remains>15)&(cooldown.guardian_of_azeroth.remains>90||time_to_die<30||!essence.condensed_lifeforce.major)\nactions.trinkets+=/use_item,name=knot_of_ancient_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>30||!buff.crusade.up&cooldown.crusade.remains>30\nactions.trinkets+=/use_items,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\n\nactions.cooldowns=potion,if=(cooldown.guardian_of_azeroth.remains>90||!essence.condensed_lifeforce.major)&(buff.bloodlust.react||buff.avenging_wrath.up&buff.avenging_wrath.remains>18||buff.crusade.up&buff.crusade.remains<25)\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||(!raid_event.adds.exists||raid_event.adds.in>75)\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/shield_of_vengeance,if=buff.seething_rage.down&buff.memory_of_lucid_dreams.down\nactions.cooldowns+=/call_action_list,name=trinkets\nactions.cooldowns+=/the_unbound_force,if=time<=2||buff.reckless_force.up\nactions.cooldowns+=/blood_of_the_enemy,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/guardian_of_azeroth,if=!talent.crusade.enabled&(cooldown.avenging_wrath.remains<5&holy_power>=3&(buff.inquisition.up||!talent.inquisition.enabled)||cooldown.avenging_wrath.remains>=45)||(talent.crusade.enabled&cooldown.crusade.remains<gcd&holy_power>=4||holy_power>=3&time<10&talent.wake_of_ashes.enabled||cooldown.crusade.remains>=45)\nactions.cooldowns+=/worldvein_resonance,if=cooldown.avenging_wrath.remains<gcd&holy_power>=3||talent.crusade.enabled&cooldown.crusade.remains<gcd&holy_power>=4||cooldown.avenging_wrath.remains>=45||cooldown.crusade.remains>=45\nactions.cooldowns+=/focused_azerite_beam,if=(!raid_event.adds.exists||raid_event.adds.in>30||spell_targets.divine_storm>=2)&!(buff.avenging_wrath.up||buff.crusade.up)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)\nactions.cooldowns+=/memory_of_lucid_dreams,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&holy_power<=3\nactions.cooldowns+=/purifying_blast,if=(!raid_event.adds.exists||raid_event.adds.in>30||spell_targets.divine_storm>=2)\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=!(buff.avenging_wrath.up||buff.crusade.up)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)\nactions.cooldowns+=/avenging_wrath,if=(!talent.inquisition.enabled||buff.inquisition.up)&holy_power>=3\nactions.cooldowns+=/crusade,if=holy_power>=4||holy_power>=3&time<10&talent.wake_of_ashes.enabled\n\nactions.finishers=variable,name=wings_pool,value=!equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*3||cooldown.crusade.remains>gcd*3)||equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*6||cooldown.crusade.remains>gcd*6)\nactions.finishers+=/variable,name=ds_castable,value=spell_targets.divine_storm>=2&!talent.righteous_verdict.enabled||spell_targets.divine_storm>=3&talent.righteous_verdict.enabled||buff.empyrean_power.up&debuff.judgment.down&buff.divine_purpose.down&buff.avenging_wrath_autocrit.down\nactions.finishers+=/inquisition,if=buff.avenging_wrath.down&(buff.inquisition.down||buff.inquisition.remains<8&holy_power>=3||talent.execution_sentence.enabled&cooldown.execution_sentence.remains<10&buff.inquisition.remains<15||cooldown.avenging_wrath.remains<15&buff.inquisition.remains<20&holy_power>=3)\nactions.finishers+=/execution_sentence,if=spell_targets.divine_storm<=2&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>10||talent.crusade.enabled&buff.crusade.down&cooldown.crusade.remains>10||buff.crusade.stack>=7)\nactions.finishers+=/divine_storm,if=variable.ds_castable&variable.wings_pool&((!talent.execution_sentence.enabled||(spell_targets.divine_storm>=2||cooldown.execution_sentence.remains>gcd*2))||(cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10||cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10||buff.crusade.up&buff.crusade.stack<10))\nactions.finishers+=/templars_verdict,if=variable.wings_pool&(!talent.execution_sentence.enabled||cooldown.execution_sentence.remains>gcd*2||cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10||cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10||buff.crusade.up&buff.crusade.stack<10)\n\nactions.generators=variable,name=HoW,value=(!talent.hammer_of_wrath.enabled||target.health.pct>=20&!(buff.avenging_wrath.up||buff.crusade.up))\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=5||buff.memory_of_lucid_dreams.up||buff.seething_rage.up||talent.inquisition.enabled&buff.inquisition.down&holy_power>=3\nactions.generators+=/wake_of_ashes,if=(!raid_event.adds.exists||raid_event.adds.in>15||spell_targets.wake_of_ashes>=2)&(holy_power<=0||holy_power=1&cooldown.blade_of_justice.remains>gcd)&(cooldown.avenging_wrath.remains>10||talent.crusade.enabled&cooldown.crusade.remains>10)\nactions.generators+=/blade_of_justice,if=holy_power<=2||(holy_power=3&(cooldown.hammer_of_wrath.remains>gcd*2||variable.HoW))\nactions.generators+=/judgment,if=holy_power<=2||(holy_power<=4&(cooldown.blade_of_justice.remains>gcd*2||variable.HoW))\nactions.generators+=/hammer_of_wrath,if=holy_power<=4\nactions.generators+=/consecration,if=holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2\nactions.generators+=/call_action_list,name=finishers,if=talent.hammer_of_wrath.enabled&target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2&cooldown.consecration.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/concentrated_flame\nactions.generators+=/reaping_flames\nactions.generators+=/crusader_strike,if=holy_power<=4\nactions.generators+=/arcane_torrent,if=holy_power<=4",
					["version"] = 20200409,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [3]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wake_of_ashes.enabled",
								["action"] = "arcane_torrent",
							}, -- [3]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.guardian_of_azeroth.remains > 90 || ! essence.condensed_lifeforce.major ) & ( buff.bloodlust.react || buff.avenging_wrath.up & buff.avenging_wrath.remains > 18 || buff.crusade.up & buff.crusade.remains < 25 )",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ( ! raid_event.adds.exists || raid_event.adds.in > 75 )",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.seething_rage.down & buff.memory_of_lucid_dreams.down",
								["action"] = "shield_of_vengeance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "time <= 2 || buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crusade.enabled & ( cooldown.avenging_wrath.remains < 5 & holy_power >= 3 & ( buff.inquisition.up || ! talent.inquisition.enabled ) || cooldown.avenging_wrath.remains >= 45 ) || ( talent.crusade.enabled & cooldown.crusade.remains < gcd & holy_power >= 4 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled || cooldown.crusade.remains >= 45 )",
								["action"] = "guardian_of_azeroth",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avenging_wrath.remains < gcd & holy_power >= 3 || talent.crusade.enabled & cooldown.crusade.remains < gcd & holy_power >= 4 || cooldown.avenging_wrath.remains >= 45 || cooldown.crusade.remains >= 45",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 30 || spell_targets.divine_storm >= 2 ) & ! ( buff.avenging_wrath.up || buff.crusade.up ) & ( cooldown.blade_of_justice.remains > gcd * 3 & cooldown.judgment.remains > gcd * 3 )",
								["action"] = "focused_azerite_beam",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & holy_power <= 3",
								["action"] = "memory_of_lucid_dreams",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 30 || spell_targets.divine_storm >= 2 )",
								["action"] = "purifying_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.avenging_wrath.up || buff.crusade.up ) & ( cooldown.blade_of_justice.remains > gcd * 3 & cooldown.judgment.remains > gcd * 3 )",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.inquisition.enabled || buff.inquisition.up ) & holy_power >= 3",
								["action"] = "avenging_wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled",
								["action"] = "crusade",
							}, -- [15]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || ( buff.avenging_wrath.remains >= 20 || buff.crusade.stack = 10 & buff.crusade.remains > 15 ) & ( cooldown.guardian_of_azeroth.remains > 90 || time_to_die < 30 || ! essence.condensed_lifeforce.major )",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "jes_howler",
								["action"] = "jes_howler",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "vial_of_animated_blood",
								["action"] = "vial_of_animated_blood",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18 ) || ( cooldown.avenging_wrath.remains > 30 || cooldown.crusade.remains > 30 )",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "dooms_fury",
								["action"] = "dooms_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "galecallers_beak",
								["action"] = "galecallers_beak",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 15",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "bygone_bee_almanac",
								["action"] = "bygone_bee_almanac",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 ) || spell_targets.divine_storm >= 2",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "plunderbeards_flask",
								["action"] = "plunderbeards_flask",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "berserkers_juju",
								["action"] = "berserkers_juju",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "endless_tincture_of_fractional_power",
								["action"] = "endless_tincture_of_fractional_power",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "pearl_divers_compass",
								["action"] = "pearl_divers_compass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "first_mates_spyglass",
								["action"] = "first_mates_spyglass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "whirlwings_plumage",
								["action"] = "whirlwings_plumage",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "dread_gladiators_badge",
								["action"] = "dread_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "dread_aspirants_medallion",
								["action"] = "dread_aspirants_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "! buff.avenging_wrath.up & ! buff.crusade.up",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "sinister_gladiators_badge",
								["action"] = "sinister_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "sinister_gladiators_medallion",
								["action"] = "sinister_gladiators_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "! talent.crusade.enabled & cooldown.avenging_wrath.remains < 5 || talent.crusade.enabled & cooldown.crusade.remains < 5 & time > 10 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled",
							}, -- [20]
							{
								["enabled"] = true,
								["name"] = "vision_of_demise",
								["action"] = "vision_of_demise",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || cooldown.avenging_wrath.remains >= 30 || cooldown.crusade.remains >= 30",
							}, -- [21]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || ( buff.avenging_wrath.remains >= 20 || buff.crusade.stack = 10 & buff.crusade.remains > 15 ) & ( cooldown.guardian_of_azeroth.remains > 90 || time_to_die < 30 || ! essence.condensed_lifeforce.major )",
							}, -- [22]
							{
								["enabled"] = true,
								["name"] = "knot_of_ancient_fury",
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 30 || ! buff.crusade.up & cooldown.crusade.remains > 30",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "use_items",
							}, -- [24]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! talent.hammer_of_wrath.enabled || target.health.pct >= 20 & ! ( buff.avenging_wrath.up || buff.crusade.up ) )",
								["var_name"] = "HoW",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power >= 5 || buff.memory_of_lucid_dreams.up || buff.seething_rage.up || talent.inquisition.enabled & buff.inquisition.down & holy_power >= 3",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 || spell_targets.wake_of_ashes >= 2 ) & ( holy_power <= 0 || holy_power = 1 & cooldown.blade_of_justice.remains > gcd ) & ( cooldown.avenging_wrath.remains > 10 || talent.crusade.enabled & cooldown.crusade.remains > 10 )",
								["action"] = "wake_of_ashes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power = 3 & ( cooldown.hammer_of_wrath.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "blade_of_justice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "hammer_of_wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2",
								["action"] = "consecration",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.hammer_of_wrath.enabled & target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 & cooldown.consecration.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [10]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "crusader_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [14]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! equipped.azsharas_font_of_power & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > gcd * 3 || cooldown.crusade.remains > gcd * 3 ) || equipped.azsharas_font_of_power & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > gcd * 6 || cooldown.crusade.remains > gcd * 6 )",
								["var_name"] = "wings_pool",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.divine_storm >= 2 & ! talent.righteous_verdict.enabled || spell_targets.divine_storm >= 3 & talent.righteous_verdict.enabled || buff.empyrean_power.up & debuff.judgment.down & buff.divine_purpose.down & buff.avenging_wrath_autocrit.down",
								["var_name"] = "ds_castable",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.down & ( buff.inquisition.down || buff.inquisition.remains < 8 & holy_power >= 3 || talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 10 & buff.inquisition.remains < 15 || cooldown.avenging_wrath.remains < 15 & buff.inquisition.remains < 20 & holy_power >= 3 )",
								["action"] = "inquisition",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm <= 2 & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > 10 || talent.crusade.enabled & buff.crusade.down & cooldown.crusade.remains > 10 || buff.crusade.stack >= 7 )",
								["action"] = "execution_sentence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & variable.wings_pool & ( ( ! talent.execution_sentence.enabled || ( spell_targets.divine_storm >= 2 || cooldown.execution_sentence.remains > gcd * 2 ) ) || ( cooldown.avenging_wrath.remains > gcd * 3 & cooldown.avenging_wrath.remains < 10 || cooldown.crusade.remains > gcd * 3 & cooldown.crusade.remains < 10 || buff.crusade.up & buff.crusade.stack < 10 ) )",
								["action"] = "divine_storm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.wings_pool & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd * 2 || cooldown.avenging_wrath.remains > gcd * 3 & cooldown.avenging_wrath.remains < 10 || cooldown.crusade.remains > gcd * 3 & cooldown.crusade.remains < 10 || buff.crusade.up & buff.crusade.stack < 10 )",
								["action"] = "templars_verdict",
							}, -- [6]
						},
					},
				},
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200410,
					["author"] = "SimC",
					["desc"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/\n# April 10, 2020\n\n# Changes\n# - Added Rebuke.",
					["lists"] = {
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "fireblood",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.seraphim.remains <= 10 || ! talent.seraphim.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "( debuff.razor_coral_debuff.stack > 7 & buff.avenging_wrath.up ) || debuff.razor_coral_debuff.stack = 0",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional >= 2",
								["action"] = "seraphim",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || cooldown.seraphim.remains < 2 || ! talent.seraphim.enabled",
								["action"] = "avenging_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional <= 0.5",
								["action"] = "bastion_of_light",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "potion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || ! talent.seraphim.enabled",
								["action"] = "use_items",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [11]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & action.shield_of_the_righteous.charges > 2 & ! ( buff.aegis_of_light.up & buff.ardent_defender.up & buff.guardian_of_ancient_kings.up & buff.divine_shield.up & buff.potion.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.bastion_of_light.enabled & action.shield_of_the_righteous.charges < 1",
								["action"] = "bastion_of_light",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "light_of_the_protector",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "hand_of_the_protector",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
								["action"] = "light_of_the_protector",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
								["action"] = "light_of_the_protector",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
								["action"] = "hand_of_the_protector",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
								["action"] = "hand_of_the_protector",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "aegis_of_light",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.lifeblood.stack < 3",
								["action"] = "worldvein_resonance",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avengers_valor.up & cooldown.shield_of_the_righteous.charges_fractional >= 2.5 ) & ( cooldown.seraphim.remains > gcd || ! talent.seraphim.enabled )",
								["action"] = "shield_of_the_righteous",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & ! talent.seraphim.enabled ) || buff.seraphim.up & buff.avengers_valor.up",
								["action"] = "shield_of_the_righteous",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & buff.avenging_wrath.remains < 4 & ! talent.seraphim.enabled ) || ( buff.seraphim.remains < 4 & buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up & buff.seraphim.remains < 3",
								["action"] = "lights_judgment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.judgment.remains < gcd & cooldown.judgment.charges_fractional > 1 & cooldown_react ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "avengers_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.seraphim.enabled || buff.seraphim.up ) & ! dot.concentrated_flame_burn.remains > 0 || essence.the_crucible_of_flame.rank < 3",
								["action"] = "concentrated_flame",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled || buff.seraphim.up",
								["action"] = "lights_judgment",
							}, -- [14]
							{
								["action"] = "anima_of_death",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "3",
							}, -- [16]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! ( essence.the_crucible_of_flame.major || essence.worldvein_resonance.major || essence.anima_of_life_and_death.major || essence.memory_of_lucid_dreams.major )",
								["action"] = "heart_essence",
							}, -- [19]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20200410,
					["warnings"] = "Imported 4 action lists.\n",
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/\n# April 10, 2020\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\nactions+=/worldvein_resonance,if=buff.lifeblood.stack<3\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/concentrated_flame,if=(!talent.seraphim.enabled||buff.seraphim.up)&!dot.concentrated_flame_burn.remains>0||essence.the_crucible_of_flame.rank<3\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/anima_of_death\nactions+=/blessed_hammer,strikes=3\nactions+=/hammer_of_the_righteous\nactions+=/consecration\nactions+=/heart_essence,if=!(essence.the_crucible_of_flame.major||essence.worldvein_resonance.major||essence.anima_of_life_and_death.major||essence.memory_of_lucid_dreams.major)\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_item,name=azsharas_font_of_power,if=cooldown.seraphim.remains<=10||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=(debuff.razor_coral_debuff.stack>7&buff.avenging_wrath.up)||debuff.razor_coral_debuff.stack=0\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0.5\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
					["spec"] = 66,
				},
			},
		},
		["Fayzed - Eonar"] = {
			["enabled"] = false,
			["specs"] = {
				[64] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["rotation"] = "standard",
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Frost Mage",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_focused_resolve",
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[63] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["prevent_hardcasts"] = false,
						["save_2_runes"] = true,
						["pyroblast_pull"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = false,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Fire",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "superior_battle_potion_of_intellect",
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
				[62] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Arcane",
					["buffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_focused_resolve",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200525,
					["author"] = "SimC",
					["desc"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/\n# May 25, 2020\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last second CD usage.\n# - Redo priority forks for rotation.standard/frozen_orb/no_ice_lance.",
					["lists"] = {
						["essences_orb"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down || active_enemies > 3",
								["action"] = "focused_azerite_beam",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 5 & debuff.packed_ice.down & cooldown.frozen_orb.remains > 5 & ! action.frozen_orb.in_flight & ground_aoe.frozen_orb.remains = 0",
								["action"] = "memory_of_lucid_dreams",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frozen_orb || ground_aoe.frozen_orb.remains > 5",
								["action"] = "blood_of_the_enemy",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down || active_enemies > 3",
								["action"] = "purifying_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down || active_enemies > 3",
								["action"] = "ripple_in_space",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down",
								["action"] = "concentrated_flame",
								["line_cd"] = "6",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down",
								["action"] = "reaping_flames",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.packed_ice.down & cooldown.frozen_orb.remains < 4 || active_enemies > 3",
								["action"] = "worldvein_resonance",
							}, -- [9]
						},
						["essences"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "rotation.frozen_orb",
								["list_name"] = "essences_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! rotation.frozen_orb",
								["list_name"] = "essences_default",
							}, -- [2]
						},
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ice_nova.ready & debuff.winters_chill.up",
								["action"] = "ice_nova",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "rotation.standard",
								["list_name"] = "single_standard",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "rotation.no_ice_lance",
								["list_name"] = "single_no_lance",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "rotation.frozen_orb",
								["list_name"] = "single_orb",
							}, -- [4]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [7]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [9]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [10]
						},
						["talent_rop"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & talent.glacial_spike.enabled & buff.icicles.stack = 5 & ( buff.brain_freeze.react || talent.ebonbolt.enabled & cooldown.ebonbolt.remains < cast_time )",
								["action"] = "rune_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ! talent.glacial_spike.enabled & ( talent.ebonbolt.enabled & cooldown.ebonbolt.remains < cast_time || talent.comet_storm.enabled & cooldown.comet_storm.remains < cast_time || talent.ray_of_frost.enabled & cooldown.ray_of_frost.remains < cast_time || charges_fractional > 1.9 )",
								["action"] = "rune_of_power",
							}, -- [2]
						},
						["single_orb"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [1]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.ebonbolt & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || active_enemies > 1 & cast_time = 0",
								["action"] = "blizzard",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react & cooldown.frozen_orb.remains > 5 || buff.fingers_of_frost.react = 2",
								["action"] = "ice_lance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cast_time = 0",
								["action"] = "blizzard",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.ebonbolt",
								["action"] = "flurry",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react & ( prev_gcd.1.frostbolt || debuff.packed_ice.remains > execute_time + action.ice_lance.travel_time )",
								["action"] = "flurry",
							}, -- [8]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "ray_of_frost",
								["interrupt_if"] = "buff.fingers_of_frost.react=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "debuff.packed_ice.up",
							}, -- [11]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! rotation.no_ice_lance & prev_gcd.1.flurry & ! buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 3 & talent.freezing_rain.enabled || active_enemies > 4",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single",
							}, -- [5]
						},
						["aoe"] = {
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [3]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.ebonbolt || buff.brain_freeze.react & ( prev_gcd.1.frostbolt & ( buff.icicles.stack < 4 || ! talent.glacial_spike.enabled ) || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [7]
							{
								["action"] = "ray_of_frost",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "glacial_spike",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "cone_of_cold",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [13]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [15]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [16]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink_any",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ( prev_gcd.1.frozen_orb || time_to_die > 10 + cast_time & time_to_die < 20 )",
								["action"] = "rune_of_power",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.rune_of_power.enabled & active_enemies = 1 & cooldown.rune_of_power.full_recharge_time < cooldown.frozen_orb.remains",
								["list_name"] = "talent_rop",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.icy_veins || time_to_die < 30",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.glacial_spike.enabled || buff.brain_freeze.react & prev_gcd.1.glacial_spike",
								["name"] = "balefire_branch",
								["action"] = "balefire_branch",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
						},
						["single_no_lance"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.ebonbolt.enabled & prev_gcd.1.ebonbolt & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.glacial_spike & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [3]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || active_enemies > 1 & ! talent.splitting_ice.enabled",
								["action"] = "blizzard",
							}, -- [5]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.icicles.stack = 5 & ! buff.brain_freeze.react",
								["action"] = "ebonbolt",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react & ( buff.fingers_of_frost.react || prev_gcd.1.flurry ) & ( buff.icicles.max_stack - buff.icicles.stack ) * action.frostbolt.execute_time + action.glacial_spike.cast_time + action.glacial_spike.travel_time < incanters_flow_time_to.5.any & buff.memory_of_lucid_dreams.down",
								["action"] = "ice_lance",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react || prev_gcd.1.ebonbolt || talent.incanters_flow.enabled & cast_time + travel_time > incanters_flow_time_to.5.up & cast_time + travel_time < incanters_flow_time_to.4.down",
								["action"] = "glacial_spike",
							}, -- [9]
						},
						["essences_default"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down || active_enemies > 3",
								["action"] = "focused_azerite_beam",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 5 & ( buff.icicles.stack <= 1 || ! talent.glacial_spike.enabled ) & cooldown.frozen_orb.remains > 10 & ( ! rotation.standard || ! action.frozen_orb.in_flight & ground_aoe.frozen_orb.remains = 0 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.glacial_spike.enabled & buff.icicles.stack = 5 & ( buff.brain_freeze.react || prev_gcd.1.ebonbolt ) ) || ( ( active_enemies > 3 || ! talent.glacial_spike.enabled ) & ( prev_gcd.1.frozen_orb || ground_aoe.frozen_orb.remains > 5 ) )",
								["action"] = "blood_of_the_enemy",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down || active_enemies > 3",
								["action"] = "purifying_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down || active_enemies > 3",
								["action"] = "ripple_in_space",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down",
								["action"] = "concentrated_flame",
								["line_cd"] = "6",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down",
								["action"] = "reaping_flames",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down || active_enemies > 3",
								["action"] = "worldvein_resonance",
							}, -- [9]
						},
						["single_standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.ebonbolt.enabled & prev_gcd.1.ebonbolt & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 || buff.brain_freeze.react )",
								["action"] = "flurry",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.glacial_spike.enabled & prev_gcd.1.glacial_spike & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frostbolt & buff.brain_freeze.react & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 )",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [4]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || active_enemies > 1 & cast_time = 0 & buff.fingers_of_frost.react < 2",
								["action"] = "blizzard",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [7]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! action.frozen_orb.in_flight & ground_aoe.frozen_orb.remains = 0",
								["action"] = "ray_of_frost",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cast_time = 0 || active_enemies > 1",
								["action"] = "blizzard",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react || prev_gcd.1.ebonbolt || active_enemies > 1 & talent.splitting_ice.enabled",
								["action"] = "glacial_spike",
							}, -- [12]
						},
					},
					["version"] = 20200525,
					["warnings"] = "WARNING:  The import for 'movement' required some automated changes.\nLine 1: Unsupported action 'blink_any'.\n\nImported 13 action lists.\n",
					["spec"] = 64,
					["profile"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/\n# May 25, 2020\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last second CD usage.\n# - Redo priority forks for rotation.standard/frozen_orb/no_ice_lance.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/frostbolt\n\n# Executed every time the actor is available.\nactions=counterspell\n# If the mage has FoF after casting instant Flurry, we can delay the Ice Lance and use other high priority action, if available.\nactions+=/ice_lance,if=!rotation.no_ice_lance&prev_gcd.1.flurry&!buff.fingers_of_frost.react\nactions+=/call_action_list,name=cooldowns\n# The target threshold isn't exact. Between 3-5 targets, the differences between the ST and AoE action lists are rather small. However, Freezing Rain prefers using AoE action list sooner as it benefits greatly from the high priority Blizzard action.\nactions+=/call_action_list,name=aoe,if=active_enemies>3&talent.freezing_rain.enabled||active_enemies>4\nactions+=/call_action_list,name=single\n\n# With Freezing Rain, it's better to prioritize using Frozen Orb when both FO and Blizzard are off cooldown. Without Freezing Rain, the converse is true although the difference is miniscule until very high target counts.\nactions.aoe=frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/call_action_list,name=essences\nactions.aoe+=/comet_storm\nactions.aoe+=/ice_nova\n# Simplified Flurry conditions from the ST action list. Since the mage is generating far less Brain Freeze charges, the exact condition here isn't all that important.\nactions.aoe+=/flurry,if=prev_gcd.1.ebonbolt||buff.brain_freeze.react&(prev_gcd.1.frostbolt&(buff.icicles.stack<4||!talent.glacial_spike.enabled)||prev_gcd.1.glacial_spike)\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react\n# The mage will generally be generating a lot of FoF charges when using the AoE action list. Trying to delay Ray of Frost until there are no FoF charges and no active Frozen Orbs would lead to it not being used at all.\nactions.aoe+=/ray_of_frost\nactions.aoe+=/ebonbolt\nactions.aoe+=/glacial_spike\n# Using Cone of Cold is mostly DPS neutral with the AoE target thresholds. It only becomes decent gain with roughly 7 or more targets.\nactions.aoe+=/cone_of_cold\nactions.aoe+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.aoe+=/use_item,effect_name=cyclotronic_blast,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.aoe+=/frostbolt\nactions.aoe+=/call_action_list,name=movement\nactions.aoe+=/ice_lance\n\nactions.cooldowns=guardian_of_azeroth\nactions.cooldowns+=/icy_veins\nactions.cooldowns+=/mirror_image\n# Rune of Power is always used with Frozen Orb. Any leftover charges at the end of the fight should be used, ideally if the boss doesn't die in the middle of the Rune buff.\nactions.cooldowns+=/rune_of_power,if=buff.rune_of_power.down&(prev_gcd.1.frozen_orb||time_to_die>10+cast_time&time_to_die<20)\n# On single target fights, the cooldown of Rune of Power is lower than the cooldown of Frozen Orb, this gives extra Rune of Power charges that should be used with active talents, if possible.\nactions.cooldowns+=/call_action_list,name=talent_rop,if=talent.rune_of_power.enabled&active_enemies=1&cooldown.rune_of_power.full_recharge_time<cooldown.frozen_orb.remains\nactions.cooldowns+=/potion,if=prev_gcd.1.icy_veins||time_to_die<30\nactions.cooldowns+=/use_item,name=balefire_branch,if=!talent.glacial_spike.enabled||buff.brain_freeze.react&prev_gcd.1.glacial_spike\nactions.cooldowns+=/use_items\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/bag_of_tricks\n\n# Essences: Standard and No Ice Lance\nactions.essences_default=focused_azerite_beam,if=buff.rune_of_power.down||active_enemies>3\nactions.essences_default+=/memory_of_lucid_dreams,if=active_enemies<5&(buff.icicles.stack<=1||!talent.glacial_spike.enabled)&cooldown.frozen_orb.remains>10&(!rotation.standard||!action.frozen_orb.in_flight&ground_aoe.frozen_orb.remains=0)\nactions.essences_default+=/blood_of_the_enemy,if=(talent.glacial_spike.enabled&buff.icicles.stack=5&(buff.brain_freeze.react||prev_gcd.1.ebonbolt))||((active_enemies>3||!talent.glacial_spike.enabled)&(prev_gcd.1.frozen_orb||ground_aoe.frozen_orb.remains>5))\nactions.essences_default+=/purifying_blast,if=buff.rune_of_power.down||active_enemies>3\nactions.essences_default+=/ripple_in_space,if=buff.rune_of_power.down||active_enemies>3\nactions.essences_default+=/concentrated_flame,line_cd=6,if=buff.rune_of_power.down\nactions.essences_default+=/reaping_flames,if=buff.rune_of_power.down\nactions.essences_default+=/the_unbound_force,if=buff.reckless_force.up\nactions.essences_default+=/worldvein_resonance,if=buff.rune_of_power.down||active_enemies>3\n\n# Essences: Frozen Orb\nactions.essences_orb+=/focused_azerite_beam,if=buff.rune_of_power.down&debuff.packed_ice.down||active_enemies>3\nactions.essences_orb+=/memory_of_lucid_dreams,if=active_enemies<5&debuff.packed_ice.down&cooldown.frozen_orb.remains>5&!action.frozen_orb.in_flight&ground_aoe.frozen_orb.remains=0\nactions.essences_orb+=/blood_of_the_enemy,if=prev_gcd.1.frozen_orb||ground_aoe.frozen_orb.remains>5\nactions.essences_orb+=/purifying_blast,if=buff.rune_of_power.down&debuff.packed_ice.down||active_enemies>3\nactions.essences_orb+=/ripple_in_space,if=buff.rune_of_power.down&debuff.packed_ice.down||active_enemies>3\nactions.essences_orb+=/concentrated_flame,line_cd=6,if=buff.rune_of_power.down&debuff.packed_ice.down\nactions.essences_orb+=/reaping_flames,if=buff.rune_of_power.down&debuff.packed_ice.down\nactions.essences_orb+=/the_unbound_force,if=buff.reckless_force.up\nactions.essences_orb+=/worldvein_resonance,if=buff.rune_of_power.down&debuff.packed_ice.down&cooldown.frozen_orb.remains<4||active_enemies>3\n\nactions.essences=call_action_list,strict=1,name=essences_orb,if=rotation.frozen_orb\nactions.essences+=/call_action_list,strict=1,name=essences_default,if=!rotation.frozen_orb\n\nactions.movement=blink_any,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\n\n# Single Target\n# Without GS, Ebonbolt is always shattered. With GS, Ebonbolt is shattered if it would waste Brain Freeze charge (i.e. when the mage starts casting Ebonbolt with Brain Freeze active) or when below 4 Icicles (if Ebonbolt is cast when the mage has 4-5 Icicles, it's better to use the Brain Freeze from it on Glacial Spike).\nactions.single_standard=flurry,if=talent.ebonbolt.enabled&prev_gcd.1.ebonbolt&(!talent.glacial_spike.enabled||buff.icicles.stack<4||buff.brain_freeze.react)\n# Glacial Spike is always shattered.\nactions.single_standard+=/flurry,if=talent.glacial_spike.enabled&prev_gcd.1.glacial_spike&buff.brain_freeze.react\n# Without GS, the mage just tries to shatter as many Frostbolts as possible. With GS, the mage only shatters Frostbolt that would put them at 1-3 Icicle stacks. Difference between shattering Frostbolt with 1-3 Icicles and 1-4 Icicles is small, but 1-3 tends to be better in more situations (the higher GS damage is, the more it leans towards 1-3). Forcing shatter on Frostbolt is still a small gain, so is not caring about FoF. Ice Lance is too weak to warrant delaying Brain Freeze Flurry.\nactions.single_standard+=/flurry,if=prev_gcd.1.frostbolt&buff.brain_freeze.react&(!talent.glacial_spike.enabled||buff.icicles.stack<4)\nactions.single_standard+=/call_action_list,name=essences\nactions.single_standard+=/frozen_orb\n# With Freezing Rain and at least 2 targets, Blizzard needs to be used with higher priority to make sure you can fit both instant Blizzards into a single Freezing Rain. Starting with three targets, Blizzard leaves the low priority filler role and is used on cooldown (and just making sure not to waste Brain Freeze charges) with or without Freezing Rain.\nactions.single_standard+=/blizzard,if=active_enemies>2||active_enemies>1&cast_time=0&buff.fingers_of_frost.react<2\n# Trying to pool charges of FoF for anything isn't worth it. Use them as they come.\nactions.single_standard+=/ice_lance,if=buff.fingers_of_frost.react\nactions.single_standard+=/comet_storm\nactions.single_standard+=/ebonbolt\n# Ray of Frost is used after all Fingers of Frost charges have been used and there isn't active Frozen Orb that could generate more. This is only a small gain against multiple targets, as Ray of Frost isn't too impactful.\nactions.single_standard+=/ray_of_frost,if=!action.frozen_orb.in_flight&ground_aoe.frozen_orb.remains=0\n# Blizzard is used as low priority filler against 2 targets. When using Freezing Rain, it's a medium gain to use the instant Blizzard even against a single target, especially with low mastery.\nactions.single_standard+=/blizzard,if=cast_time=0||active_enemies>1\n# Glacial Spike is used when there's a Brain Freeze proc active (i.e. only when it can be shattered). This is a small to medium gain in most situations. Low mastery leans towards using it when available. When using Splitting Ice and having another target nearby, it's slightly better to use GS when available, as the second target doesn't benefit from shattering the main target.\nactions.single_standard+=/glacial_spike,if=buff.brain_freeze.react||prev_gcd.1.ebonbolt||active_enemies>1&talent.splitting_ice.enabled\n\nactions.single_no_lance=flurry,if=talent.ebonbolt.enabled&prev_gcd.1.ebonbolt&buff.brain_freeze.react\nactions.single_no_lance+=/flurry,if=prev_gcd.1.glacial_spike&buff.brain_freeze.react\nactions.single_no_lance+=/call_action_list,name=essences\nactions.single_no_lance+=/frozen_orb\nactions.single_no_lance+=/blizzard,if=active_enemies>2||active_enemies>1&!talent.splitting_ice.enabled\nactions.single_no_lance+=/comet_storm\nactions.single_no_lance+=/ebonbolt,if=buff.icicles.stack=5&!buff.brain_freeze.react\nactions.single_no_lance+=/ice_lance,if=buff.brain_freeze.react&(buff.fingers_of_frost.react||prev_gcd.1.flurry)&(buff.icicles.max_stack-buff.icicles.stack)*action.frostbolt.execute_time+action.glacial_spike.cast_time+action.glacial_spike.travel_time<incanters_flow_time_to.5.any&buff.memory_of_lucid_dreams.down\nactions.single_no_lance+=/glacial_spike,if=buff.brain_freeze.react||prev_gcd.1.ebonbolt||talent.incanters_flow.enabled&cast_time+travel_time>incanters_flow_time_to.5.up&cast_time+travel_time<incanters_flow_time_to.4.down\n\nactions.single_orb=call_action_list,name=essences\nactions.single_orb+=/frozen_orb\nactions.single_orb+=/flurry,if=prev_gcd.1.ebonbolt&buff.brain_freeze.react\nactions.single_orb+=/blizzard,if=active_enemies>2||active_enemies>1&cast_time=0\nactions.single_orb+=/ice_lance,if=buff.fingers_of_frost.react&cooldown.frozen_orb.remains>5||buff.fingers_of_frost.react=2\nactions.single_orb+=/blizzard,if=cast_time=0\nactions.single_orb+=/flurry,if=prev_gcd.1.ebonbolt\nactions.single_orb+=/flurry,if=buff.brain_freeze.react&(prev_gcd.1.frostbolt||debuff.packed_ice.remains>execute_time+action.ice_lance.travel_time)\nactions.single_orb+=/comet_storm\nactions.single_orb+=/ebonbolt\nactions.single_orb+=/ray_of_frost,if=debuff.packed_ice.up,interrupt_if=buff.fingers_of_frost.react=2,interrupt_immediate=1\nactions.single_orb+=/blizzard\n\n# In some situations, you can shatter Ice Nova even after already casting Flurry and Ice Lance. Otherwise this action is used when the mage has FoF after casting Flurry, see above.\nactions.single=ice_nova,if=cooldown.ice_nova.ready&debuff.winters_chill.up\nactions.single+=/call_action_list,strict=1,name=single_standard,if=rotation.standard\nactions.single+=/call_action_list,strict=1,name=single_no_lance,if=rotation.no_ice_lance\nactions.single+=/call_action_list,strict=1,name=single_orb,if=rotation.frozen_orb\nactions.single+=/ice_nova\nactions.single+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.single+=/use_item,effect_name=cyclotronic_blast,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.single+=/frostbolt\nactions.single+=/call_action_list,name=movement\nactions.single+=/ice_lance\n\n# With Glacial Spike, Rune of Power should be used right before the Glacial Spike combo (i.e. with 5 Icicles and a Brain Freeze). When Ebonbolt is off cooldown, Rune of Power can also be used just with 5 Icicles.\nactions.talent_rop=rune_of_power,if=buff.rune_of_power.down&talent.glacial_spike.enabled&buff.icicles.stack=5&(buff.brain_freeze.react||talent.ebonbolt.enabled&cooldown.ebonbolt.remains<cast_time)\n# Without Glacial Spike, Rune of Power should be used before any bigger cooldown (Ebonbolt, Comet Storm, Ray of Frost) or when Rune of Power is about to reach 2 charges.\nactions.talent_rop+=/rune_of_power,if=buff.rune_of_power.down&!talent.glacial_spike.enabled&(talent.ebonbolt.enabled&cooldown.ebonbolt.remains<cast_time||talent.comet_storm.enabled&cooldown.comet_storm.remains<cast_time||talent.ray_of_frost.enabled&cooldown.ray_of_frost.remains<cast_time||charges_fractional>1.9)",
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200614,
					["author"] = "SimC",
					["desc"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.\n# - Update logic re: Lucid Dreams.\n# - Loosen cast requirements for Combustion (i.e., don't hold it for a fresh Meteor cast).\n# - Disable an entry that would result in a hardcast Pyroblast in-game.\n# - Enable strict checking on a few forks in the APL to reduce workload.",
					["lists"] = {
						["items_low_priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [2]
						},
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "bag_of_tricks",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down",
								["action"] = "living_bomb",
							}, -- [3]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "charges >= 1 & ( ( action.fire_blast.charges_fractional + ( buff.combustion.remains - buff.blaster_master.duration ) % cooldown.fire_blast.duration - ( buff.combustion.remains ) % ( buff.blaster_master.duration - 0.5 ) ) >= 0 || ! azerite.blaster_master.enabled || ! talent.flame_on.enabled || buff.combustion.remains <= buff.blaster_master.duration || buff.blaster_master.remains < 0.5 || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.remains < 5 ) & buff.combustion.up & ( ! action.scorch.executing & ! action.pyroblast.in_flight & buff.heating_up.up || action.scorch.executing & buff.hot_streak.down & ( buff.heating_up.down || azerite.blaster_master.enabled ) || azerite.blaster_master.enabled & talent.flame_on.enabled & action.pyroblast.in_flight & buff.heating_up.down & buff.hot_streak.down )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [8]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "fire_blast",
								["criteria"] = "azerite.blaster_master.enabled & ( essence.memory_of_lucid_dreams.major || ! essence.memory_of_lucid_dreams.minor ) & talent.meteor.enabled & talent.flame_on.enabled & buff.blaster_master.down & ( talent.rune_of_power.enabled & action.rune_of_power.executing & action.rune_of_power.execute_remains < 0.6 || ( variable.time_to_combustion <= 0 || buff.combustion.up ) & ! talent.rune_of_power.enabled & ! action.pyroblast.in_flight & ! action.fireball.in_flight )",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [10]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "( ( action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5 ) || action.meteor.in_flight || essence.memory_of_lucid_dreams.major || buff.hot_streak.react || action.scorch.executing & action.scorch.execute_remains < 0.5 || action.pyroblast.executing & action.pyroblast.execute_remains < 0.5 ) & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["use_off_gcd"] = 1,
								["action"] = "combustion",
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 2 ) || active_enemies > 6 ) & buff.hot_streak.react & ! azerite.blaster_master.enabled",
								["action"] = "flamestrike",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & buff.combustion.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [19]
							{
								["action"] = "phoenix_flames",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & buff.combustion.up || buff.combustion.down & cooldown.combustion.remains < cast_time",
								["action"] = "scorch",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & buff.combustion.up",
								["action"] = "dragons_breath",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [24]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( variable.time_to_combustion > cooldown.living_bomb.duration || variable.time_to_combustion <= 0 )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || ( buff.rune_of_power.up || cooldown.rune_of_power.remains > time_to_die & action.rune_of_power.charges < 1 || ! talent.rune_of_power.enabled ) & ( cooldown.meteor.duration < variable.time_to_combustion || time_to_die < variable.time_to_combustion )",
								["action"] = "meteor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( buff.combustion.down & ! buff.hot_streak.react || buff.combustion.up & action.fire_blast.charges < action.fire_blast.max_charges & ! buff.hot_streak.react )",
								["action"] = "dragons_breath",
							}, -- [3]
						},
						["items_high_priority"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.time_to_combustion <= 0",
								["list_name"] = "items_combustion",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.azsharas_font_of_power & variable.time_to_combustion < 8",
								["name"] = "manifesto_of_madness",
								["action"] = "manifesto_of_madness",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 5 + 15 * variable.font_double_on_use",
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "rotcrusted_voodoo_doll",
								["action"] = "rotcrusted_voodoo_doll",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "aquipotent_nautilus",
								["action"] = "aquipotent_nautilus",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "shiver_venom_relic",
								["action"] = "shiver_venom_relic",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "forbidden_obsidian_claw",
								["action"] = "forbidden_obsidian_claw",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "harmonic_dematerializer",
								["effect_name"] = "harmonic_dematerializer",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion >= 55 & buff.combustion.down & variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "malformed_heralds_legwraps",
								["action"] = "malformed_heralds_legwraps",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion >= 55 & buff.combustion.down & variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "ancient_knot_of_wisdom",
								["action"] = "ancient_knot_of_wisdom",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion >= 45 & buff.combustion.down & variable.time_to_combustion > variable.on_use_cutoff",
								["name"] = "neural_synapse_enhancer",
								["action"] = "neural_synapse_enhancer",
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.firestarter.enabled * firestarter.remains + ( cooldown.combustion.remains * ( 1 - variable.kindling_reduction * talent.kindling.enabled ) - action.rune_of_power.execute_time * talent.rune_of_power.enabled ) * ! cooldown.combustion.ready * buff.combustion.down",
								["var_name"] = "time_to_combustion",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "max",
								["action"] = "variable",
								["value"] = "cooldown.memory_of_lucid_dreams.remains",
								["var_name"] = "time_to_combustion",
								["criteria"] = "essence.memory_of_lucid_dreams.major & buff.memory_of_lucid_dreams.down & cooldown.memory_of_lucid_dreams.remains - variable.time_to_combustion <= variable.hold_combustion_threshold",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "max",
								["action"] = "variable",
								["value"] = "cooldown.worldvein_resonance.remains",
								["var_name"] = "time_to_combustion",
								["criteria"] = "essence.worldvein_resonance.major & buff.worldvein_resonance.down & cooldown.worldvein_resonance.remains - variable.time_to_combustion <= variable.hold_combustion_threshold",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "items_high_priority",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "mirror_image",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( variable.time_to_combustion < 10 || time_to_die < variable.time_to_combustion )",
								["action"] = "guardian_of_azeroth",
							}, -- [7]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.combustion.down & ( variable.time_to_combustion > full_recharge_time || variable.time_to_combustion > target.time_to_die )",
								["action"] = "rune_of_power",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.time_to_combustion <= 0",
								["list_name"] = "combustion_phase",
							}, -- [15]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "( essence.memory_of_lucid_dreams.major || essence.memory_of_lucid_dreams.minor & azerite.blaster_master.enabled ) & charges = max_charges & ! buff.hot_streak.react & ! ( buff.heating_up.react & ( buff.combustion.up & ( action.fireball.in_flight || action.pyroblast.in_flight || action.scorch.executing ) || target.health.pct <= 30 & action.scorch.executing ) ) & ! ( ! buff.heating_up.react & ! buff.hot_streak.react & buff.combustion.down & ( action.fireball.in_flight || action.pyroblast.in_flight ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.fire_blast.full_recharge_time & ( variable.time_to_combustion > action.rune_of_power.full_recharge_time ) & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || variable.time_to_combustion < action.fire_blast.full_recharge_time & variable.time_to_combustion < time_to_die",
								["var_name"] = "fire_blast_pooling",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.rune_of_power.up & ( variable.time_to_combustion > 0 )",
								["list_name"] = "rop_phase",
							}, -- [18]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.phoenix_flames.full_recharge_time & ( variable.time_to_combustion > action.rune_of_power.full_recharge_time ) & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || variable.time_to_combustion < action.phoenix_flames.full_recharge_time & variable.time_to_combustion < time_to_die",
								["var_name"] = "phoenix_pooling",
							}, -- [19]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "( ! variable.fire_blast_pooling || buff.rune_of_power.up ) & ( variable.time_to_combustion > 0 ) & ( active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike ) ) & ! firestarter.active & buff.hot_streak.down & ( ! azerite.blaster_master.enabled || buff.blaster_master.remains < 0.5 )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [20]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "firestarter.active & charges >= 1 & ( ! variable.fire_blast_pooling || buff.rune_of_power.up ) & ( ! azerite.blaster_master.enabled || buff.blaster_master.remains < 0.5 ) & ( ! action.fireball.executing & ! action.pyroblast.in_flight & buff.heating_up.up || action.fireball.executing & buff.hot_streak.down || action.pyroblast.in_flight & buff.heating_up.down & buff.hot_streak.down )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.time_to_combustion > 0",
								["list_name"] = "standard_rotation",
							}, -- [22]
						},
						["items_combustion"] = {
							{
								["enabled"] = true,
								["name"] = "ignition_mages_fuse",
								["action"] = "ignition_mages_fuse",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.up & action.fire_blast.charges = 0 & action.fire_blast.recharge_time > gcd.max",
								["name"] = "hyperthread_wristwraps",
								["action"] = "hyperthread_wristwraps",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "manifesto_of_madness",
								["action"] = "manifesto_of_madness",
							}, -- [3]
							{
								["buff_name"] = "manifesto_of_madness_chapter_one",
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["action"] = "cancel_buff",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azurethos_singed_plumage",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "azurethos_singed_plumage",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["effect_name"] = "gladiators_badge",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "gladiators_medallion",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["effect_name"] = "gladiators_medallion",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "balefire_branch",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "balefire_branch",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "shockbiters_fang",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "shockbiters_fang",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "tzanes_barkspines",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "tzanes_barkspines",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "ancient_knot_of_wisdom",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "ancient_knot_of_wisdom",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "neural_synapse_enhancer",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "neural_synapse_enhancer",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "malformed_heralds_legwraps",
								["use_off_gcd"] = 1,
								["criteria"] = "buff.combustion.up || action.meteor.in_flight & action.meteor.in_flight_remains <= 0.5",
								["action"] = "malformed_heralds_legwraps",
							}, -- [13]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.manifesto_of_madness || equipped.gladiators_badge || equipped.gladiators_medallion || equipped.ignition_mages_fuse || equipped.tzanes_barkspines || equipped.azurethos_singed_plumage || equipped.ancient_knot_of_wisdom || equipped.shockbiters_fang || equipped.neural_synapse_enhancer || equipped.balefire_branch",
								["var_name"] = "combustion_on_use",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.azsharas_font_of_power & variable.combustion_on_use",
								["var_name"] = "font_double_on_use",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "20 * ( variable.combustion_on_use & ! variable.font_double_on_use ) + 40 * ( variable.font_double_on_use ) + 25 * ( equipped.azsharas_font_of_power & ! variable.font_double_on_use ) + 8 * ( equipped.manifesto_of_madness & ! variable.font_double_on_use )",
								["var_name"] = "on_use_cutoff",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "hold_combustion_threshold",
								["default"] = "20",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2 * talent.flame_patch.enabled + 99 * ! talent.flame_patch.enabled",
								["var_name"] = "hot_streak_flamestrike",
								["criteria"] = "variable.hot_streak_flamestrike = 0",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "3 * talent.flame_patch.enabled + 99 * ! talent.flame_patch.enabled",
								["var_name"] = "hard_cast_flamestrike",
								["criteria"] = "variable.hard_cast_flamestrike = 0",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "delay_flamestrike",
								["default"] = "25",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "kindling_reduction",
								["default"] = "0.2",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [10]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [13]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies >= variable.hot_streak_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike ) ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.hot_streak.remains < action.fireball.execute_time",
								["action"] = "pyroblast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || firestarter.active || action.pyroblast.in_flight || moving )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "charges >= 3 & active_enemies > 2 & ! variable.phoenix_pooling",
								["action"] = "phoenix_flames",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( target.health.pct <= 30 & talent.searing_touch.enabled || spell_crit >= 1 )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "( buff.rune_of_power.down & ! firestarter.active ) & ! variable.fire_blast_pooling & ( ( ( action.fireball.executing || action.pyroblast.executing ) & buff.heating_up.react ) || ( ( talent.searing_touch.enabled & target.health.pct <= 30 || spell_crit >= 1 ) & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! action.pyroblast.in_flight & ! action.fireball.in_flight ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heating_up.react || ( ! buff.hot_streak.react & ( action.fire_blast.charges > 0 || talent.searing_touch.enabled & target.health.pct <= 30 || spell_crit >= 1 ) ) ) & ! variable.phoenix_pooling",
								["action"] = "phoenix_flames",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "items_low_priority",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled || spell_crit >= 1",
								["action"] = "scorch",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike )",
								["action"] = "flamestrike",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [15]
						},
						["rop_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies >= variable.hot_streak_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike || variable.disable_combustion ) ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [2]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! ( active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike || variable.disable_combustion ) ) & ! firestarter.active & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( action.phoenix_flames.charges >= 1 & talent.phoenix_flames.enabled ) || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || ( talent.searing_touch.enabled & target.health.pct <= 30 || spell_crit >= 1 ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & buff.rune_of_power.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! ( active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike || variable.disable_combustion ) ) & ! firestarter.active & ( buff.heating_up.react & spell_crit < 1 & ( target.health.pct >= 30 || ! talent.searing_touch.enabled ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! ( active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike || variable.disable_combustion ) ) & ! firestarter.active & ( talent.searing_touch.enabled & target.health.pct <= 30 || spell_crit >= 1 ) & ( buff.heating_up.react & ! action.scorch.executing || ! buff.heating_up.react & ! buff.hot_streak.react )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.phoenix_flames & buff.heating_up.react",
								["action"] = "phoenix_flames",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled || spell_crit >= 1",
								["action"] = "scorch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies >= variable.hard_cast_flamestrike & ( time - buff.combustion.last_expire > variable.delay_flamestrike || variable.disable_combustion ) )",
								["action"] = "flamestrike",
							}, -- [11]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [12]
						},
					},
					["version"] = 20200614,
					["warnings"] = "Imported 9 action lists.\n",
					["spec"] = 63,
					["profile"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.\n# - Update logic re: Lucid Dreams.\n# - Loosen cast requirements for Combustion (i.e., don't hold it for a fresh Meteor cast).\n# - Disable an entry that would result in a hardcast Pyroblast in-game.\n# - Enable strict checking on a few forks in the APL to reduce workload.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/variable,name=combustion_on_use,op=set,value=equipped.manifesto_of_madness||equipped.gladiators_badge||equipped.gladiators_medallion||equipped.ignition_mages_fuse||equipped.tzanes_barkspines||equipped.azurethos_singed_plumage||equipped.ancient_knot_of_wisdom||equipped.shockbiters_fang||equipped.neural_synapse_enhancer||equipped.balefire_branch\nactions.precombat+=/variable,name=font_double_on_use,op=set,value=equipped.azsharas_font_of_power&variable.combustion_on_use\n# Items that are used outside of Combustion are not used after this time if they would put a trinket used with Combustion on a sharded cooldown.\nactions.precombat+=/variable,name=on_use_cutoff,op=set,value=20*(variable.combustion_on_use&!variable.font_double_on_use)+40*(variable.font_double_on_use)+25*(equipped.azsharas_font_of_power&!variable.font_double_on_use)+8*(equipped.manifesto_of_madness&!variable.font_double_on_use)\n# Combustion is only used without Worldvein Resonance or Memory of Lucid Dreams if it will be available at least this many seconds before the essence's cooldown is ready.\nactions.precombat+=/variable,name=hold_combustion_threshold,op=reset,default=20\n# This variable specifies the number of targets at which Hot Streak Flamestrikes outside of Combustion should be used.\nactions.precombat+=/variable,name=hot_streak_flamestrike,op=set,if=variable.hot_streak_flamestrike=0,value=2*talent.flame_patch.enabled+99*!talent.flame_patch.enabled\n# This variable specifies the number of targets at which Hard Cast Flamestrikes outside of Combustion should be used as filler.\nactions.precombat+=/variable,name=hard_cast_flamestrike,op=set,if=variable.hard_cast_flamestrike=0,value=3*talent.flame_patch.enabled+99*!talent.flame_patch.enabled\n# Using Flamestrike after Combustion is over can cause a significant amount of damage to be lost due to the overwriting of Ignite that occurs when the Ignite from your primary Combustion target spreads. This variable is used to specify the amount of time in seconds that must pass after Combustion expires before Flamestrikes will be used normally.\nactions.precombat+=/variable,name=delay_flamestrike,default=25,op=reset\n# With Kindling, Combustion's cooldown will be reduced by a random amount, but the number of crits starts very high after activating Combustion and slows down towards the end of Combustion's cooldown. When making decisions in the APL, Combustion's remaining cooldown is reduced by this fraction to account for Kindling.\nactions.precombat+=/variable,name=kindling_reduction,default=0.2,op=reset\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/variable,name=time_to_combustion,op=set,value=talent.firestarter.enabled*firestarter.remains+(cooldown.combustion.remains*(1-variable.kindling_reduction*talent.kindling.enabled)-action.rune_of_power.execute_time*talent.rune_of_power.enabled)*!cooldown.combustion.ready*buff.combustion.down\nactions+=/variable,name=time_to_combustion,op=max,value=cooldown.memory_of_lucid_dreams.remains,if=essence.memory_of_lucid_dreams.major&buff.memory_of_lucid_dreams.down&cooldown.memory_of_lucid_dreams.remains-variable.time_to_combustion<=variable.hold_combustion_threshold\nactions+=/variable,name=time_to_combustion,op=max,value=cooldown.worldvein_resonance.remains,if=essence.worldvein_resonance.major&buff.worldvein_resonance.down&cooldown.worldvein_resonance.remains-variable.time_to_combustion<=variable.hold_combustion_threshold\nactions+=/call_action_list,name=items_high_priority\nactions+=/mirror_image,if=buff.combustion.down\nactions+=/guardian_of_azeroth,if=(variable.time_to_combustion<10||time_to_die<variable.time_to_combustion)\nactions+=/concentrated_flame\nactions+=/reaping_flames\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/ripple_in_space\nactions+=/the_unbound_force\nactions+=/rune_of_power,if=buff.rune_of_power.down&buff.combustion.down&(variable.time_to_combustion>full_recharge_time||variable.time_to_combustion>target.time_to_die)\nactions+=/call_action_list,name=combustion_phase,if=variable.time_to_combustion<=0\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(essence.memory_of_lucid_dreams.major||essence.memory_of_lucid_dreams.minor&azerite.blaster_master.enabled)&charges=max_charges&!buff.hot_streak.react&!(buff.heating_up.react&(buff.combustion.up&(action.fireball.in_flight||action.pyroblast.in_flight||action.scorch.executing)||target.health.pct<=30&action.scorch.executing))&!(!buff.heating_up.react&!buff.hot_streak.react&buff.combustion.down&(action.fireball.in_flight||action.pyroblast.in_flight))\nactions+=/variable,name=fire_blast_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.fire_blast.full_recharge_time&(variable.time_to_combustion>action.rune_of_power.full_recharge_time)&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||variable.time_to_combustion<action.fire_blast.full_recharge_time&variable.time_to_combustion<time_to_die\nactions+=/call_action_list,name=rop_phase,strict=1,if=buff.rune_of_power.up&(variable.time_to_combustion>0)\nactions+=/variable,name=phoenix_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.phoenix_flames.full_recharge_time&(variable.time_to_combustion>action.rune_of_power.full_recharge_time)&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||variable.time_to_combustion<action.phoenix_flames.full_recharge_time&variable.time_to_combustion<time_to_die\n# When Hardcasting Flame Strike, Fire Blasts should be used to generate Hot Streaks and to extend Blaster Master.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(!variable.fire_blast_pooling||buff.rune_of_power.up)&(variable.time_to_combustion>0)&(active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike))&!firestarter.active&buff.hot_streak.down&(!azerite.blaster_master.enabled||buff.blaster_master.remains<0.5)\n# During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Blaster Master, they should be spread out to maintain the Blaster Master buff.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=firestarter.active&charges>=1&(!variable.fire_blast_pooling||buff.rune_of_power.up)&(!azerite.blaster_master.enabled||buff.blaster_master.remains<0.5)&(!action.fireball.executing&!action.pyroblast.in_flight&buff.heating_up.up||action.fireball.executing&buff.hot_streak.down||action.pyroblast.in_flight&buff.heating_up.down&buff.hot_streak.down)\nactions+=/call_action_list,name=standard_rotation,strict=1,if=variable.time_to_combustion>0\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(variable.time_to_combustion>cooldown.living_bomb.duration||variable.time_to_combustion<=0)\nactions.active_talents+=/meteor,if=variable.time_to_combustion<=0||(buff.rune_of_power.up||cooldown.rune_of_power.remains>time_to_die&action.rune_of_power.charges<1||!talent.rune_of_power.enabled)&(cooldown.meteor.duration<variable.time_to_combustion||time_to_die<variable.time_to_combustion)\nactions.active_talents+=/dragons_breath,if=talent.alexstraszas_fury.enabled&(buff.combustion.down&!buff.hot_streak.react||buff.combustion.up&action.fire_blast.charges<action.fire_blast.max_charges&!buff.hot_streak.react)\n\n# Combustion phase prepares abilities with a delay, then launches into the Combustion sequence\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/bag_of_tricks,if=buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=active_enemies>1&buff.combustion.down\nactions.combustion_phase+=/blood_of_the_enemy\nactions.combustion_phase+=/memory_of_lucid_dreams\nactions.combustion_phase+=/worldvein_resonance\n# During Combustion, Fire Blasts are used to generate Hot Streaks and minimize the amount of time spent executing other spells. For standard Fire, Fire Blasts are only used when Heating Up is active or when a Scorch cast is in progress and Heating Up and Hot Streak are not active. With Blaster Master and Flame On, Fire Blasts can additionally be used while Hot Streak and Heating Up are not active and a Pyroblast is in the air and also while casting Scorch even if Heating Up is already active. The latter allows two Hot Streak Pyroblasts to be cast in succession after the Scorch. Additionally with Blaster Master and Flame On, Fire Blasts should not be used unless Blaster Master is about to expire or there are more than enough Fire Blasts to extend Blaster Master to the end of Combustion.\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=charges>=1&((action.fire_blast.charges_fractional+(buff.combustion.remains-buff.blaster_master.duration)%cooldown.fire_blast.duration-(buff.combustion.remains)%(buff.blaster_master.duration-0.5))>=0||!azerite.blaster_master.enabled||!talent.flame_on.enabled||buff.combustion.remains<=buff.blaster_master.duration||buff.blaster_master.remains<0.5||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.remains<5)&buff.combustion.up&(!action.scorch.executing&!action.pyroblast.in_flight&buff.heating_up.up||action.scorch.executing&buff.hot_streak.down&(buff.heating_up.down||azerite.blaster_master.enabled)||azerite.blaster_master.enabled&talent.flame_on.enabled&action.pyroblast.in_flight&buff.heating_up.down&buff.hot_streak.down)\nactions.combustion_phase+=/rune_of_power,if=buff.rune_of_power.down&buff.combustion.down\n# A Fire Blast should be used to apply Blaster Master while casting Rune of Power when using Blaster Master, Flame On, and Meteor. If only Memory of Lucid Dreams Minor is equipped, this line is ignored because it will sometimes result in going into Combustion with few Fire Blast charges.\nactions.combustion_phase+=/fire_blast,use_while_casting=1,if=azerite.blaster_master.enabled&(essence.memory_of_lucid_dreams.major||!essence.memory_of_lucid_dreams.minor)&talent.meteor.enabled&talent.flame_on.enabled&buff.blaster_master.down&(talent.rune_of_power.enabled&action.rune_of_power.executing&action.rune_of_power.execute_remains<0.6||(variable.time_to_combustion<=0||buff.combustion.up)&!talent.rune_of_power.enabled&!action.pyroblast.in_flight&!action.fireball.in_flight)\nactions.combustion_phase+=/call_action_list,name=active_talents\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=((action.meteor.in_flight&action.meteor.in_flight_remains<=0.5)||action.meteor.in_flight||essence.memory_of_lucid_dreams.major||buff.hot_streak.react||action.scorch.executing&action.scorch.execute_remains<0.5||action.pyroblast.executing&action.pyroblast.execute_remains<0.5)&(buff.rune_of_power.up||!talent.rune_of_power.enabled)\nactions.combustion_phase+=/potion\nactions.combustion_phase+=/blood_fury\nactions.combustion_phase+=/berserking\nactions.combustion_phase+=/fireblood\nactions.combustion_phase+=/ancestral_call\nactions.combustion_phase+=/flamestrike,if=((talent.flame_patch.enabled&active_enemies>2)||active_enemies>6)&buff.hot_streak.react&!azerite.blaster_master.enabled\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.combustion.remains>cast_time\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react\n# Commenting this entry out; it's relying on a reaction time delay when you know your Scorch will crit and you had Heating Up when you cast Scorch.\n# In-game, this is handled more naturally.\n# actions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up\nactions.combustion_phase+=/phoenix_flames\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time&buff.combustion.up||buff.combustion.down&cooldown.combustion.remains<cast_time\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/dragons_breath,if=buff.combustion.remains<gcd.max&buff.combustion.up\nactions.combustion_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\n\nactions.items_combustion=use_item,name=ignition_mages_fuse\nactions.items_combustion+=/use_item,name=hyperthread_wristwraps,if=buff.combustion.up&action.fire_blast.charges=0&action.fire_blast.recharge_time>gcd.max\nactions.items_combustion+=/use_item,name=manifesto_of_madness\nactions.items_combustion+=/cancel_buff,use_off_gcd=1,name=manifesto_of_madness_chapter_one,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=azurethos_singed_plumage,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,effect_name=gladiators_badge,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,effect_name=gladiators_medallion,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=balefire_branch,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=shockbiters_fang,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=tzanes_barkspines,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=ancient_knot_of_wisdom,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=neural_synapse_enhancer,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\nactions.items_combustion+=/use_item,use_off_gcd=1,name=malformed_heralds_legwraps,if=buff.combustion.up||action.meteor.in_flight&action.meteor.in_flight_remains<=0.5\n\nactions.items_high_priority=call_action_list,name=items_combustion,if=variable.time_to_combustion<=0\nactions.items_high_priority+=/use_items\nactions.items_high_priority+=/use_item,name=manifesto_of_madness,if=!equipped.azsharas_font_of_power&variable.time_to_combustion<8\nactions.items_high_priority+=/use_item,name=azsharas_font_of_power,if=variable.time_to_combustion<=5+15*variable.font_double_on_use\nactions.items_high_priority+=/use_item,name=rotcrusted_voodoo_doll,if=variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,name=aquipotent_nautilus,if=variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,name=shiver_venom_relic,if=variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,name=forbidden_obsidian_claw,if=variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,effect_name=harmonic_dematerializer\nactions.items_high_priority+=/use_item,name=malformed_heralds_legwraps,if=variable.time_to_combustion>=55&buff.combustion.down&variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,name=ancient_knot_of_wisdom,if=variable.time_to_combustion>=55&buff.combustion.down&variable.time_to_combustion>variable.on_use_cutoff\nactions.items_high_priority+=/use_item,name=neural_synapse_enhancer,if=variable.time_to_combustion>=45&buff.combustion.down&variable.time_to_combustion>variable.on_use_cutoff\n\nactions.items_low_priority=use_item,name=tidestorm_codex,if=variable.time_to_combustion>variable.on_use_cutoff\nactions.items_low_priority+=/use_item,effect_name=cyclotronic_blast,if=variable.time_to_combustion>variable.on_use_cutoff\n\nactions.rop_phase=flamestrike,if=(active_enemies>=variable.hot_streak_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))&buff.hot_streak.react\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!(active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))&!firestarter.active&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(action.phoenix_flames.charges>=1&talent.phoenix_flames.enabled)||(talent.alexstraszas_fury.enabled&cooldown.dragons_breath.ready)||(talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)))\nactions.rop_phase+=/call_action_list,name=active_talents\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&buff.rune_of_power.remains>cast_time\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!(active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))&!firestarter.active&(buff.heating_up.react&spell_crit<1&(target.health.pct>=30||!talent.searing_touch.enabled))\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!(active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))&!firestarter.active&(talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)&(buff.heating_up.react&!action.scorch.executing||!buff.heating_up.react&!buff.hot_streak.react)\n# actions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&(talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)&!(active_enemies>=variable.hot_streak_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))\nactions.rop_phase+=/phoenix_flames,if=!prev_gcd.1.phoenix_flames&buff.heating_up.react\nactions.rop_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled||spell_crit>=1\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/flamestrike,if=(active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=(active_enemies>=variable.hot_streak_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike))&buff.hot_streak.react\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&buff.hot_streak.remains<action.fireball.execute_time\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||firestarter.active||action.pyroblast.in_flight||moving)\nactions.standard_rotation+=/phoenix_flames,if=charges>=3&active_enemies>2&!variable.phoenix_pooling\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(target.health.pct<=30&talent.searing_touch.enabled||spell_crit>=1)\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(buff.rune_of_power.down&!firestarter.active)&!variable.fire_blast_pooling&(((action.fireball.executing||action.pyroblast.executing)&buff.heating_up.react)||((talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!action.pyroblast.in_flight&!action.fireball.in_flight)))\n# actions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&(talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)&!(active_enemies>=variable.hot_streak_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike||variable.disable_combustion))\nactions.standard_rotation+=/phoenix_flames,if=(buff.heating_up.react||(!buff.hot_streak.react&(action.fire_blast.charges>0||talent.searing_touch.enabled&target.health.pct<=30||spell_crit>=1)))&!variable.phoenix_pooling\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/call_action_list,name=items_low_priority\nactions.standard_rotation+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled||spell_crit>=1\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&(time-buff.combustion.last_expire>variable.delay_flamestrike)\nactions.standard_rotation+=/fireball\nactions.standard_rotation+=/scorch",
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200525,
					["spec"] = 62,
					["desc"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# May 25, 2020\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (time_to_die) so that we don't excessively burn on trash if we don't want to.\n# - Update potion logic.",
					["lists"] = {
						["conserve"] = {
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0",
								["action"] = "charged_up",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 2 & ( cooldown.arcane_power.remains > 10 || active_enemies <= 2 )",
								["action"] = "arcane_orb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & buff.arcane_charge.stack > 3",
								["action"] = "arcane_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
								["criteria"] = "buff.rune_of_power.down & ! buff.arcane_power.react & cooldown.arcane_power.remains > 20",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "buff.rune_of_power.down & ! buff.arcane_power.react & cooldown.arcane_power.remains > 20",
								["effect_name"] = "cyclotronic_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( full_recharge_time <= execute_time || full_recharge_time <= cooldown.arcane_power.remains || time_to_die <= cooldown.arcane_power.remains )",
								["action"] = "rune_of_power",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct <= 95 & buff.clearcasting.react & active_enemies < 3",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.arcane_charge.stack = buff.arcane_charge.max_stack ) & ( ( mana.pct <= variable.conserve_mana ) || ( talent.rune_of_power.enabled & cooldown.arcane_power.remains > cooldown.rune_of_power.full_recharge_time & mana.pct <= variable.conserve_mana + 25 ) ) || ( talent.arcane_orb.enabled & cooldown.arcane_orb.remains <= gcd & cooldown.arcane_power.remains > 10 ) ) || mana.pct <= ( variable.conserve_mana - 10 )",
								["action"] = "arcane_barrage",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct <= 95",
								["action"] = "supernova",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( mana.pct >= variable.conserve_mana || buff.arcane_charge.stack = 3 )",
								["action"] = "arcane_explosion",
							}, -- [12]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [14]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spellsteal",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "remove_curse",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down & ( cooldown.arcane_power.remains <= 4 + 10 * variable.font_double_on_use & cooldown.evocation.remains <= variable.average_burn_length + 4 + 10 * variable.font_double_on_use || time_to_die < cooldown.arcane_power.remains )",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "burn_phase || ( time_to_die < average_burn_length )",
								["action"] = "call_action_list",
								["list_name"] = "burn",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.arcane_power.remains = 0 & cooldown.evocation.remains <= average_burn_length & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack || ( talent.charged_up.enabled & cooldown.charged_up.remains = 0 & buff.arcane_charge.stack <= 1 ) ) )",
								["action"] = "call_action_list",
								["list_name"] = "burn",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! burn_phase",
								["action"] = "call_action_list",
								["list_name"] = "conserve",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [9]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "summon_arcane_familiar",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "60 + 20 * azerite.equipoise.enabled",
								["var_name"] = "conserve_mana",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.azsharas_font_of_power & ( equipped.manifesto_of_madness || equipped.gladiators_badge || equipped.gladiators_medallion || equipped.ignition_mages_fuse || equipped.tzanes_barkspines || equipped.azurethos_singed_plumage || equipped.ancient_knot_of_wisdom || equipped.shockbiters_fang || equipped.neural_synapse_enhancer || equipped.balefire_branch )",
								["var_name"] = "font_double_on_use",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "12",
								["criteria"] = "variable.font_double_on_use & variable.font_of_power_precombat_channel = 0",
								["var_name"] = "font_of_power_precombat_channel",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [9]
						},
						["burn"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 1",
								["action"] = "charged_up",
							}, -- [1]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & talent.overpowered.enabled & active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.down",
								["action"] = "bag_of_tricks",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.arcane_power.up & ( mana.pct >= 50 || cooldown.arcane_power.remains = 0 ) & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "rune_of_power",
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_power",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up || time_to_die < cooldown.arcane_power.remains",
								["action"] = "use_items",
							}, -- [10]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( talent.rune_of_power.enabled & buff.rune_of_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time ) || buff.arcane_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time",
								["action"] = "presence_of_mind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up & ( ( ! essence.condensed_lifeforce.major || essence.condensed_lifeforce.rank < 2 ) & ( buff.berserking.up || buff.blood_fury.up || ! ( race.troll || race.orc ) ) || buff.guardian_of_azeroth.up ) || time_to_die < cooldown.arcane_power.remains",
								["action"] = "potion",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0 || ( active_enemies < 3 || ( active_enemies < 2 & talent.resonance.enabled ) )",
								["action"] = "arcane_orb",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "arcane_barrage",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "arcane_explosion",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & active_enemies < 3 & ( talent.amplification.enabled || ( ! talent.overpowered.enabled & azerite.arcane_pummeling.rank >= 2 ) || buff.arcane_power.down )",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [20]
							{
								["interrupt_if"] = "mana.pct>=85",
								["interrupt_immediate"] = "1",
								["action"] = "evocation",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [22]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [2]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_missiles",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "arcane_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "supernova",
								["enabled"] = true,
							}, -- [6]
						},
						["essences"] = {
							{
								["enabled"] = true,
								["criteria"] = "burn_phase & buff.arcane_power.down & buff.rune_of_power.down & buff.arcane_charge.stack = buff.arcane_charge.max_stack || time_to_die < cooldown.arcane_power.remains",
								["action"] = "blood_of_the_enemy",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "concentrated_flame",
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down & ( ! burn_phase || time_to_die < cooldown.arcane_power.remains ) & mana.time_to_max >= execute_time",
								["line_cd"] = "6",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down & ( ! burn_phase || time_to_die < cooldown.arcane_power.remains ) & mana.time_to_max >= execute_time",
								["action"] = "reaping_flames",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "focused_azerite_beam",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "guardian_of_azeroth",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "purifying_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "ripple_in_space",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "the_unbound_force",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! burn_phase & buff.arcane_power.down & cooldown.arcane_power.remains & buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( ! talent.rune_of_power.enabled || action.rune_of_power.charges ) || time_to_die < cooldown.arcane_power.remains",
								["action"] = "memory_of_lucid_dreams",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "burn_phase & buff.arcane_power.down & buff.rune_of_power.down & buff.arcane_charge.stack = buff.arcane_charge.max_stack || time_to_die < cooldown.arcane_power.remains",
								["action"] = "worldvein_resonance",
							}, -- [10]
						},
					},
					["version"] = 20200525,
					["warnings"] = "Imported 6 action lists.\n",
					["profile"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# May 25, 2020\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (time_to_die) so that we don't excessively burn on trash if we don't want to.\n# - Update potion logic.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/arcane_familiar\n# conserve_mana is the mana percentage we want to go down to during conserve. It needs to leave enough room to worst case scenario spam AB only during AP.\nactions.precombat+=/variable,name=conserve_mana,op=set,value=60+20*azerite.equipoise.enabled\nactions.precombat+=/variable,name=font_double_on_use,op=set,value=equipped.azsharas_font_of_power&(equipped.manifesto_of_madness||equipped.gladiators_badge||equipped.gladiators_medallion||equipped.ignition_mages_fuse||equipped.tzanes_barkspines||equipped.azurethos_singed_plumage||equipped.ancient_knot_of_wisdom||equipped.shockbiters_fang||equipped.neural_synapse_enhancer||equipped.balefire_branch)\nactions.precombat+=/variable,name=font_of_power_precombat_channel,op=set,value=12,if=variable.font_double_on_use&variable.font_of_power_precombat_channel=0\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/arcane_blast\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/spellsteal\nactions+=/remove_curse\nactions+=/call_action_list,name=essences\nactions+=/use_item,name=azsharas_font_of_power,if=buff.rune_of_power.down&buff.arcane_power.down&(cooldown.arcane_power.remains<=4+10*variable.font_double_on_use&cooldown.evocation.remains<=variable.average_burn_length+4+10*variable.font_double_on_use||time_to_die<cooldown.arcane_power.remains)\n# Go to Burn Phase when already burning, or when boss will die soon.\nactions+=/call_action_list,name=burn,if=burn_phase||(time_to_die<average_burn_length)\n# Start Burn Phase when Arcane Power is ready and Evocation will be ready (on average) before the burn phase is over. Also make sure we got 4 Arcane Charges, or can get 4 Arcane Charges with Charged Up.\nactions+=/call_action_list,name=burn,if=(cooldown.arcane_power.remains=0&cooldown.evocation.remains<=average_burn_length&(buff.arcane_charge.stack=buff.arcane_charge.max_stack||(talent.charged_up.enabled&cooldown.charged_up.remains=0&buff.arcane_charge.stack<=1)))\nactions+=/call_action_list,name=conserve,if=!burn_phase\nactions+=/call_action_list,name=movement\n\n# Increment our burn phase counter. Whenever we enter the `burn` actions without being in a burn phase, it means that we are about to start one.\n# actions.burn=variable,name=total_burns,op=add,value=1,if=!burn_phase\n# actions.burn+=/start_burn_phase,if=!burn_phase\n# End the burn phase when we just evocated.\n# actions.burn+=/stop_burn_phase,if=burn_phase&prev_gcd.1.evocation&(time_to_die)>variable.average_burn_length&burn_phase_duration>0\n# Less than 1 instead of equals to 0, because of pre-cast Arcane Blast\nactions.burn+=/charged_up,if=buff.arcane_charge.stack<=1\nactions.burn+=/mirror_image\nactions.burn+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\n# When running Overpowered, and we got a Rule of Threes proc (AKA we got our 4th Arcane Charge via Charged Up), use it before using RoP+AP, because the mana reduction is otherwise largely wasted since the AB was free anyway.\nactions.burn+=/arcane_blast,if=buff.rule_of_threes.up&talent.overpowered.enabled&active_enemies<3\nactions.burn+=/lights_judgment,if=buff.arcane_power.down\nactions.burn+=/bag_of_tricks,if=buff.arcane_power.down\nactions.burn+=/rune_of_power,if=buff.rune_of_power.down&!buff.arcane_power.up&(mana.pct>=50||cooldown.arcane_power.remains=0)&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/berserking\nactions.burn+=/arcane_power\nactions.burn+=/use_items,if=buff.arcane_power.up||time_to_die<cooldown.arcane_power.remains\nactions.burn+=/blood_fury\nactions.burn+=/fireblood\nactions.burn+=/ancestral_call\nactions.burn+=/presence_of_mind,if=(talent.rune_of_power.enabled&buff.rune_of_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time)||buff.arcane_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time\nactions.burn+=/potion,if=buff.arcane_power.up&((!essence.condensed_lifeforce.major||essence.condensed_lifeforce.rank<2)&(buff.berserking.up||buff.blood_fury.up||!(race.troll||race.orc))||buff.guardian_of_azeroth.up)||time_to_die<cooldown.arcane_power.remains\nactions.burn+=/arcane_orb,if=buff.arcane_charge.stack=0||(active_enemies<3||(active_enemies<2&talent.resonance.enabled))\nactions.burn+=/arcane_barrage,if=active_enemies>=3&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/arcane_explosion,if=active_enemies>=3\n# Ignore Arcane Missiles during Arcane Power, aside from some very specific exceptions, like not having Overpowered talented & running 3x Arcane Pummeling.\nactions.burn+=/arcane_missiles,if=buff.clearcasting.react&active_enemies<3&(talent.amplification.enabled||(!talent.overpowered.enabled&azerite.arcane_pummeling.rank>=2)||buff.arcane_power.down),chain=1\nactions.burn+=/arcane_blast,if=active_enemies<3\n# Now that we're done burning, we can update the average_burn_length with the length of this burn.\n# actions.burn+=/variable,name=average_burn_length,op=set,value=(variable.average_burn_length*variable.total_burns-variable.average_burn_length+(burn_phase_duration))%variable.total_burns\nactions.burn+=/evocation,interrupt_if=mana.pct>=85,interrupt_immediate=1\n# For the rare occasion where we go oom before evocation is back up. (Usually because we get very bad rng so the burn is cut very short)\nactions.burn+=/arcane_barrage\n\nactions.conserve=mirror_image\nactions.conserve+=/charged_up,if=buff.arcane_charge.stack=0\nactions.conserve+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\nactions.conserve+=/arcane_orb,if=buff.arcane_charge.stack<=2&(cooldown.arcane_power.remains>10||active_enemies<=2)\n# Arcane Blast shifts up in priority when running rule of threes.\nactions.conserve+=/arcane_blast,if=buff.rule_of_threes.up&buff.arcane_charge.stack>3\nactions.conserve+=/use_item,name=tidestorm_codex,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20\nactions.conserve+=/use_item,effect_name=cyclotronic_blast,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20\nactions.conserve+=/rune_of_power,if=buff.rune_of_power.down&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(full_recharge_time<=execute_time||full_recharge_time<=cooldown.arcane_power.remains||target.time_to_die<=cooldown.arcane_power.remains)\nactions.conserve+=/arcane_missiles,if=mana.pct<=95&buff.clearcasting.react&active_enemies<3,chain=1\n# During conserve, we still just want to continue not dropping charges as long as possible.So keep 'burning' as long as possible (aka conserve_mana threshhold) and then swap to a 4x AB->Abarr conserve rotation. If we do not have 4 AC, we can dip slightly lower to get a 4th AC. We also sustain at a higher mana percentage when we plan to use a Rune of Power during conserve phase, so we can burn during the Rune of Power.\nactions.conserve+=/arcane_barrage,if=((buff.arcane_charge.stack=buff.arcane_charge.max_stack)&((mana.pct<=variable.conserve_mana)||(talent.rune_of_power.enabled&cooldown.arcane_power.remains>cooldown.rune_of_power.full_recharge_time&mana.pct<=variable.conserve_mana+25))||(talent.arcane_orb.enabled&cooldown.arcane_orb.remains<=gcd&cooldown.arcane_power.remains>10))||mana.pct<=(variable.conserve_mana-10)\n# Supernova is barely worth casting, which is why it is so far down, only just above AB. \nactions.conserve+=/supernova,if=mana.pct<=95\n# Keep 'burning' in aoe situations until conserve_mana pct. After that only cast AE with 3 Arcane charges, since it's almost equal mana cost to a 3 stack AB anyway. At that point AoE rotation will be AB x3->AE->Abarr\nactions.conserve+=/arcane_explosion,if=active_enemies>=3&(mana.pct>=variable.conserve_mana||buff.arcane_charge.stack=3)\nactions.conserve+=/arcane_blast\nactions.conserve+=/arcane_barrage\n\nactions.essences=blood_of_the_enemy,if=burn_phase&buff.arcane_power.down&buff.rune_of_power.down&buff.arcane_charge.stack=buff.arcane_charge.max_stack||time_to_die<cooldown.arcane_power.remains\nactions.essences+=/concentrated_flame,line_cd=6,if=buff.rune_of_power.down&buff.arcane_power.down&(!burn_phase||time_to_die<cooldown.arcane_power.remains)&mana.time_to_max>=execute_time\nactions.essences+=/reaping_flames,if=buff.rune_of_power.down&buff.arcane_power.down&(!burn_phase||time_to_die<cooldown.arcane_power.remains)&mana.time_to_max>=execute_time\nactions.essences+=/focused_azerite_beam,if=buff.rune_of_power.down&buff.arcane_power.down\nactions.essences+=/guardian_of_azeroth,if=buff.rune_of_power.down&buff.arcane_power.down\nactions.essences+=/purifying_blast,if=buff.rune_of_power.down&buff.arcane_power.down\nactions.essences+=/ripple_in_space,if=buff.rune_of_power.down&buff.arcane_power.down\nactions.essences+=/the_unbound_force,if=buff.rune_of_power.down&buff.arcane_power.down\nactions.essences+=/memory_of_lucid_dreams,if=!burn_phase&buff.arcane_power.down&cooldown.arcane_power.remains&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(!talent.rune_of_power.enabled||action.rune_of_power.charges)||time_to_die<cooldown.arcane_power.remains\nactions.essences+=/worldvein_resonance,if=burn_phase&buff.arcane_power.down&buff.rune_of_power.down&buff.arcane_charge.stack=buff.arcane_charge.max_stack||time_to_die<cooldown.arcane_power.remains\n\nactions.movement=shimmer,if=movement.distance>=10\nactions.movement+=/blink,if=movement.distance>=10\nactions.movement+=/presence_of_mind\nactions.movement+=/arcane_missiles\nactions.movement+=/arcane_orb\nactions.movement+=/supernova",
					["author"] = "SimulationCraft",
				},
			},
			["iconStore"] = {
				["minimapPos"] = 202.8336533994768,
			},
			["runOnce"] = {
				["resetRogueMfDOption_20200226"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enabledArcaneMageOnce_20190309"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
		},
		["Borsuczek - Aerie Peak"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[263] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Enhancement",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "superior_battle_potion_of_agility",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[262] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["funnel_damage"] = false,
						["stack_buffer"] = 1.1,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = true,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Elemental",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 8,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200124,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Don't use Earth Elemental (save it for utility).",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
						["maintenance"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [2]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 40",
								["action"] = "sundering",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 90 & ! buff.ascendance.up & ! buff.molten_weapon.up & ! buff.icy_edge.up & ! buff.crackling_surge.up & ! debuff.earthen_spike.up",
								["action"] = "focused_azerite_beam",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 60",
								["action"] = "ripple_in_space",
							}, -- [4]
							{
								["action"] = "thundercharge",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! azerite.primal_primer.enabled & talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || talent.forceful_winds.enabled ) & variable.OCPool_CL",
								["action"] = "crash_lightning",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_LL & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [15]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [18]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [19]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["freezerburn_core"] = {
							{
								["enabled"] = true,
								["action"] = "lava_lash",
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & variable.furyCheck_LL & variable.CLPool_LL",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "stormstrike",
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack > 7 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS & variable.CLPool_SS",
								["action"] = "stormstrike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.primal_primer.stack = 10 & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [9]
						},
						["precombat"] = {
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
						["priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= ( 8 - ( talent.forceful_winds.enabled * 3 ) ) & variable.freezerburn_enabled & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || time < 5",
								["action"] = "the_unbound_force",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & active_enemies = 1 & variable.freezerburn_enabled & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.flametongue.remains < gcd & active_enemies > 1",
								["action"] = "flametongue",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.frostbrand.remains < gcd & active_enemies > 1",
								["action"] = "frostbrand",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.fury_of_air.up & maelstrom >= 20 & spell_targets.fury_of_air_damage >= ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.fury_of_air.up & spell_targets.fury_of_air_damage < ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains <= 2 * gcd",
								["action"] = "totem_mastery",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( ! essence.blood_of_the_enemy.major || ( essence.blood_of_the_enemy.major & ( buff.seething_rage.up || cooldown.blood_of_the_enemy.remains > 40 ) ) )",
								["action"] = "sundering",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "focused_azerite_beam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "purifying_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "ripple_in_space",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_frost.remains <= 2 * gcd ) & talent.hailstorm.enabled & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_fire.remains <= 2 * gcd )",
								["action"] = "flametongue",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_nature.remains <= 2 * gcd ) & maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [17]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "berserking",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "blood_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "fireblood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "ancestral_call",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [8]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 90 || active_enemies > 1",
								["action"] = "blood_of_the_enemy",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || ( target.time_to_die < 20 & debuff.razor_coral_debuff.stack > 2 )",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.stack > 2 & debuff.conductive_ink_debuff.down & ( buff.ascendance.remains > 10 || buff.molten_weapon.remains > 10 || buff.crackling_surge.remains > 10 || buff.icy_edge.remains > 10 || debuff.earthen_spike.remains > 6 )",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "( debuff.conductive_ink_debuff.up || buff.ascendance.remains > 10 || buff.molten_weapon.remains > 10 || buff.crackling_surge.remains > 10 || buff.icy_edge.remains > 10 || debuff.earthen_spike.remains > 6 ) & target.health.pct < 31",
							}, -- [15]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [16]
						},
						["default_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "stormstrike",
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS",
								["action"] = "stormstrike",
							}, -- [6]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["var_name"] = "cooldown_sync",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.stormstrike.cost ) )",
								["var_name"] = "furyCheck_SS",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.lava_lash.cost ) )",
								["var_name"] = "furyCheck_LL",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.crash_lightning.cost ) )",
								["var_name"] = "furyCheck_CL",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.frostbrand.cost ) )",
								["var_name"] = "furyCheck_FB",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.earthen_spike.cost ) )",
								["var_name"] = "furyCheck_ES",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + 40 ) )",
								["var_name"] = "furyCheck_LB",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( active_enemies > 1 || ( cooldown.lightning_bolt.remains >= 2 * gcd ) )",
								["var_name"] = "OCPool",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.stormstrike.cost ) ) )",
								["var_name"] = "OCPool_SS",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.lava_lash.cost ) ) )",
								["var_name"] = "OCPool_LL",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.crash_lightning.cost ) ) )",
								["var_name"] = "OCPool_CL",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.frostbrand.cost ) ) )",
								["var_name"] = "OCPool_FB",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.lava_lash.cost )",
								["var_name"] = "CLPool_LL",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.stormstrike.cost )",
								["var_name"] = "CLPool_SS",
							}, -- [15]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.hot_hand.enabled & talent.hailstorm.enabled & azerite.primal_primer.enabled )",
								["var_name"] = "freezerburn_enabled",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! variable.freezerburn_enabled & ( talent.boulderfist.enabled & talent.landslide.enabled & azerite.strength_of_earth.enabled ) )",
								["var_name"] = "rockslide_enabled",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "call_action_list",
								["list_name"] = "asc",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "priority",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "maintenance",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled",
								["action"] = "call_action_list",
								["list_name"] = "freezerburn_core",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! variable.freezerburn_enabled",
								["action"] = "call_action_list",
								["list_name"] = "default_core",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "maintenance",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [26]
						},
					},
					["version"] = 20200124,
					["warnings"] = "Imported 10 action lists.\n",
					["spec"] = 263,
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Don't use Earth Elemental (save it for utility).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/worldvein_resonance\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/use_item,name=azsharas_font_of_power\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/guardian_of_azeroth\nactions.cds+=/feral_spirit\nactions.cds+=/blood_of_the_enemy,if=raid_event.adds.in>90||active_enemies>1\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||(target.time_to_die<20&debuff.razor_coral_debuff.stack>2)\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack>2&debuff.conductive_ink_debuff.down&(buff.ascendance.remains>10||buff.molten_weapon.remains>10||buff.crackling_surge.remains>10||buff.icy_edge.remains>10||debuff.earthen_spike.remains>6)\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=(debuff.conductive_ink_debuff.up||buff.ascendance.remains>10||buff.molten_weapon.remains>10||buff.crackling_surge.remains>10||buff.icy_edge.remains>10||debuff.earthen_spike.remains>6)&target.health.pct<31\nactions.cds+=/use_items\n# actions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering,if=raid_event.adds.in>40\nactions.filler+=/focused_azerite_beam,if=raid_event.adds.in>90&!buff.ascendance.up&!buff.molten_weapon.up&!buff.icy_edge.up&!buff.crackling_surge.up&!debuff.earthen_spike.up\nactions.filler+=/purifying_blast,if=raid_event.adds.in>60\nactions.filler+=/ripple_in_space,if=raid_event.adds.in>60\nactions.filler+=/thundercharge\nactions.filler+=/concentrated_flame\nactions.filler+=/reaping_flames\nactions.filler+=/bag_of_tricks\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||talent.forceful_winds.enabled)&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/memory_of_lucid_dreams\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,cycle_targets=1,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/the_unbound_force,if=buff.reckless_force.up||time<5\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3&(!essence.blood_of_the_enemy.major||(essence.blood_of_the_enemy.major&(buff.seething_rage.up||cooldown.blood_of_the_enemy.remains>40)))\nactions.priority+=/focused_azerite_beam,if=active_enemies>1\nactions.priority+=/purifying_blast,if=active_enemies>1\nactions.priority+=/ripple_in_space,if=active_enemies>1\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190810.2145,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 21:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n# - Integrate funneling into the APL (merges lists in current SimC).",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 21:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n# - Integrate funneling into the APL (merges lists in current SimC).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3\nactions.precombat+=/chain_lightning,if=spell_targets.chain_lightning>2\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/use_items\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>2&!funneling\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(fire_elemental.remains>(14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom>=(100-4*spell_targets.chain_lightning) || buff.master_of_the_elements.up || spell_targets.chain_lightning>3\nactions.aoe+=/earthquake,if=(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||buff.lava_surge.down||spell_targets.earthquake>=4)&(buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3)\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Default Action Priority List\n# We don't need to support 'variable.funneling' -- addon has 'funneling' internally, based on spec settings.\n# actions.single_target=variable,name=funneling,value=active_enemies>1&(spell_targets.chain_lightning<2||spell_targets.lava_beam<2)\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&storm_elemental.down))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony. But in this case stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n# Combine Stormkeeper with Master of the Elements or Surge of Power unless you have the Lava Shock trait and multiple stacks, unless funneling.\nactions.single_target+=/lightning_bolt,if=!funneling&buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n# Same, but when funneling, cast LB unless there are 6+ targets.\nactions.single_target+=/chain_lightning,if=funneling&buff.stormkeeper.up&(azerite.lava_shock.rank*buff.lava_shock.stack)<36&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n# If not funneling, use Earthquake versus 2 targets, unless you have Lava Shock. Use Earthquake versus 1 target if you have Tectonic Thunder 3 times and NO Surge of Power enabled and NO Lava Shock.\nactions.single_target+=/earthquake,if=!funneling&((spell_targets.chain_lightning>1||azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled))\n# Cast Earth Shock with Master of the Elements talent but no active Surge of Power buff, and active Stormkeeper buff and Lava Burst coming off CD within the next GCD, and either active Master of the Elements buff, or no available Lava Burst while near MS cap, or single target and multiple Lava Shock traits and many stacks.\nactions.single_target+=/earth_shock,if=!funneling&!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n# Same as previous, but without (re)checking CL targets while funneling.\nactions.single_target+=/earth_shock,if=funneling&!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||(azerite.lava_shock.rank*buff.lava_shock.stack<36)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n# Current Elemental APL won't use Lasso while funneling, so I'm respecting that here.\nactions.single_target+=/lightning_lasso\n# You know what? I had some short explanation here once. But then the condition grew, and I had to split the one Earth Shock line into four...so you have to deal with this abomination now: Cast Earth Shock without Master of the Elements talent, and without having triple Igneous Potential and active Ascendance, and active Stormkeeper buff or near MS cap, or Storm Elemental is inactive, and we can't expect to get an additional use of Storm Elemental in the remaining fight from Surge of Power.\nactions.single_target+=/earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be ready within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\nactions.single_target+=/lightning_lasso,if=dot.flame_shock.ticking||cooldown.flame_shock.remains\n# If not funneling, spam Lightning Bolts during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/lightning_bolt,if=!funneling&storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n# If not funneling, cast Lightning Bolt regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/lightning_bolt,if=!funneling&(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n# If funneling, spam Chain Lightning during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/chain_lightning,if=funneling&storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n# Cast Chain Lightning regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/chain_lightning,if=funneling&(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n# Use Lava Burst with Surge of Power if the last potential usage of Storm Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n# Use Lava Burst with Surge of Power if the last potential usage of Fire Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\n# Slightly game Icefury buff to hopefully buff some empowered Frost Shocks with Master of the Elements.\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\n# Slightly delay using Icefury empowered Frost Shocks to empower them with Master of the Elements too.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\nactions.single_target+=/lava_burst,if=cooldown_react\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\n# The default SimC APL would not cast CL while funneling, but we need it for target detection and MS.\nactions.single_target+=/chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190810.2145,
					["warnings"] = "Imported 4 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( spell_targets.chain_lightning < ( 5 - ! talent.totem_mastery.enabled ) || ! talent.storm_elemental.enabled & ( fire_elemental.remains > ( 14 * spell_haste ) || cooldown.fire_elemental.remains < ( 24 - 14 * spell_haste ) ) ) & ( ! talent.storm_elemental.enabled || storm_elemental.down || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & storm_elemental.down & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || buff.lava_surge.down || spell_targets.earthquake >= 4 ) & ( buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3 )",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & ! buff.ascendance.up",
								["action"] = "icefury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.icefury.up & ! buff.ascendance.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "elemental_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [12]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
								["moving"] = "1",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [15]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [16]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & storm_elemental.down ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( storm_elemental.down || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 26 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "funneling & buff.stormkeeper.up & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 36 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ( ( spell_targets.chain_lightning > 1 || azerite.tectonic_thunder.rank >= 3 & ! talent.surge_of_power.enabled & azerite.lava_shock.rank < 1 ) & azerite.lava_shock.rank * buff.lava_shock.stack < ( 36 + 3 * azerite.tectonic_thunder.rank * spell_targets.chain_lightning ) & ( ! talent.surge_of_power.enabled || ! dot.flame_shock.refreshable || storm_elemental.up ) & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled ) )",
								["action"] = "earthquake",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack < 26 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "funneling & ! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || ( azerite.lava_shock.rank * buff.lava_shock.stack < 36 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [10]
							{
								["action"] = "lightning_lasso",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.ticking || cooldown.flame_shock.remains",
								["action"] = "lightning_lasso",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "funneling & storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "chain_lightning",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "funneling & ( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "chain_lightning",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.tectonic_thunder.up & ! buff.stormkeeper.up & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [33]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [36]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [37]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "expected_combat_length - time < 30 || fire_elemental.up || storm_elemental.up",
								["action"] = "potion",
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up ) & ( ! talent.ascendance.enabled || ! cooldown.ascendance.up )",
								["action"] = "storm_elemental",
							}, -- [7]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & buff.call_lightning.remains >= 8",
								["action"] = "eye_of_the_storm",
							}, -- [21]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ! funneling",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [24]
						},
						["precombat"] = {
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning < 3",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 2",
								["action"] = "chain_lightning",
							}, -- [8]
						},
					},
					["author"] = "SimulationCraft",
				},
			},
		},
		["Tanhe - Eonar"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[103] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["brutal_charges"] = 2,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Feral",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "focused_resolve",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 3,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[104] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["maul_rage"] = 20,
						["ironfur_damage_threshold"] = 5,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Guardian",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "focused_resolve",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 6,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
				[102] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["starlord_cancel"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["custom1Name"] = "Custom 1",
					["package"] = "Balance",
					["throttleTime"] = false,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["buffPadding"] = 0,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200222,
					["spec"] = 103,
					["desc"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# February 22, 2020\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.",
					["profile"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# February 22, 2020\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.\n# - Don't use Brutal Slash w/ Wild Fleshrending if Thrash isn't up.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# It is worth it for almost everyone to maintain thrash\nactions.precombat+=/variable,name=use_thrash,value=0\nactions.precombat+=/variable,name=use_thrash,value=2,if=azerite.wild_fleshrending.enabled\nactions.precombat+=/variable,name=rip_ticks,value=8\nactions.precombat+=/regrowth,if=buff.moonkin_form.down&talent.bloodtalons.enabled\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/prowl,if=buff.moonkin_form.down\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/berserk,if=buff.moonkin_form.down\nactions.precombat+=/tigers_fury,if=buff.moonkin_form.down&buff.tigers_fury.down\nactions.precombat+=/cat_form,if=buff.moonkin_form.down\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=balance,if=talent.balance_affinity.enabled&buff.moonkin_form.up\nactions+=/call_action_list,name=opener,if=!opener_done&talent.sabertooth.enabled&(buff.berserk.up||buff.incarnation.up)\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/call_action_list,name=cooldowns\nactions+=/ferocious_bite,cycle_targets=1,if=dot.rip.ticking&dot.rip.remains<3&target.time_to_die>10&(talent.sabertooth.enabled)\nactions+=/ferocious_bite,cycle_targets=1,if=talent.sabertooth.enabled&combo_points>spell_targets.thrash_cat&dot.rip.ticking&dot.rip.remains<3&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\n# actions+=/regrowth,if=combo_points=5&buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/run_action_list,name=finishers,if=combo_points>4\nactions+=/call_action_list,name=generators_aoe,if=spell_targets.thrash_cat>1\nactions+=/run_action_list,name=generators\n\nactions.cooldowns=berserk,if=energy>=30&(cooldown.tigers_fury.remains>5||buff.tigers_fury.up)\nactions.cooldowns+=/tigers_fury,if=energy.deficit>=60||buff.tigers_fury.down\nactions.cooldowns+=/berserking\nactions.cooldowns+=/thorns,if=active_enemies>desired_targets||raid_event.adds.in>45\nactions.cooldowns+=/the_unbound_force,if=buff.reckless_force.up||buff.tigers_fury.up\nactions.cooldowns+=/memory_of_lucid_dreams,if=buff.tigers_fury.up&buff.berserk.down\nactions.cooldowns+=/blood_of_the_enemy,if=buff.tigers_fury.up\nactions.cooldowns+=/feral_frenzy,if=combo_points=0\nactions.cooldowns+=/focused_azerite_beam,if=active_enemies>desired_targets||(raid_event.adds.in>90&energy.deficit>=50)\nactions.cooldowns+=/purifying_blast,if=active_enemies>desired_targets||raid_event.adds.in>60\nactions.cooldowns+=/guardian_of_azeroth,if=buff.tigers_fury.up\nactions.cooldowns+=/concentrated_flame,if=buff.tigers_fury.up\nactions.cooldowns+=/ripple_in_space,if=buff.tigers_fury.up\nactions.cooldowns+=/worldvein_resonance,if=buff.tigers_fury.up\nactions.cooldowns+=/reaping_flames,if=target.time_to_die<1.5||((target.health.pct>80||target.health.pct<=20)&target.time_to_die>29)||(target.time_to_pct_20>30&target.time_to_die>44)\nactions.cooldowns+=/incarnation,if=energy>=30&(cooldown.tigers_fury.remains>15||buff.tigers_fury.up)\nactions.cooldowns+=/potion,if=target.time_to_die<65||(time_to_die<180&(buff.berserk.up||buff.incarnation.up))\nactions.cooldowns+=/shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.incarnation.enabled||cooldown.incarnation.remains>18)&!buff.incarnation.up\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.time_to_pct_30<1.5||!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=25-10*debuff.blood_of_the_enemy.up||time_to_die<40)&buff.tigers_fury.remains>10\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=(energy.deficit>=energy.regen*3)&buff.tigers_fury.down&!azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=buff.tigers_fury.up&azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=azsharas_font_of_power,if=energy.deficit>=50\nactions.cooldowns+=/use_items,if=buff.tigers_fury.up||time_to_die<20\n\nactions.finishers=regrowth,if=buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.down\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>1&dot.rip.remains<4\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>=2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,cycle_targets=1,if=!talent.sabertooth.enabled&refreshable&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,cycle_targets=1,if=talent.sabertooth.enabled&(!ticking||remains<=duration*0.3&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>dot.rip.remains+variable.rip_ticks*(1+dot.rip.ticking*3)*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.remains<12\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/maim,if=buff.iron_jaws.up\nactions.finishers+=/ferocious_bite,max_energy=1,cycle_targets=1\n\nactions.generators=regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4\nactions.generators+=/regrowth,if=talent.bloodtalons.enabled&buff.bloodtalons.down&buff.predatory_swiftness.up&talent.lunar_inspiration.enabled&dot.rake.remains<1\nactions.generators+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets&(!azerite.wild_fleshrending.enabled||dot.thrash_cat.ticking)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(refreshable&spell_targets.thrash_cat>2)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(talent.scent_of_blood.enabled&buff.scent_of_blood.down)&spell_targets.thrash_cat>3\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=buff.scent_of_blood.up||(action.swipe_cat.damage*spell_targets.swipe_cat>(action.rake.damage+(action.rake_bleed.tick_damage*5)))\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=!ticking||(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4\n# With LI & BT, we can use moonfire to save BT charges, allowing us to better refresh rake\nactions.generators+=/moonfire_cat,if=buff.bloodtalons.up&buff.predatory_swiftness.down&combo_points<5\nactions.generators+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.generators+=/brutal_slash,if=(!azerite.wild_fleshrending.enabled||dot.thrash_cat.ticking)&buff.tigers_fury.up&(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=refreshable&((variable.use_thrash=2&(!buff.incarnation.up||azerite.wild_fleshrending.enabled))||spell_targets.thrash_cat>1)\n# actions.generators+=/thrash_cat,if=refreshable&variable.use_thrash=1&buff.clearcasting.react&(!buff.incarnation.up||azerite.wild_fleshrending.enabled)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.generators+=/shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen||buff.clearcasting.react\n\nactions.generators_aoe=pool_resource,for_next=1\nactions.generators_aoe+=/thrash_cat,if=(refreshable||active_dot.thrash_cat<active_enemies%2)&spell_targets.thrash_cat>2||talent.scent_of_blood.enabled&buff.scent_of_blood.down&spell_targets.thrash_cat>3||!ticking&azerite.wild_fleshrending.enabled\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/swipe_cat,if=buff.scent_of_blood.up\n\n# The opener generally follow the logic of the rest of the apl, but is separated out here for logical clarity\n# We will open with TF, you can safely cast this from stealth without breaking it.\nactions.opener=tigers_fury\n# Always open with rake, consuming stealth and one BT charge (if talented)\nactions.opener+=/rake,if=!ticking||buff.prowl.up\n# Lets make sure we end the opener \"sequence\" when our first rip is ticking\n# actions.opener+=/variable,name=opener_done,value=dot.rip.ticking\n# Break out of the action list\n# actions.opener+=/wait,sec=0.001,if=dot.rip.ticking\n# If we have LI, and haven't applied it yet use moonfire.\nactions.opener+=/moonfire_cat,if=!ticking\n# no need to wait for 5 CPs anymore, just rip and we are up and running\nactions.opener+=/primal_wrath,if=active_enemies>1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\nactions.opener+=/rip,if=active_enemies=1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rake.ticking&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\n\nactions.balance=sunfire,if=refreshable||(active_enemies>1&(dot.sunfire.refreshable||active_dot.sunfire<active_enemies))\nactions.balance+=/lunar_strike,if=active_enemies>4||(active_enemies>1&buff.lunar_empowerment.up)\nactions.balance+=/solar_wrath,if=active_enemies>2&buff.solar_empowerment.up\nactions.balance+=/starsurge\nactions.balance+=/solar_wrath,if=buff.solar_empowerment.up\nactions.balance+=/lunar_strike,if=buff.lunar_empowerment.up\nactions.balance+=/solar_wrath",
					["version"] = 20200222,
					["warnings"] = "Imported 8 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["opener"] = {
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || buff.prowl.up",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "moonfire_cat",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "primal_wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & dot.rake.ticking & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "rip",
							}, -- [5]
						},
						["generators_aoe"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || active_dot.thrash_cat < active_enemies % 2 ) & spell_targets.thrash_cat > 2 || talent.scent_of_blood.enabled & buff.scent_of_blood.down & spell_targets.thrash_cat > 3 || ! ticking & azerite.wild_fleshrending.enabled",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up",
								["action"] = "swipe_cat",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.balance_affinity.enabled & buff.moonkin_form.up",
								["action"] = "run_action_list",
								["list_name"] = "balance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! opener_done & talent.sabertooth.enabled & ( buff.berserk.up || buff.incarnation.up )",
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > 10 & ( talent.sabertooth.enabled )",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "talent.sabertooth.enabled & combo_points > spell_targets.thrash_cat & dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points > 4",
								["action"] = "run_action_list",
								["list_name"] = "finishers",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thrash_cat > 1",
								["action"] = "call_action_list",
								["list_name"] = "generators_aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "generators",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "use_thrash",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "azerite.wild_fleshrending.enabled",
								["var_name"] = "use_thrash",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "8",
								["var_name"] = "rip_ticks",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & talent.bloodtalons.enabled",
								["action"] = "regrowth",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "prowl",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "berserk",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "cat_form",
							}, -- [10]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points = 4 & dot.rake.remains < 4",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & buff.predatory_swiftness.up & talent.lunar_inspiration.enabled & dot.rake.remains < 1",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets & ( ! azerite.wild_fleshrending.enabled || dot.thrash_cat.ticking )",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & spell_targets.thrash_cat > 2 )",
								["action"] = "thrash_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( talent.scent_of_blood.enabled & buff.scent_of_blood.down ) & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up || ( action.swipe_cat.damage * spell_targets.swipe_cat > ( action.rake.damage + ( action.rake_bleed.tick_damage * 5 ) ) )",
								["action"] = "swipe_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "! ticking || ( ! talent.bloodtalons.enabled & remains < duration * 0.3 ) & target.time_to_die > 4",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.up & ( ( remains <= 7 ) & persistent_multiplier > dot.rake.pmultiplier * 0.85 ) & target.time_to_die > 4",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodtalons.up & buff.predatory_swiftness.down & combo_points < 5",
								["action"] = "moonfire_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "moonfire_cat",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( ! azerite.wild_fleshrending.enabled || dot.thrash_cat.ticking ) & buff.tigers_fury.up & ( raid_event.adds.in > ( 1 + max_charges - charges_fractional ) * recharge_time )",
								["action"] = "brutal_slash",
							}, -- [16]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ( variable.use_thrash = 2 & ( ! buff.incarnation.up || azerite.wild_fleshrending.enabled ) ) || spell_targets.thrash_cat > 1 )",
								["action"] = "thrash_cat",
							}, -- [18]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.remains > ( action.shred.cost + action.rake.cost - energy ) % energy.regen || buff.clearcasting.react",
								["action"] = "shred",
							}, -- [21]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.predatory_swiftness.up & talent.bloodtalons.enabled & buff.bloodtalons.stack < 2",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.down",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "primal_wrath",
								["criteria"] = "spell_targets.primal_wrath > 1 & dot.rip.remains < 4",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "primal_wrath",
								["criteria"] = "spell_targets.primal_wrath >= 2",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "! talent.sabertooth.enabled & refreshable & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "talent.sabertooth.enabled & ( ! ticking || remains <= duration * 0.3 & persistent_multiplier > dot.rip.pmultiplier ) & target.time_to_die > dot.rip.remains + variable.rip_ticks * ( 1 + dot.rip.ticking * 3 ) * action.rip.tick_time",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 12",
								["action"] = "savage_roar",
							}, -- [13]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.iron_jaws.up",
								["action"] = "maim",
							}, -- [15]
							{
								["max_energy"] = "1",
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [16]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 5 || buff.tigers_fury.up )",
								["action"] = "berserk",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 60 || buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 45",
								["action"] = "thorns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || buff.tigers_fury.up",
								["action"] = "the_unbound_force",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & buff.berserk.down",
								["action"] = "memory_of_lucid_dreams",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points = 0",
								["action"] = "feral_frenzy",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || ( raid_event.adds.in > 90 & energy.deficit >= 50 )",
								["action"] = "focused_azerite_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "guardian_of_azeroth",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "concentrated_flame",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "ripple_in_space",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "worldvein_resonance",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 1.5 || ( ( target.health.pct > 80 || target.health.pct <= 20 ) & target.time_to_die > 29 ) || ( target.time_to_pct_20 > 30 & target.time_to_die > 44 )",
								["action"] = "reaping_flames",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 15 || buff.tigers_fury.up )",
								["action"] = "incarnation",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
								["action"] = "potion",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & energy >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
								["action"] = "shadowmeld",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.time_to_pct_30 < 1.5 || ! debuff.conductive_ink_debuff.up & ( debuff.razor_coral_debuff.stack >= 25 - 10 * debuff.blood_of_the_enemy.up || time_to_die < 40 ) & buff.tigers_fury.remains > 10",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "( energy.deficit >= energy.regen * 3 ) & buff.tigers_fury.down & ! azerite.jungle_fury.enabled",
								["effect_name"] = "cyclotronic_blast",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "buff.tigers_fury.up & azerite.jungle_fury.enabled",
								["effect_name"] = "cyclotronic_blast",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "azsharas_font_of_power",
								["criteria"] = "energy.deficit >= 50",
								["effect_name"] = "azsharas_font_of_power",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up || time_to_die < 20",
								["action"] = "use_items",
							}, -- [23]
						},
						["balance"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( active_enemies > 1 & ( dot.sunfire.refreshable || active_dot.sunfire < active_enemies ) )",
								["action"] = "sunfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 4 || ( active_enemies > 1 & buff.lunar_empowerment.up )",
								["action"] = "lunar_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [3]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.lunar_empowerment.up",
								["action"] = "lunar_strike",
							}, -- [6]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [7]
						},
					},
				},
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200614,
					["author"] = "SimC",
					["desc"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.starlord.enabled || buff.starlord.up ) & ! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "guardian_of_azeroth",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["effect_name"] = "cyclotronic_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "shiver_venom_relic",
								["action"] = "shiver_venom_relic",
								["criteria"] = "! buff.ca_inc.up & ! buff.bloodlust.up",
								["target_if"] = "dot.shiver_venom.stack >= 5",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains > 10 || buff.ca_inc.remains > 4 & buff.arcanic_pulsar.stack > 6 || fight_remains < 21",
								["name"] = "manifesto_of_madness",
								["action"] = "manifesto_of_madness",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.remains > 30",
								["action"] = "blood_of_the_enemy",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( astral_power < 25 || cooldown.ca_inc.remains > 30 ) & dot.sunfire.remains > 10 & dot.moonfire.remains > 10 & ( ! talent.stellar_flare.enabled || dot.stellar_flare.remains > 10 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [9]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "the_unbound_force",
							}, -- [13]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.az_ss || ! buff.ca_inc.up ) & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "focused_azerite_beam",
							}, -- [15]
							{
								["action"] = "thorns",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || fight_remains < 20",
								["action"] = "use_items",
							}, -- [17]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( buff.memory_of_lucid_dreams.up || ap_check ) & dot.sunfire.remains > 8 & dot.moonfire.remains > 12 & ( dot.stellar_flare.remains > 6 || ! talent.stellar_flare.enabled )",
								["action"] = "incarnation",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( dot.sunfire.remains > 2 & dot.moonfire.ticking & ( dot.stellar_flare.ticking || ! talent.stellar_flare.enabled ) )",
								["action"] = "celestial_alignment",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & solar_wrath.ap_check",
								["action"] = "fury_of_elune",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & ap_check",
								["action"] = "force_of_nature",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 3 & ! solar_wrath.ap_check",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( ! solar_wrath.ap_check || ( buff.starlord.stack < 3 || buff.starlord.remains >= 8 ) & ( fight_remains + 1 ) * spell_targets > cost % 2.5 ) & spell_targets >= variable.sf_targets",
								["action"] = "starfall",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.starlord.enabled & ( buff.starlord.stack < 3 || buff.starlord.remains >= 5 & buff.arcanic_pulsar.stack < 8 ) || ! talent.starlord.enabled & ( buff.arcanic_pulsar.stack < 8 || buff.ca_inc.up ) ) & buff.solar_empowerment.stack < 3 & buff.lunar_empowerment.stack < 3 & buff.reckless_force_counter.stack < 19 || buff.reckless_force.up ) & spell_targets.starfall < variable.sf_targets & ( ! variable.az_ss || ! buff.ca_inc.up || ! prev.starsurge ) || fight_remains <= execute_time * astral_power % 40 || ! solar_wrath.ap_check",
								["action"] = "starsurge",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank & dot.moonfire.remains > remains",
								["action"] = "sunfire",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank",
								["action"] = "moonfire",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= ceil ( floor ( 2 % spell_targets ) * 1.5 ) + 2 * spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.sunfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.moonfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["cycle_targets"] = 1,
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 5 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.stellar_flare )",
								["cycle_targets"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "new_moon",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "half_moon",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "full_moon",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.stack < 3 & ( ap_check || buff.lunar_empowerment.stack = 3 ) & ( ( buff.warrior_of_elune.up || buff.lunar_empowerment.up || spell_targets >= 2 & ! buff.solar_empowerment.up ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up ) || azerite.streaking_stars.rank & buff.ca_inc.up & prev.solar_wrath )",
								["action"] = "lunar_strike",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "azerite.streaking_stars.rank < 3 || ! buff.ca_inc.up || ! prev.solar_wrath",
								["action"] = "solar_wrath",
							}, -- [35]
							{
								["action"] = "sunfire",
								["enabled"] = true,
							}, -- [36]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "4",
								["var_name"] = "sf_targets",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "azerite.arcanic_pulsar.enabled",
								["var_name"] = "sf_targets",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "talent.starlord.enabled",
								["var_name"] = "sf_targets",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "azerite.streaking_stars.rank > 2 & azerite.arcanic_pulsar.enabled",
								["var_name"] = "sf_targets",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "sub",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "! talent.twin_moons.enabled",
								["var_name"] = "sf_targets",
							}, -- [5]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "potion",
								["dynamic_prepot"] = "1",
							}, -- [8]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [10]
						},
					},
					["version"] = 20200614,
					["warnings"] = "Imported 2 action lists.\n",
					["spec"] = 102,
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# June 14, 2020\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n\n# Azerite variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n\n# Starfall v Starsurge target cutoff\nactions.precombat=variable,name=sf_targets,value=4\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=talent.starlord.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.streaking_stars.rank>2&azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=sub,value=1,if=!talent.twin_moons.enabled\nactions.precombat+=/moonkin_form\n\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/potion,dynamic_prepot=1\nactions.precombat+=/solar_wrath\nactions.precombat+=/starsurge\n\n# Executed every time the actor is available.\nactions=solar_beam\n# CDs\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/use_item,name=azsharas_font_of_power,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/guardian_of_azeroth,if=(!talent.starlord.enabled||buff.starlord.up)&!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,effect_name=cyclotronic_blast,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,name=shiver_venom_relic,if=!buff.ca_inc.up&!buff.bloodlust.up,target_if=dot.shiver_venom.stack>=5\nactions+=/use_item,name=manifesto_of_madness,if=buff.ca_inc.remains>10||buff.ca_inc.remains>4&buff.arcanic_pulsar.stack>6||fight_remains<21\nactions+=/blood_of_the_enemy,if=cooldown.ca_inc.remains>30\nactions+=/memory_of_lucid_dreams,if=!buff.ca_inc.up&(astral_power<25||cooldown.ca_inc.remains>30)&dot.sunfire.remains>10&dot.moonfire.remains>10&(!talent.stellar_flare.enabled||dot.stellar_flare.remains>10)\nactions+=/purifying_blast\nactions+=/ripple_in_space\nactions+=/concentrated_flame\nactions+=/the_unbound_force,if=buff.reckless_force.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/worldvein_resonance\nactions+=/focused_azerite_beam,if=(!variable.az_ss||!buff.ca_inc.up)&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/thorns\nactions+=/use_items,if=buff.ca_inc.up||fight_remains<20\nactions+=/warrior_of_elune\n# actions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(buff.memory_of_lucid_dreams.up||ap_check)&dot.sunfire.remains>8&dot.moonfire.remains>12&(dot.stellar_flare.remains>6||!talent.stellar_flare.enabled)\nactions+=/celestial_alignment,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(dot.sunfire.remains>2&dot.moonfire.ticking&(dot.stellar_flare.ticking||!talent.stellar_flare.enabled))\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<3&!solar_wrath.ap_check\nactions+=/starfall,if=(!solar_wrath.ap_check||(buff.starlord.stack<3||buff.starlord.remains>=8)&(fight_remains+1)*spell_targets>cost%2.5)&spell_targets>=variable.sf_targets\nactions+=/starsurge,if=((talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=5&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&buff.reckless_force_counter.stack<19||buff.reckless_force.up)&spell_targets.starfall<variable.sf_targets&(!variable.az_ss||!buff.ca_inc.up||!prev.starsurge)||fight_remains<=execute_time*astral_power%40||!solar_wrath.ap_check\nactions+=/sunfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank&dot.moonfire.remains>remains\nactions+=/moonfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=ceil(floor(2%spell_targets)*1.5)+2*spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.sunfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/moonfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.moonfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))>=5&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.stellar_flare)\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up)&(!azerite.streaking_stars.rank||!buff.ca_inc.up)||azerite.streaking_stars.rank&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n\n# Fallthru for movement\nactions+=/sunfire",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190818,
					["author"] = "SimC",
					["desc"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# August 18, 2019 - 14:00\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.",
					["lists"] = {
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < gcd * 2",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.current < 0.75 * health.max",
								["action"] = "frenzied_regeneration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "toggle.defensives & health.pct < 80",
								["action"] = "anima_of_death",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "barkskin",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [5]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "lunar_beam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.ticking || active_enemies > 1 ) & dot.thrash_bear.ticking",
								["action"] = "incarnation",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "toggle.cooldowns & ( time_to_die < action_cooldown % 2 || active_enemies > 1 )",
								["action"] = "anima_of_death",
							}, -- [12]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [14]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & active_enemies < 4",
								["action"] = "maul",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & essence.conflict_and_strife.major & ! buff.sharpened_claws.up",
								["action"] = "maul",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cost = 0 || ( rage > cost & azerite.layered_mane.enabled & active_enemies > 2 )",
								["action"] = "ironfur",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack = dot.thrash_bear.max_stacks",
								["action"] = "pulverize",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.refreshable & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.down & active_enemies > 1 ) || ( buff.incarnation.up & active_enemies > 4 )",
								["action"] = "thrash_bear",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.down & active_enemies > 4",
								["action"] = "swipe_bear",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.ticking",
								["action"] = "mangle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [12]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "azerite.power_of_the_moon.rank > 1 & active_enemies = 1",
								["action"] = "moonfire",
							}, -- [14]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["action"] = "bear_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20190818,
					["warnings"] = "Imported 4 action lists.\n",
					["spec"] = 104,
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# August 18, 2019 - 14:00\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/memory_of_lucid_dreams\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<20&active_enemies<4\nactions+=/maul,if=rage.deficit<20&essence.conflict_and_strife.major&!buff.sharpened_claws.up\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,target_if=dot.moonfire.refreshable&active_enemies<2\nactions+=/thrash,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,target_if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.75*health.max\nactions.mitigation+=/anima_of_death,if=toggle.defensives&health.pct<80\nactions.mitigation+=/barkskin,if=health.pct<75&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\n# actions.cooldowns+=/heart_essence\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/incarnation,if=(dot.moonfire.ticking||active_enemies>1)&dot.thrash_bear.ticking\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast\nactions.cooldowns+=/anima_of_death,if=toggle.cooldowns&(time_to_die<cooldown%2||active_enemies>1)\nactions.cooldowns+=/memory_of_lucid_dreams\nactions.cooldowns+=/use_items",
				},
			},
		},
	},
}
