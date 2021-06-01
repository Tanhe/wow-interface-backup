-- AnimaPowers.lua
-- November 2020

-- This file is intended to manage detection/identification of Anima Powers (MawPowers in the DB files).

local addon, ns = ...
local Hekili = _G[ addon ]

local class = Hekili.Class

local powers = {
    [294578] = { "obleron_spikes", 1 },
    [294587] = { "obleron_spikes_x2", 2 },
    [294588] = { "obleron_spikes_x3", 3 },
    [294592] = { "obleron_winds", 1 },
    [294593] = { "obleron_winds_x2", 2 },
    [294594] = { "obleron_winds_x3", 3 },
    [294597] = { "obleron_talisman", 1 },
    [294600] = { "obleron_talisman_x2", 2 },
    [294601] = { "obleron_talisman_x3", 3 },
    [294602] = { "obleron_ephemera", 1 },
    [294603] = { "obleron_ephemera_x2", 2 },
    [294604] = { "obleron_ephemera_x3", 3 },
    [294609] = { "obleron_venom", 1 },
    [294610] = { "obleron_venom_x2", 2 },
    [294611] = { "obleron_venom_x3", 3 },
    [293025] = { "obleron_endurance", 1 },
    [293026] = { "obleron_endurance_x2", 2 },
    [293027] = { "obleron_endurance_x3", 3 },
    [296140] = { "tremorbeast_heart", 4 },
    [297576] = { "tremorbeast_tusk", 3 },
    [295754] = { "purifiers_flame", 3 },
    [296141] = { "knowledge_of_mortality", 3 },
    [300730] = { "vitality_guillotine", 3 },
    [300771] = { "blade_of_the_lifetaker", 3 },
    [305273] = { "vial_of_lost_potential", 3 },
    [297721] = { "subjugators_manacles", 3 },
    [299419] = { "flaming_lance", 2 },
    [296515] = { "mind_breach", 3 },
    [295072] = { "pouch_of_phantasma", 1 },
    [295073] = { "satchel_of_phantasma", 2 },
    [295068] = { "abundance_of_phantasma", 3 },
    [295187] = { "mawrat_harness", 3 },
    [294130] = { "visor_of_the_firstborn", 3 },
    [294422] = { "bloating_fodder", 1 },
    [295694] = { "secret_spices", 3 },
    [295732] = { "golden_idol", 3 },
    [295963] = { "crumbling_aegis", 2 },
    [295965] = { "curious_miasma", 2 },
    [295969] = { "protective_phantasma", 2 },
    [295997] = { "crown_of_obstinance", 2 },
    [297833] = { "enchanted_thieves_tools", 4 },
    [297877] = { "mobius_graft", 4 },
    [294719] = { "bottled_enigma", 3 },
    [295978] = { "echo_of_azeroth", 4 },
    [295086] = { "ultimate_detainment", 4 },
    [294887] = { "gluttons_kerchief", 4 },
    [296507] = { "deathlords_legacy", 3 },
    [296504] = { "slayers_legacy", 3 },
    [296502] = { "highlords_legacy", 3 },
    [296499] = { "shadowblades_legacy", 3 },
    [296485] = { "high_priests_legacy", 3 },
    [298690] = { "improved_healing_surge", 2 },
    [298789] = { "astral_phantasma", 2 },
    [295948] = { "farseers_lesson", 3 },
    [298563] = { "violent_tremors", 1 },
    [298561] = { "lingering_reverberations", 1 },
    [298562] = { "cracking_fissure", 1 },
    [299391] = { "call_of_fire", 1 },
    [299392] = { "call_of_lightning", 1 },
    [299393] = { "call_of_earth", 1 },
    [298564] = { "might_of_the_worldsplitter", 2 },
    [298576] = { "earthen_resonance", 2 },
    [298991] = { "by_fire_be_purged", 2 },
    [298685] = { "thermal_harmony", 2 },
    [298891] = { "allconsuming_blaze", 2 },
    [299388] = { "galvanizing_nimbus", 2 },
    [298650] = { "unstable_terrain", 3 },
    [298581] = { "shake_the_foundations", 3 },
    [298907] = { "unquenchable_flame", 3 },
    [298911] = { "molten_shock", 3 },
    [298952] = { "ignan_oblation", 3 },
    [298692] = { "blessing_of_ahune", 3 },
    [298590] = { "totemic_slam", 4 },
    [298572] = { "tectonic_storm", 4 },
    [298767] = { "mountains_will_fall", 4 },
    [298803] = { "secret_of_living_flame", 4 },
    [298969] = { "magma_fist", 4 },
    [298883] = { "farseers_cypher", 3 },
    [298884] = { "farseers_gift", 3 },
    [298885] = { "farseers_invocation", 3 },
    [298886] = { "farseers_mythos", 3 },
    [298887] = { "farseers_ultimatum", 4 },
    [300793] = { "open_doors", 3 },
    [300796] = { "touch_of_the_unseen", 3 },
    [299049] = { "heart_of_the_forge", 3 },
    [299048] = { "flame_jet", 3 },
    [304845] = { "mawrat_stirrups", 3 },
    [295072] = { "pouch_of_phantasma", 1 },
    [304917] = { "deadsoul_hound_harness", 3 },
    [304918] = { "maw_seeker_harness", 3 },
    [304992] = { "band_of_deep_burns", 3 },
    [304996] = { "frostchipper", 3 },
    [304998] = { "stormcycle_peridot", 3 },
    [305002] = { "shadowed_iris", 3 },
    [305004] = { "words_of_incomprehensible_glory", 3 },
    [305006] = { "scroll_of_elchaver", 3 },
    [305008] = { "hematoma_bat", 3 },
    [305042] = { "finger_of_frozen_fury", 2 },
    [305044] = { "lightning_dust", 2 },
    [305047] = { "corruption_antenna", 2 },
    [305050] = { "watchful_lightfly", 2 },
    [305052] = { "lens_of_elchaver", 2 },
    [305054] = { "yelshirs_powerglove", 3 },
    [305266] = { "wardens_authority", 3 },
    [305269] = { "pocketed_soulcage", 3 },
    [297413] = { "shackle_keys", 3 },
    [305274] = { "dark_armaments", 3 },
    [305277] = { "flamestarved_cinders", 3 },
    [305282] = { "glasswing_charm", 3 },
    [305287] = { "marrow_scooper", 3 },
    [305288] = { "skeletal_ward", 3 },
    [305293] = { "prisoners_concord", 3 },
    [305308] = { "brokers_purse", 3 },
    [306563] = { "kyrian_blessing", 3 },
    [306571] = { "maldraxxian_repayment", 3 },
    [306573] = { "gift_of_ardenweald", 3 },
    [306575] = { "venthyrs_gratitude", 3 },
    [306590] = { "sword_off_my_back", 3 },
    [306591] = { "blooded_satchel", 2 },
    [306592] = { "satchel_of_natures_bounty", 2 },
    [306593] = { "venthyrs_coin_purse", 2 },
    [342027] = { "offer_of_souls", 3 },
    [306604] = { "boots_of_bellaton", 4 },
    [306609] = { "disembowelers_hook", 4 },
    [306615] = { "roots_of_the_dreamtree", 4 },
    [306625] = { "cilice_of_denathrius", 4 },
    [307595] = { "bounty_of_the_grove", 2 },
    [307660] = { "wisdoms_embrace", 2 },
    [307597] = { "overgrown_garden", 2 },
    [307598] = { "sundrenched_grove", 3 },
    [307605] = { "darkening_canopy", 4 },
    [307647] = { "wisdom_and_fury", 2 },
    [307661] = { "giving_tree", 3 },
    [307741] = { "command_the_grove", 4 },
    [307738] = { "winds_of_bastion", 3 },
    [308193] = { "lens_of_elchaver", 2 },
    [308194] = { "finger_of_frozen_fury", 2 },
    [308195] = { "lightning_dust", 2 },
    [308196] = { "corruption_antenna", 2 },
    [308201] = { "curious_miasma", 2 },
    [308203] = { "crown_of_obstinance", 2 },
    [308204] = { "crumbling_aegis", 2 },
    [308205] = { "obleron_endurance", 3 },
    [308199] = { "updraft", 2 },
    [308200] = { "tailwind", 2 },
    [308198] = { "skeletal_ward", 3 },
    [308202] = { "shadiform_rags", 4 },
    [306594] = { "offer_of_souls", 3 },
    [308197] = { "lost_pyrestone", 3 },
    [295754] = { "purifiers_flame", 3 },
    [312334] = { "chain_of_command", 3 },
    [312341] = { "shade_essencelure", 3 },
    [312342] = { "wailing_pendant", 3 },
    [312532] = { "infused_flesh", 3 },
    [312535] = { "hungering_anima", 4 },
    [312552] = { "unnatural_claws", 3 },
    [312549] = { "satchel_of_the_hunt", 2 },
    [312547] = { "symbiotic_essence", 3 },
    [312533] = { "runic_etchings", 1 },
    [312670] = { "stygian_victuals", 1 },
    [312840] = { "anamnestic_memories", 2 },
    [312897] = { "volatile_augury", 1 },
    [312985] = { "collar_of_teeth", 2 },
    [313565] = { "dreadsaddle", 3 },
    [313566] = { "hatred_core", 3 },
    [313567] = { "piercing_vision_of_corraph", 3 },
    [313572] = { "softsouled_shoes", 3 },
    [313576] = { "deathtriggered_anima_bomb", 4 },
    [313579] = { "elysian_endurance", 2 },
    [313580] = { "zeal_of_the_aspirant", 2 },
    [313581] = { "ephemeral_tailwind", 2 },
    [313902] = { "executors_call_sheet", 1 },
    [313900] = { "thricecharred_eye", 1 },
    [313965] = { "soul_detector", 1 },
    [313766] = { "farseers_legacy", 3 },
    [313846] = { "deathlords_cypher", 3 },
    [313847] = { "deathlords_gift", 3 },
    [313848] = { "deathlords_lesson", 3 },
    [313849] = { "deathlords_invocation", 3 },
    [313850] = { "deathlords_legacy", 3 },
    [313851] = { "deathlords_mythos", 3 },
    [313852] = { "deathlords_ultimatum", 4 },
    [313817] = { "slayers_cypher", 3 },
    [313818] = { "slayers_gift", 3 },
    [313819] = { "slayers_lesson", 3 },
    [313820] = { "slayers_invocation", 3 },
    [313821] = { "slayers_legacy", 3 },
    [313822] = { "slayers_mythos", 3 },
    [313823] = { "slayers_ultimatum", 4 },
    [313824] = { "archdruids_cypher", 3 },
    [313825] = { "archdruids_gift", 3 },
    [313826] = { "archdruids_lesson", 3 },
    [313827] = { "archdruids_invocation", 3 },
    [313828] = { "archdruids_legacy", 3 },
    [313829] = { "archdruids_mythos", 3 },
    [313831] = { "archdruids_ultimatum", 4 },
    [313881] = { "huntmasters_cypher", 3 },
    [313882] = { "huntmasters_gift", 3 },
    [313883] = { "huntmasters_lesson", 3 },
    [313884] = { "huntmasters_invocation", 3 },
    [313885] = { "huntmasters_legacy", 3 },
    [313886] = { "huntmasters_mythos", 3 },
    [313887] = { "huntmasters_ultimatum", 4 },
    [313867] = { "archmages_cypher", 3 },
    [313868] = { "archmages_gift", 3 },
    [313869] = { "archmages_lesson", 3 },
    [313870] = { "archmages_invocation", 3 },
    [313871] = { "archmages_legacy", 3 },
    [313872] = { "archmages_mythos", 3 },
    [313873] = { "archmages_ultimatum", 4 },
    [313860] = { "grandmasters_cypher", 3 },
    [313861] = { "grandmasters_gift", 3 },
    [313862] = { "grandmasters_lesson", 3 },
    [313863] = { "grandmasters_invocation", 3 },
    [313864] = { "grandmasters_legacy", 3 },
    [313865] = { "grandmasters_mythos", 3 },
    [313866] = { "grandmasters_ultimatum", 4 },
    [313839] = { "highlords_cypher", 3 },
    [313840] = { "highlords_gift", 3 },
    [313841] = { "highlords_lesson", 3 },
    [313842] = { "highlords_invocation", 3 },
    [313843] = { "highlords_legacy", 3 },
    [313844] = { "highlords_mythos", 3 },
    [313845] = { "highlords_ultimatum", 4 },
    [313888] = { "high_priests_cypher", 3 },
    [313889] = { "high_priests_gift", 3 },
    [313890] = { "high_priests_lesson", 3 },
    [313891] = { "high_priests_invocation", 3 },
    [313892] = { "high_priests_legacy", 3 },
    [313893] = { "high_priests_mythos", 3 },
    [313894] = { "high_priests_ultimatum", 4 },
    [313832] = { "shadowblades_cypher", 3 },
    [313833] = { "shadowblades_gift", 3 },
    [313834] = { "shadowblades_lesson", 3 },
    [313835] = { "shadowblades_invocation", 3 },
    [313836] = { "shadowblades_legacy", 3 },
    [313837] = { "shadowblades_mythos", 3 },
    [313838] = { "shadowblades_ultimatum", 4 },
    [313874] = { "netherlords_cypher", 3 },
    [313875] = { "netherlords_gift", 3 },
    [313876] = { "netherlords_lesson", 3 },
    [313877] = { "netherlords_invocation", 3 },
    [313878] = { "netherlords_legacy", 3 },
    [313879] = { "netherlords_mythos", 3 },
    [313880] = { "netherlords_ultimatum", 4 },
    [313853] = { "battlelords_cypher", 3 },
    [313854] = { "battlelords_gift", 3 },
    [313855] = { "battlelords_lesson", 3 },
    [313856] = { "battlelords_invocation", 3 },
    [313857] = { "battlelords_legacy", 3 },
    [313858] = { "battlelords_mythos", 3 },
    [313859] = { "battlelords_ultimatum", 4 },
    [314222] = { "zeal_of_the_aspirant", 2 },
    [314225] = { "lightfire_soles", 2 },
    [314226] = { "elysian_endurance", 3 },
    [314227] = { "ascendants_accelerando", 3 },
    [314228] = { "ancient_meditators_bell", 4 },
    [314229] = { "ode_to_humility", 4 },
    [314230] = { "eyes_of_the_unceasing", 2 },
    [314231] = { "reinforced_manacle", 2 },
    [314232] = { "darkhelm_of_nuren", 3 },
    [314233] = { "hateforged_cilice", 3 },
    [314234] = { "twisted_hellchoker", 4 },
    [314235] = { "oppressors_chain", 4 },
    [314236] = { "flail_of_merkur", 2 },
    [314237] = { "mask_of_the_winged_dominator", 2 },
    [314238] = { "searing_deathbrand", 3 },
    [314239] = { "souleaters_claw", 3 },
    [314240] = { "sacrificial_soulash", 4 },
    [314241] = { "scouring_rags_of_torghast", 4 },
    [314242] = { "deathwire", 2 },
    [314243] = { "deadsoul_aspect", 2 },
    [314244] = { "hellhardened_quartzite", 3 },
    [314245] = { "super_soul_scope", 3 },
    [335541] = { "sling_of_the_unseen", 4 },
    [314247] = { "pact_of_the_soulstalkers", 4 },
    [314248] = { "animaflecked_topaz", 2 },
    [314249] = { "scroll_of_the_arcane_meditator", 2 },
    [314250] = { "winged_curio", 3 },
    [314251] = { "longforbidden_words", 3 },
    [314252] = { "uraels_finality", 4 },
    [314253] = { "wizards_prayer", 4 },
    [314254] = { "havens_breath", 2 },
    [342444] = { "bulging_brew", 2 },
    [314256] = { "mawdarkened_slippers", 3 },
    [342446] = { "corrosive_carbonation", 3 },
    [314258] = { "balancing_stave", 4 },
    [342453] = { "unfiltered_bone_broth", 4 },
    [314260] = { "ember_of_the_carillon", 2 },
    [314262] = { "belt_of_the_mawsworn_avenger", 3 },
    [314264] = { "big_clapper", 4 },
    [327363] = { "torch_of_humility", 2 },
    [327370] = { "faithstone", 2 },
    [327468] = { "second_chorus", 2 },
    [327469] = { "deeplyheld_vow", 3 },
    [327513] = { "feathered_fetters", 4 },
    [327536] = { "glorious_prayer", 3 },
    [336750] = { "silent_elysian_bell", 2 },
    [343220] = { "fractured_bone_shards", 2 },
    [343221] = { "hollow_bones", 3 },
    [343203] = { "ringing_doom", 3 },
    [343209] = { "reverberating_strike", 4 },
    [343231] = { "springloaded_bone_pouch", 4 },
    [314278] = { "wildzeal_wraps", 2 },
    [333261] = { "diamondine_vesper", 2 },
    [314280] = { "weightless_spirit", 3 },
    [333262] = { "vesperwind_bit", 3 },
    [333264] = { "generosity_of_the_winged_seer", 4 },
    [314283] = { "diamondine_vesper", 4 },
    [314284] = { "tome_of_taking", 2 },
    [314285] = { "tithing_dish", 2 },
    [314286] = { "shard_of_slathgerrar", 3 },
    [314287] = { "indebting_word", 3 },
    [332873] = { "languishing_soul_detritus", 4 },
    [314289] = { "ash_and_anima", 4 },
    [314290] = { "kyrian_warhelm", 3 },
    [314291] = { "elysian_shoulderwrap", 2 },
    [314292] = { "stonepiercer_signet", 2 },
    [314293] = { "ancient_prolegomenon", 3 },
    [314294] = { "soulcarved_vow", 4 },
    [314295] = { "spearheads_of_eternity", 4 },
    [315266] = { "fleetwing_torch", 2 },
    [315288] = { "frostbite_wand", 3 },
    [315300] = { "icy_heartcrust", 3 },
    [315319] = { "spectral_oats", 3 },
    [315314] = { "spectral_bridle", 4 },
    [316693] = { "irresistible_cheese", 3 },
    [316850] = { "unstable_phantasma_lure", 3 },
    [319041] = { "elethium_weights", 3 },
    [319056] = { "elethium_veil", 3 },
    [319206] = { "elethium_diffuser", 3 },
    [319276] = { "elethium_muzzle", 3 },
    [319279] = { "elethium_alembic", 3 },
    [319280] = { "elethium_beacon", 3 },
    [319281] = { "elethium_lifegourd", 3 },
    [319285] = { "elethium_teardrop", 3 },
    [319287] = { "elethium_lantern", 3 },
    [319288] = { "elethium_censer", 3 },
    [319605] = { "unlock_shortcut", 3 },
    [319649] = { "unlock_shortcut", 2 },
    [320928] = { "chaotic_effigy", 1 },
    [332206] = { "tainted_blood_vial", 4 },
    [320930] = { "darkwhisper_signet", 3 },
    [320931] = { "gluttons_guise", 2 },
    [320932] = { "mark_of_borrowed_power", 3 },
    [332185] = { "bloodstained_dagger", 1 },
    [320934] = { "realmlords_insignia", 1 },
    [332200] = { "crystal_of_perpetual_displacement", 1 },
    [320936] = { "soul_platter", 4 },
    [320937] = { "detonation_torch", 1 },
    [320938] = { "inferno_skewers", 1 },
    [320939] = { "dissolving_vial", 1 },
    [332201] = { "smoking_shard_of_teleportation", 2 },
    [320941] = { "soulvoid_bag", 3 },
    [320942] = { "choking_chains", 1 },
    [320943] = { "pact_of_thickness", 2 },
    [320944] = { "hellfire_pact", 1 },
    [320945] = { "pact_of_infernal_intimacy", 4 },
    [332762] = { "void_etched_talisman", 1 },
    [332775] = { "bottled_shadow", 4 },
    [320948] = { "thirsting_chain", 2 },
    [320949] = { "whispers_of_the_jailer", 2 },
    [320950] = { "sacrificial_vermin", 2 },
    [320951] = { "claw_of_endereth", 3 },
    [320952] = { "visage_of_lethality", 3 },
    [320953] = { "shadowed_shortblade", 3 },
    [320954] = { "zovaals_resolution", 4 },
    [320955] = { "art_of_the_blood_passage", 4 },
    [320956] = { "disembodied_tongue", 2 },
    [320957] = { "warlocks_bargain", 3 },
    [320868] = { "horrific_dictionary", 3 },
    [329588] = { "fragments_of_obscurity", 1 },
    [329632] = { "soul_sapper", 2 },
    [320871] = { "vandals_zeal", 1 },
    [320872] = { "flashbox", 3 },
    [329678] = { "reflective_shield", 1 },
    [320874] = { "art_of_phantasmal_healing", 1 },
    [329693] = { "enduring_spirit", 1 },
    [329237] = { "mask_of_sheer_terror", 1 },
    [329428] = { "scales_of_trauma", 4 },
    [329241] = { "volatile_phantasm", 4 },
    [329510] = { "life_barrier", 1 },
    [320880] = { "painwheel", 1 },
    [320881] = { "schaden_fluorite", 2 },
    [320882] = { "redhot_mindpokers", 3 },
    [320883] = { "ratcorpse_bag", 2 },
    [320884] = { "impulsor", 3 },
    [320885] = { "modified_impulsor", 3 },
    [320886] = { "catharstick", 3 },
    [320887] = { "painbreaker_psalm", 4 },
    [329416] = { "death_harvester", 4 },
    [329689] = { "wailing_visage", 1 },
    [320891] = { "commandment_of_contagion", 2 },
    [320892] = { "puppetmasters_strings", 3 },
    [320893] = { "cruelty_censer", 2 },
    [329300] = { "pandemonium_loop", 4 },
    [320895] = { "thick_burlap_sash", 1 },
    [320896] = { "enchanted_shroud", 1 },
    [320897] = { "warm_blanket", 2 },
    [320898] = { "seekers_scroll", 1 },
    [320899] = { "wand_grease", 1 },
    [320900] = { "pandemonium_lens", 1 },
    [320901] = { "whizzard_hat", 2 },
    [320902] = { "bombardiers_etching", 3 },
    [320903] = { "chaos_invitation", 3 },
    [320904] = { "manascale", 2 },
    [320905] = { "sapphire_prism", 1 },
    [320906] = { "scroll_of_explosure", 4 },
    [320907] = { "highlypolished_handmirror", 4 },
    [320908] = { "polymorbid_rat_liver", 3 },
    [320909] = { "maldos_enchanted_cane", 1 },
    [320910] = { "constellation_shield", 1 },
    [320911] = { "resolute_medallion", 1 },
    [320912] = { "tundrid_phial", 1 },
    [320913] = { "everwarm_socks", 2 },
    [320914] = { "tome_of_zoomancy", 3 },
    [320915] = { "grisly_icicle", 4 },
    [320916] = { "triune_ward", 4 },
    [320917] = { "bottled_tesseract", 1 },
    [330745] = { "timeweavers_needle", 3 },
    [320919] = { "echoes_of_elisande", 3 },
    [320920] = { "timebreakers_paradox", 4 },
    [320921] = { "runecloth_wrappings", 2 },
    [320922] = { "mad_wizards_scrawlings", 3 },
    [320923] = { "arcanic_pulse_detector", 3 },
    [320924] = { "spaceweavers_thread", 1 },
    [320925] = { "dimensional_blade", 4 },
    [320926] = { "art_of_the_blinkmage", 4 },
    [320927] = { "clouded_diamond", 3 },
    [322026] = { "bladed_bulwark", 3 },
    [322027] = { "zovaals_warbanner", 2 },
    [329345] = { "signet_of_tormented_kings", 4 },
    [329283] = { "umbral_ear_trumpet", 4 },
    [322032] = { "smoldering_inertia", 4 },
    [322051] = { "warlords_resolve", 4 },
    [322039] = { "scratched_knife", 4 },
    [322049] = { "periapt_of_furor", 1 },
    [322024] = { "shadehound_tooth", 2 },
    [322029] = { "fan_of_longswords", 3 },
    [329268] = { "misshapen_mirror", 3 },
    [329275] = { "shrieking_flagon", 3 },
    [329452] = { "ogundimus_fist", 3 },
    [329335] = { "gibbering_skull", 4 },
    [329213] = { "voracious_culling_blade", 3 },
    [322035] = { "pleonexian_command", 1 },
    [322093] = { "thundering_roar", 2 },
    [322031] = { "spattered_soles", 2 },
    [322046] = { "ragemote", 1 },
    [322043] = { "resonant_throatbands", 2 },
    [322025] = { "edge_of_hatred", 1 },
    [329207] = { "unbound_fortitude", 2 },
    [322036] = { "bloodstained_whetstone", 1 },
    [322030] = { "hurricane_heart", 1 },
    [322038] = { "succulent_carpaccio", 1 },
    [329146] = { "soulwrought_studs", 1 },
    [322023] = { "champions_decree", 1 },
    [322047] = { "brawlers_brass_knuckles", 1 },
    [329857] = { "deathseers_satchel", 3 },
    [329526] = { "wailing_winds", 1 },
    [329530] = { "storm_conduit", 1 },
    [329534] = { "deadened_earth", 1 },
    [329537] = { "essence_of_the_ancestors", 1 },
    [329576] = { "tsunami_relic", 1 },
    [329580] = { "ghost_bone", 1 },
    [329590] = { "elemental_core", 1 },
    [329538] = { "astral_bulwark", 1 },
    [329573] = { "vial_of_soothing_waters", 1 },
    [329595] = { "leeching_lilypad", 2 },
    [329726] = { "rimeblood", 2 },
    [329732] = { "untaintable_waters", 2 },
    [329768] = { "chains_of_devastation", 2 },
    [329793] = { "mawrats_on_ice", 2 },
    [329789] = { "deathseers_whip", 4 },
    [329798] = { "deeptremor_stone", 3 },
    [329883] = { "blackened_boulder", 3 },
    [329805] = { "shield_of_spirits", 3 },
    [330179] = { "heart_of_the_deathseer", 3 },
    [329937] = { "deathseer_choker", 3 },
    [329963] = { "deathseers_reins", 4 },
    [329817] = { "flowing_streams", 4 },
    [329811] = { "spike_of_the_ice_guardian", 4 },
    [329962] = { "furious_spirits", 4 },
    [329949] = { "blood_of_heroes", 3 },
    [329572] = { "flames_of_the_cauldron", 1 },
    [330383] = { "guardians_cudgel", 4 },
    [321924] = { "class_power", 1 },
    [321924] = { "class_power", 1 },
    [331463] = { "fogged_crystal", 4 },
    [331476] = { "bag_of_mawrat_eyes", 4 },
    [331370] = { "soulsteel_pinion", 4 },
    [331369] = { "acrobats_razor", 4 },
    [331367] = { "sigil_of_skoldus", 4 },
    [331365] = { "deadeye_satchel", 4 },
    [342540] = { "neural_pet_enhancer", 3 },
    [331187] = { "cadaverous_cleats", 3 },
    [331197] = { "soulforge_embers", 3 },
    [331338] = { "petrified_pet_food", 3 },
    [331300] = { "chelonian_crest", 3 },
    [342546] = { "mawrat_scent_gland", 3 },
    [331296] = { "forsworn_feather", 2 },
    [322852] = { "hunters_spoils", 2 },
    [331287] = { "bursting_tar", 2 },
    [331283] = { "peltsmans_grit", 2 },
    [331355] = { "craven_strategem", 2 },
    [331194] = { "scaredy_rat", 2 },
    [331455] = { "amplifying_mirror", 1 },
    [331193] = { "feline_femur", 1 },
    [331192] = { "necrotic_venom", 1 },
    [331190] = { "euphoria_emblem", 1 },
    [331357] = { "hateful_shardring", 1 },
    [331186] = { "beaststalkers_signet", 1 },
    [331185] = { "bone_barbs", 1 },
    [331183] = { "piercing_scope", 1 },
    [331179] = { "acrobats_rations", 1 },
    [331181] = { "sticky_tar", 1 },
    [321924] = { "class_power", 1 },
    [321924] = { "class_power", 1 },
    [333503] = { "first_steps", 4 },
    [343449] = { "flowing_potential_wraps", 4 },
    [343450] = { "terrorladen_slumbersand", 4 },
    [343451] = { "vein_rippers", 4 },
    [343452] = { "muffled_metronome", 4 },
    [321924] = { "class_power", 4 },
    [343446] = { "quicksilver_mixture", 3 },
    [343442] = { "draped_prism_shawl", 3 },
    [343392] = { "shimmering_cloaktrails", 3 },
    [333917] = { "shadowy_essence", 3 },
    [321924] = { "class_power", 3 },
    [321924] = { "class_power", 3 },
    [333910] = { "jack_of_all_trades", 4 },
    [333851] = { "thistler", 1 },
    [333847] = { "red_ink", 1 },
    [333765] = { "distracting_charges", 3 },
    [333763] = { "vial_of_unseen_poison", 2 },
    [333759] = { "leather_apron", 1 },
    [333512] = { "restless_onyx_geodes", 2 },
    [333511] = { "invigorating_shadowdust", 1 },
    [333510] = { "surefoot_grease", 3 },
    [333509] = { "scroll_of_forewarning", 2 },
    [333508] = { "the_last_blade", 1 },
    [333506] = { "unceasing_chain_link", 1 },
    [333505] = { "rupturing_spike", 2 },
    [333502] = { "slippery_wraithcoil", 1 },
    [333501] = { "pouch_of_soulash", 1 },
    [343389] = { "silent_footpads", 2 },
    [343382] = { "shadowlaced_armaments", 1 },
    [343381] = { "organized_vial_satchel", 1 },
    [329796] = { "string_of_fangs_and_talons", 1 },
    [343468] = { "staggered_stomps", 4 },
    [343461] = { "scales_of_order", 4 },
    [343822] = { "celestial_lasso", 4 },
    [331679] = { "fatal_flying_guillotine", 4 },
    [343795] = { "wrist_wraps_of_the_zen_master", 4 },
    [343793] = { "bottled_wind", 4 },
    [343790] = { "cloud_of_feathers", 2 },
    [331834] = { "balance_of_the_ox", 4 },
    [331830] = { "caught_by_the_dropkicks", 3 },
    [343788] = { "evertumbling_stone", 1 },
    [331826] = { "katamawri", 3 },
    [331667] = { "tiger_and_crane_figurines", 3 },
    [331823] = { "whirling_stormgem", 2 },
    [331663] = { "rolling_tigers", 3 },
    [331660] = { "bad_karma", 3 },
    [331655] = { "stroke_of_elegance", 3 },
    [331654] = { "amplified_samples", 2 },
    [321924] = { "class_power", 2 },
    [331650] = { "flowing_chi_rolls", 2 },
    [331647] = { "deathtouched_brew", 2 },
    [331641] = { "constellation_starchart", 2 },
    [331622] = { "hit_scheme", 1 },
    [331528] = { "corrosive_dosage", 1 },
    [331514] = { "tumbling_rollstone", 1 },
    [331512] = { "shadowboxing_treads", 1 },
    [331511] = { "36_pressure_point_technique", 1 },
    [331442] = { "celestial_dynasty", 1 },
    [331439] = { "fortified_leg_braces", 1 },
    [331426] = { "technique_of_the_rushing_tiger", 1 },
    [331390] = { "feathers_of_a_hundred_flocks", 1 },
    [322830] = { "dark_stalkers_draught", 4 },
    [322837] = { "cadaverous_eye", 4 },
    [322841] = { "furywing", 4 },
    [322843] = { "tormentors_spiked_noose", 4 },
    [322845] = { "heartpiercing_spine", 4 },
    [322851] = { "soulrender_of_zovaal", 2 },
    [322823] = { "willbreaker", 3 },
    [322825] = { "felborn_torch", 3 },
    [322826] = { "felborn_shield", 3 },
    [322829] = { "fury_wrappings", 3 },
    [322833] = { "shield_of_unending_fury", 3 },
    [322836] = { "shifting_signet", 3 },
    [322840] = { "forcewing", 3 },
    [322844] = { "blindfold_of_focus", 3 },
    [322847] = { "grim_tinder", 3 },
    [322849] = { "manafeeders_bib", 3 },
    [322850] = { "soarstone", 3 },
    [322824] = { "felborn_pendant", 2 },
    [322828] = { "demonglass_curio", 2 },
    [322831] = { "phantasmal_iris", 2 },
    [322832] = { "darkglare_medallion", 2 },
    [322834] = { "ragehoof", 2 },
    [322835] = { "mark_of_the_ogre", 3 },
    [322839] = { "fleetwing", 2 },
    [322846] = { "resonant_mawfang", 2 },
    [322848] = { "immolation_flux", 2 },
    [322822] = { "seekers_rage", 1 },
    [322827] = { "finelyhoned_bone_blades", 1 },
    [322838] = { "frenzywing", 1 },
    [322842] = { "ghastly_chains", 1 },
    [320800] = { "edgelurker", 3 },
    [325800] = { "phial_of_light", 2 },
    [325801] = { "phial_of_pain", 2 },
    [325830] = { "bottomless_chalice", 3 },
    [325867] = { "parliament_stone", 3 },
    [325890] = { "darksight_orbs", 4 },
    [325887] = { "strigidium", 4 },
    [326579] = { "torghast_ambassador", 3 },
    [327761] = { "negation_well", 3 },
    [329489] = { "singing_stones", 2 },
    [329482] = { "singing_stones_of_battle", 2 },
    [329485] = { "singing_stones_of_bravery", 2 },
    [329483] = { "singing_stones_of_courage", 2 },
    [329484] = { "singing_stones_of_intimidation", 2 },
    [329486] = { "singing_stones_of_terror", 2 },
    [329488] = { "singing_stones_of_unnerving", 2 },
    [329605] = { "power_overwhelming", 3 },
    [330551] = { "spellweavers_mojo", 4 },
    [330671] = { "remote_sheep_detonator", 3 },
    [330630] = { "alluring_cheese", 4 },
    [330579] = { "fire_juggler", 2 },
    [330666] = { "lycaras_twig", 1 },
    [330670] = { "curious_bramblepatch", 1 },
    [329800] = { "steelwood_slab", 1 },
    [330657] = { "writings_of_lycara", 1 },
    [329803] = { "plaguehardened_hide", 2 },
    [330672] = { "bloodtinged_teeth", 3 },
    [329959] = { "petrus_ring", 3 },
    [330652] = { "bottle_of_moonshine", 1 },
    [330653] = { "cloak_of_thorns", 1 },
    [329799] = { "circlet_of_weeds", 2 },
    [329802] = { "moonspirit_essence", 1 },
    [329970] = { "orbit_breaker", 3 },
    [329969] = { "sylvatican_charm", 3 },
    [329968] = { "oath_of_druids", 4 },
    [329960] = { "lycaras_bargain", 4 },
    [330274] = { "lycaras_sash", 4 },
    [330855] = { "creeping_freeze", 3 },
    [330897] = { "grasping_tendrils", 2 },
    [330904] = { "rootwood_scarab", 2 },
    [330915] = { "draught_of_midnight_blazes", 3 },
    [331227] = { "demonic_resolve", 1 },
    [331375] = { "revitalizing_spirit", 4 },
    [331345] = { "bountiful_souls", 1 },
    [331493] = { "darkest_hour", 4 },
    [331447] = { "demonic_bias", 3 },
    [331668] = { "brokers_purse", 3 },
    [331669] = { "brokers_purse", 3 },
    [331670] = { "brokers_purse", 3 },
    [331671] = { "brokers_purse", 3 },
    [331763] = { "warden_shackles", 4 },
    [332216] = { "chains_of_anguish", 4 },
    [332212] = { "occult_emitter", 2 },
    [332199] = { "phearomones", 3 },
    [332163] = { "slick_ice", 1 },
    [332125] = { "creeping_decay", 1 },
    [332001] = { "monstrous_concoction", 2 },
    [331931] = { "superstrain", 4 },
    [331921] = { "tome_of_swordplay", 1 },
    [331916] = { "force_pull", 3 },
    [332316] = { "bone_harvester", 3 },
    [331519] = { "the_horsemens_call", 4 },
    [331865] = { "skull_bloomer", 1 },
    [332398] = { "shattered_gauntlet", 1 },
    [332401] = { "vestige_of_hope", 1 },
    [332407] = { "defiled_prayer_beads", 1 },
    [332409] = { "winged_medallion", 1 },
    [332534] = { "soulforged_censer", 1 },
    [332539] = { "soultouched_reins", 1 },
    [332540] = { "ancient_writ_of_order", 1 },
    [332517] = { "death_turf", 2 },
    [332532] = { "boundless_fortitude", 3 },
    [332366] = { "ancient_drake_breath", 4 },
    [332541] = { "radiant_essence", 1 },
    [332542] = { "soulsteel_hasp", 3 },
    [332545] = { "ring_of_unburdening", 4 },
    [332548] = { "necromantic_bile", 1 },
    [332578] = { "bone_growing_juice", 4 },
    [332573] = { "lich_robes", 1 },
    [332584] = { "unquenchable_blade", 1 },
    [332603] = { "exterminator", 2 },
    [332627] = { "deadly_toll", 2 },
    [332628] = { "stalker_sling", 2 },
    [332691] = { "fallen_comrades_blindfold", 3 },
    [332685] = { "plaguebringer", 3 },
    [332739] = { "darkreavers_lens", 3 },
    [332592] = { "theory_of_justice", 2 },
    [332799] = { "blood_beacon", 1 },
    [332800] = { "pendrakes_visor", 3 },
    [332803] = { "gavel_of_true_judgment", 3 },
    [332806] = { "badge_of_the_mad_paragon", 4 },
    [332924] = { "bloodtinged_poker", 4 },
    [332861] = { "darkreavers_ward", 1 },
    [332939] = { "mark_of_conkquest", 3 },
    [332947] = { "pendrakes_brooch", 2 },
    [333041] = { "unbreakable_cuffs", 1 },
    [333038] = { "glass_eye_of_perfection", 2 },
    [333042] = { "contained_perpetual_explosion", 3 },
    [333093] = { "unstable_containment_crystal", 4 },
    [332880] = { "satchel_of_soul_dust", 2 },
    [332887] = { "smoking_ash_pile", 3 },
    [332897] = { "depleted_soul_vessel", 4 },
    [332907] = { "withered_root_cluster", 2 },
    [333024] = { "idol_of_lost_souls", 3 },
    [333029] = { "accursed_hand_wraps", 4 },
    [332807] = { "coldheart_plume", 4 },
    [333067] = { "rune_hunter", 2 },
    [333121] = { "of_dusk_and_dawn", 4 },
    [333124] = { "blightstone", 1 },
    [333334] = { "fossilized_bone_fragments", 2 },
    [333339] = { "splintered_elemental_rod", 3 },
    [333344] = { "hourglass_of_soul_dust", 4 },
    [333348] = { "crystalline_leaf", 2 },
    [333349] = { "bloody_thorn_stalk", 3 },
    [333352] = { "seeds_of_rampant_growth", 4 },
    [333355] = { "blood_stained_gauntlet", 2 },
    [333357] = { "elemental_conduit", 3 },
    [333366] = { "crystallized_elemental_heart", 4 },
    [333471] = { "undertakers_crown", 3 },
    [333480] = { "fel_scorched_contract", 3 },
    [333496] = { "fel_ignitor", 4 },
    [333585] = { "writhing_noose", 2 },
    [333598] = { "pridebreakers_anvil", 3 },
    [333620] = { "distillation_of_sin", 4 },
    [333608] = { "nightmare_tendrils", 4 },
    [333327] = { "corrupted_sapwood", 3 },
    [333388] = { "toxic_accumulator", 2 },
    [333761] = { "hunting_bola", 3 },
    [333786] = { "sinewsewn_tassels", 2 },
    [333858] = { "repulsive_pennant", 3 },
    [333891] = { "hateful_fetish", 4 },
    [333893] = { "fae_empowered_elixir", 4 },
    [333911] = { "branding_iron", 2 },
    [333927] = { "overgrowth_catalyst", 2 },
    [333937] = { "livingwood_pommel", 3 },
    [333949] = { "petrified_wildseed", 4 },
    [333996] = { "incriminating_ledger", 3 },
    [334005] = { "perpetual_sinstone", 4 },
    [334314] = { "draught_of_midday_calm", 1 },
    [334337] = { "oversized_boots", 3 },
    [334393] = { "draught_of_waning_twilight", 4 },
    [334412] = { "preserved_ironwood_seed", 4 },
    [334459] = { "silent_spirit", 1 },
    [329815] = { "affinity_stones", 2 },
    [334592] = { "soulborne_clasp", 3 },
    [334604] = { "leaf_on_the_water", 2 },
    [334730] = { "pendrakes_locket", 2 },
    [334992] = { "thread_of_beads", 2 },
    [335054] = { "faintly_glowing_ember", 2 },
    [335069] = { "negative_energy_token", 2 },
    [335088] = { "small_smooth_spike", 3 },
    [335095] = { "shard_of_milkglass", 4 },
    [332808] = { "pendrakes_shattered_aegis", 3 },
    [335424] = { "soultouched_spurs", 1 },
    [335441] = { "golden_plume", 4 },
    [335557] = { "pendulum_of_impending_doom", 2 },
    [335562] = { "chakram_throwers", 3 },
    [335566] = { "bag_of_munitions", 4 },
    [335601] = { "shard_of_silvered_glass", 2 },
    [335600] = { "glowing_pollen_satchel", 2 },
    [335608] = { "majestic_antler_fragment", 3 },
    [335611] = { "capsule_of_pure_moonlight", 4 },
    [335620] = { "serrated_arrowhead", 2 },
    [335630] = { "bloodsoaked_bow_string", 3 },
    [335632] = { "deathdealers_scope", 4 },
    [335607] = { "mote_of_blood_thirst", 3 },
    [335643] = { "dried_blood_of_the_beast", 4 },
    [335644] = { "white_pollen_mote", 2 },
    [335645] = { "perfectly_preserved_insect", 4 },
    [335689] = { "dried_flower_petal", 3 },
    [335741] = { "twin_friendship_ring", 2 },
    [335747] = { "hardened_bark_sliver", 3 },
    [335754] = { "coil_of_wire", 4 },
    [335766] = { "coalesced_spirit_droplet", 2 },
    [335771] = { "energy_focusing_crystal", 3 },
    [336387] = { "sealed_essence_sphere", 4 },
    [336485] = { "undead_bone_ash", 2 },
    [336489] = { "hallowed_candle", 3 },
    [336492] = { "dried_fire_flower", 2 },
    [336493] = { "pristine_fallen_leaf", 4 },
    [336549] = { "hallowed_silverglass", 4 },
    [336612] = { "worn_leather_strap", 2 },
    [336615] = { "darkened_ember", 3 },
    [336625] = { "tome_of_the_vanquished", 4 },
    [336643] = { "calibrated_sextant", 3 },
    [337585] = { "the_stone_ward", 3 },
    [337613] = { "erratic_howler", 3 },
    [337620] = { "unstable_form", 3 },
    [337645] = { "brittle_bone_dust", 3 },
    [337657] = { "the_fifth_skull", 3 },
    [337719] = { "heartseeking_fang", 3 },
    [337728] = { "kerims_amulet_of_laceration", 3 },
    [337750] = { "fractured_phantasma_lure", 3 },
    [337765] = { "reinforced_lure_casing", 3 },
    [337878] = { "dark_fortress", 3 },
    [337881] = { "fallen_armaments", 3 },
    [337928] = { "potent_acid_gland", 3 },
    [337938] = { "lumbering_form", 3 },
    [338023] = { "irritating_moth_dust", 3 },
    [338029] = { "shimmering_wingcape", 3 },
    [338062] = { "stoneflesh_figurine", 3 },
    [338072] = { "gruuls_shattered_toenail", 3 },
    [338446] = { "coffer_of_spectral_whispers", 3 },
    [338449] = { "elongated_skeletal_arms", 3 },
    [338512] = { "gaze_of_death", 3 },
    [338596] = { "defiance_of_death", 3 },
    [338616] = { "pulsing_rothive", 3 },
    [338631] = { "swarm_form", 3 },
    [338705] = { "overgrowth_seedling", 3 },
    [338733] = { "everbeating_heart", 3 },
    [338922] = { "soulward_clasp", 3 },
    [338948] = { "vlaras_cape_of_subterfuge", 3 },
    [339024] = { "ephemeral_effigy", 3 },
    [339026] = { "resonating_effigy", 3 },
    [339111] = { "suffused_noble_writ", 3 },
    [339126] = { "imperial_warrant", 3 },
    [340180] = { "vial_of_unbridled_darkness", 3 },
    [340435] = { "flask_of_unbridled_darkness", 3 },
    [340445] = { "censer_of_suffocating_shadows", 1 },
    [340448] = { "tollars_dancing_garments", 2 },
    [340451] = { "form_of_darkness", 4 },
    [340643] = { "wild_flail_of_tollar", 2 },
    [340672] = { "globule_of_cloying_darkness", 2 },
    [340676] = { "tollars_hidden_flask_of_fortification", 1 },
    [340691] = { "weight_of_darkness", 1 },
    [340742] = { "sands_of_desperation", 3 },
    [340745] = { "oddly_intangible_key", 2 },
    [340774] = { "tollars_willful_blinder", 1 },
    [340801] = { "huddled_carvings", 3 },
    [340850] = { "harvester_of_shadows", 3 },
    [341137] = { "writhing_shadowtendrils", 2 },
    [340725] = { "engorged_limb", 2 },
    [340728] = { "fatal_grasp", 3 },
    [340755] = { "prosthetic_grabber", 4 },
    [340928] = { "formless_executioner", 2 },
    [341095] = { "swarm_host", 3 },
    [341098] = { "deaths_deliverance", 4 },
    [341324] = { "uncontrolled_darkness", 3 },
    [341576] = { "howling_soulcore", 3 },
    [341658] = { "one_piece_of_many", 2 },
    [341710] = { "echoing_amplifier", 1 },
    [341721] = { "screaming_statuettes", 1 },
    [341737] = { "aural_fracture", 4 },
    [341745] = { "improbably_shifting_orb", 3 },
    [341753] = { "dangling_soulcatcher", 2 },
    [341762] = { "shifting_sustenance", 1 },
    [341780] = { "incorporeal_weave", 1 },
    [341798] = { "brand_of_instability", 2 },
    [341805] = { "twisted_idol", 3 },
    [341813] = { "contorted_hourglass", 4 },
    [341817] = { "aegis_of_lost_souls", 1 },
    [341951] = { "essence_siphoner", 1 },
    [341954] = { "the_spectral_hands_of_arcadne", 1 },
    [341973] = { "soulburst_charm", 2 },
    [342008] = { "arcadnes_feasting_mark", 1 },
    [342023] = { "arcadnes_ritual_mask", 2 },
    [342359] = { "power_overwhelming", 2 },
    [342360] = { "one_with_death", 3 },
    [342362] = { "chilling_touch", 4 },
    [342370] = { "infinite_power", 2 },
    [342371] = { "fae_concentration", 3 },
    [342372] = { "fae_tendrils", 4 },
    [342374] = { "lingering_torments", 2 },
    [342376] = { "maliced_rumination", 3 },
    [342377] = { "malevolence", 4 },
    [342382] = { "necromight_infusion", 2 },
    [342387] = { "baroness_lost_plagueloop", 3 },
    [342390] = { "maldos_soul_exploder", 4 },
    [342397] = { "pixie_dust", 2 },
    [342409] = { "dreamspun_mushrooms", 3 },
    [342399] = { "faebliss_lantern", 4 },
    [342411] = { "mindmancer_handgloves", 2 },
    [342412] = { "earworm", 3 },
    [342413] = { "cracked_mindscreecher", 4 },
    [342632] = { "malevolent_stitching", 3 },
    [342664] = { "musophobic_femur", 3 },
    [342710] = { "volatile_flesh", 4 },
    [342757] = { "clinging_fog", 2 },
    [342789] = { "smuggled_wildseed", 3 },
    [342779] = { "crystallized_dreams", 4 },
    [342793] = { "murmuring_shawl", 2 },
    [342799] = { "gnarled_key", 3 },
    [342818] = { "mask_of_withering", 4 },
    [343237] = { "boiling_poison_sores", 2 },
    [343245] = { "backup_poison_injectors", 3 },
    [343251] = { "poisoned_rush", 4 },
    [345632] = { "remorse", 2 },
    [343377] = { "spiked_lashes", 3 },
    [343379] = { "prolonged_pain", 4 },
    [344580] = { "deep_reflection", 2 },
    [344581] = { "fading_memory_shards", 3 },
    [344588] = { "tattered_teachings", 4 },
    [344590] = { "dowsing_rod", 3 },
    [342458] = { "fae_aftershock", 2 },
    [295073] = { "satchel_of_phantasma", 2 },
    [332543] = { "entropic_pool", 4 },
}


local all = class.specs[ 0 ]


for k, v in pairs( powers ) do
    all:RegisterAura( v[1], {
        id = k,
        duration = 3600
    } )
end