--
-- Generated on 2021-05-19T06:39:06Z. DO NOT EDIT.
--
-- Curr. Ranges: {"epic":[1451,3475],"superior":[1276,1450],"uncommon":[676,1275],"common":[200,675]}
-- Prev. Ranges: {"epic":[null,null],"superior":[null,null],"uncommon":[null,null],"common":[200,null]}
--
local _, ns = ...

ns.scoreTiers = {
	[1] = { ["score"] = 3475, ["color"] = { 1.00, 0.50, 0.00 } },		-- |cffff80003475+|r
	[2] = { ["score"] = 3370, ["color"] = { 1.00, 0.50, 0.04 } },		-- |cffff7f0b3370+|r
	[3] = { ["score"] = 3345, ["color"] = { 1.00, 0.49, 0.08 } },		-- |cfffe7e143345+|r
	[4] = { ["score"] = 3320, ["color"] = { 1.00, 0.49, 0.11 } },		-- |cfffe7d1b3320+|r
	[5] = { ["score"] = 3295, ["color"] = { 0.99, 0.49, 0.13 } },		-- |cfffd7c203295+|r
	[6] = { ["score"] = 3275, ["color"] = { 0.99, 0.48, 0.15 } },		-- |cfffc7b253275+|r
	[7] = { ["score"] = 3250, ["color"] = { 0.99, 0.48, 0.16 } },		-- |cfffc7a293250+|r
	[8] = { ["score"] = 3225, ["color"] = { 0.98, 0.47, 0.18 } },		-- |cfffb792d3225+|r
	[9] = { ["score"] = 3200, ["color"] = { 0.98, 0.47, 0.19 } },		-- |cfffb78313200+|r
	[10] = { ["score"] = 3175, ["color"] = { 0.98, 0.47, 0.21 } },		-- |cfffa77353175+|r
	[11] = { ["score"] = 3155, ["color"] = { 0.98, 0.46, 0.22 } },		-- |cfffa76383155+|r
	[12] = { ["score"] = 3130, ["color"] = { 0.98, 0.46, 0.24 } },		-- |cfff9753c3130+|r
	[13] = { ["score"] = 3105, ["color"] = { 0.98, 0.45, 0.25 } },		-- |cfff9743f3105+|r
	[14] = { ["score"] = 3080, ["color"] = { 0.97, 0.45, 0.26 } },		-- |cfff874423080+|r
	[15] = { ["score"] = 3055, ["color"] = { 0.97, 0.45, 0.27 } },		-- |cfff773453055+|r
	[16] = { ["score"] = 3035, ["color"] = { 0.97, 0.45, 0.28 } },		-- |cfff772483035+|r
	[17] = { ["score"] = 3010, ["color"] = { 0.96, 0.44, 0.29 } },		-- |cfff6714b3010+|r
	[18] = { ["score"] = 2985, ["color"] = { 0.96, 0.44, 0.31 } },		-- |cfff5704e2985+|r
	[19] = { ["score"] = 2960, ["color"] = { 0.96, 0.44, 0.32 } },		-- |cfff56f512960+|r
	[20] = { ["score"] = 2935, ["color"] = { 0.96, 0.43, 0.33 } },		-- |cfff46e542935+|r
	[21] = { ["score"] = 2915, ["color"] = { 0.95, 0.43, 0.34 } },		-- |cfff36d562915+|r
	[22] = { ["score"] = 2890, ["color"] = { 0.95, 0.42, 0.35 } },		-- |cfff36c592890+|r
	[23] = { ["score"] = 2865, ["color"] = { 0.95, 0.42, 0.36 } },		-- |cfff26b5c2865+|r
	[24] = { ["score"] = 2840, ["color"] = { 0.95, 0.42, 0.37 } },		-- |cfff16a5e2840+|r
	[25] = { ["score"] = 2815, ["color"] = { 0.95, 0.41, 0.38 } },		-- |cfff169612815+|r
	[26] = { ["score"] = 2795, ["color"] = { 0.94, 0.41, 0.39 } },		-- |cfff068642795+|r
	[27] = { ["score"] = 2770, ["color"] = { 0.94, 0.40, 0.40 } },		-- |cffef67662770+|r
	[28] = { ["score"] = 2745, ["color"] = { 0.93, 0.40, 0.41 } },		-- |cffee66692745+|r
	[29] = { ["score"] = 2720, ["color"] = { 0.93, 0.40, 0.42 } },		-- |cffee656b2720+|r
	[30] = { ["score"] = 2695, ["color"] = { 0.93, 0.39, 0.43 } },		-- |cffed646e2695+|r
	[31] = { ["score"] = 2675, ["color"] = { 0.93, 0.39, 0.44 } },		-- |cffec63702675+|r
	[32] = { ["score"] = 2650, ["color"] = { 0.92, 0.38, 0.45 } },		-- |cffeb62732650+|r
	[33] = { ["score"] = 2625, ["color"] = { 0.92, 0.38, 0.46 } },		-- |cffea61752625+|r
	[34] = { ["score"] = 2600, ["color"] = { 0.92, 0.38, 0.47 } },		-- |cffea60782600+|r
	[35] = { ["score"] = 2575, ["color"] = { 0.91, 0.37, 0.48 } },		-- |cffe95f7a2575+|r
	[36] = { ["score"] = 2555, ["color"] = { 0.91, 0.37, 0.49 } },		-- |cffe85e7d2555+|r
	[37] = { ["score"] = 2530, ["color"] = { 0.91, 0.36, 0.50 } },		-- |cffe75d7f2530+|r
	[38] = { ["score"] = 2505, ["color"] = { 0.90, 0.36, 0.51 } },		-- |cffe65c822505+|r
	[39] = { ["score"] = 2480, ["color"] = { 0.90, 0.36, 0.52 } },		-- |cffe55b842480+|r
	[40] = { ["score"] = 2455, ["color"] = { 0.89, 0.35, 0.53 } },		-- |cffe45a872455+|r
	[41] = { ["score"] = 2435, ["color"] = { 0.89, 0.35, 0.54 } },		-- |cffe359892435+|r
	[42] = { ["score"] = 2410, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe2598c2410+|r
	[43] = { ["score"] = 2385, ["color"] = { 0.88, 0.35, 0.56 } },		-- |cffe1588e2385+|r
	[44] = { ["score"] = 2360, ["color"] = { 0.88, 0.34, 0.57 } },		-- |cffe057912360+|r
	[45] = { ["score"] = 2335, ["color"] = { 0.87, 0.34, 0.58 } },		-- |cffdf56932335+|r
	[46] = { ["score"] = 2315, ["color"] = { 0.87, 0.33, 0.59 } },		-- |cffde55962315+|r
	[47] = { ["score"] = 2290, ["color"] = { 0.87, 0.33, 0.60 } },		-- |cffdd54982290+|r
	[48] = { ["score"] = 2265, ["color"] = { 0.86, 0.33, 0.60 } },		-- |cffdc539a2265+|r
	[49] = { ["score"] = 2240, ["color"] = { 0.86, 0.32, 0.62 } },		-- |cffdb529d2240+|r
	[50] = { ["score"] = 2215, ["color"] = { 0.85, 0.32, 0.62 } },		-- |cffda519f2215+|r
	[51] = { ["score"] = 2195, ["color"] = { 0.85, 0.31, 0.64 } },		-- |cffd850a22195+|r
	[52] = { ["score"] = 2170, ["color"] = { 0.84, 0.31, 0.64 } },		-- |cffd74fa42170+|r
	[53] = { ["score"] = 2145, ["color"] = { 0.84, 0.31, 0.65 } },		-- |cffd64ea72145+|r
	[54] = { ["score"] = 2120, ["color"] = { 0.84, 0.30, 0.66 } },		-- |cffd54da92120+|r
	[55] = { ["score"] = 2095, ["color"] = { 0.83, 0.30, 0.67 } },		-- |cffd34cac2095+|r
	[56] = { ["score"] = 2075, ["color"] = { 0.82, 0.29, 0.68 } },		-- |cffd24bae2075+|r
	[57] = { ["score"] = 2050, ["color"] = { 0.82, 0.29, 0.69 } },		-- |cffd14ab02050+|r
	[58] = { ["score"] = 2025, ["color"] = { 0.81, 0.29, 0.70 } },		-- |cffcf49b32025+|r
	[59] = { ["score"] = 2000, ["color"] = { 0.81, 0.29, 0.71 } },		-- |cffce49b52000+|r
	[60] = { ["score"] = 1975, ["color"] = { 0.80, 0.28, 0.72 } },		-- |cffcd48b81975+|r
	[61] = { ["score"] = 1955, ["color"] = { 0.80, 0.28, 0.73 } },		-- |cffcb47ba1955+|r
	[62] = { ["score"] = 1930, ["color"] = { 0.79, 0.27, 0.74 } },		-- |cffca46bd1930+|r
	[63] = { ["score"] = 1905, ["color"] = { 0.78, 0.27, 0.75 } },		-- |cffc845bf1905+|r
	[64] = { ["score"] = 1880, ["color"] = { 0.78, 0.27, 0.76 } },		-- |cffc744c21880+|r
	[65] = { ["score"] = 1855, ["color"] = { 0.77, 0.26, 0.77 } },		-- |cffc543c41855+|r
	[66] = { ["score"] = 1835, ["color"] = { 0.76, 0.26, 0.78 } },		-- |cffc342c61835+|r
	[67] = { ["score"] = 1810, ["color"] = { 0.76, 0.25, 0.79 } },		-- |cffc241c91810+|r
	[68] = { ["score"] = 1785, ["color"] = { 0.75, 0.25, 0.80 } },		-- |cffc040cb1785+|r
	[69] = { ["score"] = 1760, ["color"] = { 0.75, 0.25, 0.81 } },		-- |cffbe40ce1760+|r
	[70] = { ["score"] = 1735, ["color"] = { 0.74, 0.25, 0.82 } },		-- |cffbd3fd01735+|r
	[71] = { ["score"] = 1715, ["color"] = { 0.73, 0.24, 0.83 } },		-- |cffbb3ed31715+|r
	[72] = { ["score"] = 1690, ["color"] = { 0.73, 0.24, 0.84 } },		-- |cffb93dd51690+|r
	[73] = { ["score"] = 1665, ["color"] = { 0.72, 0.24, 0.85 } },		-- |cffb73cd81665+|r
	[74] = { ["score"] = 1640, ["color"] = { 0.71, 0.23, 0.85 } },		-- |cffb53bda1640+|r
	[75] = { ["score"] = 1615, ["color"] = { 0.70, 0.23, 0.87 } },		-- |cffb33add1615+|r
	[76] = { ["score"] = 1595, ["color"] = { 0.69, 0.23, 0.87 } },		-- |cffb13adf1595+|r
	[77] = { ["score"] = 1570, ["color"] = { 0.69, 0.22, 0.89 } },		-- |cffaf39e21570+|r
	[78] = { ["score"] = 1545, ["color"] = { 0.67, 0.22, 0.89 } },		-- |cffac38e41545+|r
	[79] = { ["score"] = 1520, ["color"] = { 0.67, 0.22, 0.91 } },		-- |cffaa37e71520+|r
	[80] = { ["score"] = 1495, ["color"] = { 0.66, 0.22, 0.91 } },		-- |cffa837e91495+|r
	[81] = { ["score"] = 1475, ["color"] = { 0.65, 0.21, 0.93 } },		-- |cffa536ec1475+|r
	[82] = { ["score"] = 1450, ["color"] = { 0.64, 0.21, 0.93 } },		-- |cffa335ee1450+|r
	[83] = { ["score"] = 1420, ["color"] = { 0.59, 0.26, 0.93 } },		-- |cff9643ec1420+|r
	[84] = { ["score"] = 1395, ["color"] = { 0.53, 0.31, 0.91 } },		-- |cff884ee91395+|r
	[85] = { ["score"] = 1370, ["color"] = { 0.47, 0.34, 0.91 } },		-- |cff7957e71370+|r
	[86] = { ["score"] = 1345, ["color"] = { 0.41, 0.37, 0.89 } },		-- |cff695ee41345+|r
	[87] = { ["score"] = 1320, ["color"] = { 0.33, 0.40, 0.89 } },		-- |cff5565e21320+|r
	[88] = { ["score"] = 1300, ["color"] = { 0.23, 0.42, 0.87 } },		-- |cff3b6bdf1300+|r
	[89] = { ["score"] = 1275, ["color"] = { 0.00, 0.44, 0.87 } },		-- |cff0070dd1275+|r
	[90] = { ["score"] = 1225, ["color"] = { 0.14, 0.46, 0.84 } },		-- |cff2476d71225+|r
	[91] = { ["score"] = 1200, ["color"] = { 0.20, 0.48, 0.82 } },		-- |cff337bd11200+|r
	[92] = { ["score"] = 1180, ["color"] = { 0.24, 0.51, 0.80 } },		-- |cff3e81cb1180+|r
	[93] = { ["score"] = 1155, ["color"] = { 0.27, 0.53, 0.77 } },		-- |cff4687c51155+|r
	[94] = { ["score"] = 1130, ["color"] = { 0.30, 0.55, 0.75 } },		-- |cff4d8dbf1130+|r
	[95] = { ["score"] = 1105, ["color"] = { 0.32, 0.57, 0.73 } },		-- |cff5292b91105+|r
	[96] = { ["score"] = 1080, ["color"] = { 0.34, 0.60, 0.70 } },		-- |cff5698b21080+|r
	[97] = { ["score"] = 1060, ["color"] = { 0.35, 0.62, 0.67 } },		-- |cff599eac1060+|r
	[98] = { ["score"] = 1035, ["color"] = { 0.36, 0.64, 0.65 } },		-- |cff5ca4a61035+|r
	[99] = { ["score"] = 1010, ["color"] = { 0.37, 0.67, 0.62 } },		-- |cff5eaa9f1010+|r
	[100] = { ["score"] = 985, ["color"] = { 0.37, 0.69, 0.60 } },		-- |cff5fb099985+|r
	[101] = { ["score"] = 960, ["color"] = { 0.37, 0.71, 0.57 } },		-- |cff5fb692960+|r
	[102] = { ["score"] = 940, ["color"] = { 0.37, 0.74, 0.55 } },		-- |cff5fbc8b940+|r
	[103] = { ["score"] = 915, ["color"] = { 0.37, 0.76, 0.52 } },		-- |cff5fc284915+|r
	[104] = { ["score"] = 890, ["color"] = { 0.37, 0.78, 0.49 } },		-- |cff5ec87d890+|r
	[105] = { ["score"] = 865, ["color"] = { 0.36, 0.81, 0.46 } },		-- |cff5cce75865+|r
	[106] = { ["score"] = 840, ["color"] = { 0.35, 0.83, 0.43 } },		-- |cff59d46d840+|r
	[107] = { ["score"] = 820, ["color"] = { 0.34, 0.85, 0.39 } },		-- |cff56da64820+|r
	[108] = { ["score"] = 795, ["color"] = { 0.32, 0.88, 0.36 } },		-- |cff51e05b795+|r
	[109] = { ["score"] = 770, ["color"] = { 0.30, 0.90, 0.32 } },		-- |cff4ce651770+|r
	[110] = { ["score"] = 745, ["color"] = { 0.27, 0.93, 0.27 } },		-- |cff45ec46745+|r
	[111] = { ["score"] = 720, ["color"] = { 0.24, 0.95, 0.22 } },		-- |cff3cf338720+|r
	[112] = { ["score"] = 700, ["color"] = { 0.19, 0.98, 0.15 } },		-- |cff31f926700+|r
	[113] = { ["score"] = 675, ["color"] = { 0.12, 1.00, 0.00 } },		-- |cff1eff00675+|r
	[114] = { ["score"] = 650, ["color"] = { 0.25, 1.00, 0.16 } },		-- |cff41ff28650+|r
	[115] = { ["score"] = 625, ["color"] = { 0.34, 1.00, 0.24 } },		-- |cff57ff3c625+|r
	[116] = { ["score"] = 600, ["color"] = { 0.41, 1.00, 0.30 } },		-- |cff68ff4c600+|r
	[117] = { ["score"] = 575, ["color"] = { 0.46, 1.00, 0.35 } },		-- |cff76ff5a575+|r
	[118] = { ["score"] = 550, ["color"] = { 0.51, 1.00, 0.40 } },		-- |cff83ff67550+|r
	[119] = { ["score"] = 525, ["color"] = { 0.56, 1.00, 0.45 } },		-- |cff8fff73525+|r
	[120] = { ["score"] = 500, ["color"] = { 0.60, 1.00, 0.50 } },		-- |cff9aff7f500+|r
	[121] = { ["score"] = 475, ["color"] = { 0.64, 1.00, 0.54 } },		-- |cffa4ff8a475+|r
	[122] = { ["score"] = 450, ["color"] = { 0.68, 1.00, 0.58 } },		-- |cffaeff95450+|r
	[123] = { ["score"] = 425, ["color"] = { 0.72, 1.00, 0.63 } },		-- |cffb7ffa0425+|r
	[124] = { ["score"] = 400, ["color"] = { 0.75, 1.00, 0.67 } },		-- |cffc0ffab400+|r
	[125] = { ["score"] = 375, ["color"] = { 0.79, 1.00, 0.71 } },		-- |cffc9ffb5375+|r
	[126] = { ["score"] = 350, ["color"] = { 0.82, 1.00, 0.75 } },		-- |cffd1ffc0350+|r
	[127] = { ["score"] = 325, ["color"] = { 0.85, 1.00, 0.80 } },		-- |cffd9ffcb325+|r
	[128] = { ["score"] = 300, ["color"] = { 0.88, 1.00, 0.84 } },		-- |cffe1ffd5300+|r
	[129] = { ["score"] = 275, ["color"] = { 0.91, 1.00, 0.88 } },		-- |cffe9ffe0275+|r
	[130] = { ["score"] = 250, ["color"] = { 0.94, 1.00, 0.92 } },		-- |cfff0ffea250+|r
	[131] = { ["score"] = 225, ["color"] = { 0.97, 1.00, 0.96 } },		-- |cfff8fff5225+|r
	[132] = { ["score"] = 200, ["color"] = { 1.00, 1.00, 1.00 } },		-- |cffffffff200+|r
}

ns.scoreTiersSimple = {
	[1] = { ["score"] = 3475, ["quality"] = 6 },
	[2] = { ["score"] = 1451, ["quality"] = 5 },
	[3] = { ["score"] = 1276, ["quality"] = 4 },
	[4] = { ["score"] = 676, ["quality"] = 3 },
	[5] = { ["score"] = 200, ["quality"] = 2 }
}
ns.previousScoreTiers = {
}

ns.previousScoreTiersSimple = {
	[1] = { ["score"] = 200, ["quality"] = 2 }
}
