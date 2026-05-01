setupcustommap() {
	if (getdvar("mapname") == "mp_nuketown_2020")
	{
		level thread nuketown();
	}
	if (getdvar("mapname") == "mp_hijacked")
	{
		level thread hijacked();
	}
	if (getdvar("mapname") == "mp_express")
	{
		level thread express();
	}
	if (getdvar("mapname") == "mp_meltdown")
	{
		level thread meltdown();
	}
	if (getdvar("mapname") == "mp_drone")
	{
		level thread drone();
	}
	if (getdvar("mapname") == "mp_carrier")
	{
		level thread carrier();
	}
	if (getdvar("mapname") == "mp_overflow")
	{
		level thread overflow();
	}
	if (getdvar("mapname") == "mp_slums")
	{
		level thread slums();
	}
	if (getdvar("mapname") == "mp_turbine")
	{
		level thread turbine();
	}
	if (getdvar("mapname") == "mp_raid")
	{
		level thread raid();
	}
	if (getdvar("mapname") == "mp_la")
	{
		level thread aftermath();
	}
	if (getdvar("mapname") == "mp_dockside")
	{
		level thread cargo();
	}
	if (getdvar("mapname") == "mp_village")
	{
		level thread standoff();
	}
	if (getdvar("mapname") == "mp_nightclub")
	{
		level thread plaza();
	}
	if (getdvar("mapname") == "mp_socotra")
	{
		level thread yemen();
	}
	if (getdvar("mapname") == "mp_dig")
	{
		level thread dig();
	}
	if (getdvar("mapname") == "mp_pod")
	{
		level thread pod();
	}
	if (getdvar("mapname") == "mp_takeoff")
	{
		level thread takeoff();
	}
	if (getdvar("mapname") == "mp_frostbite")
	{
		level thread frost();
	}
	if (getdvar("mapname") == "mp_mirage")
	{
		level thread mirage();
	}
	if (getdvar("mapname") == "mp_hydro")
	{
		level thread hydro();
	}
	if (getdvar("mapname") == "mp_skate")
	{
		level thread grind();
	}
	if (getdvar("mapname") == "mp_downhill")
	{
		level thread downhill();
	}
	if (getdvar("mapname") == "mp_concert")
	{
		level thread encore();
	}
	if (getdvar("mapname") == "mp_vertigo")
	{
		level thread vertigo();
	}
	if (getdvar("mapname") == "mp_magma")
	{
		level thread magma();
	}
	if (getdvar("mapname") == "mp_studio")
	{
		level thread studio();
	}
	if (getdvar("mapname") == "mp_paintball")
	{
		level thread rush();
	}
	if (getdvar("mapname") == "mp_castaway")
	{
		level thread cove();
	}
	if (getdvar("mapname") == "mp_bridge")
	{
		level thread detour();
	}
	if (getdvar("mapname") == "mp_uplink")
	{
		level thread uplink();
	}

}

nuketown() {
	level thread removeskybarrier();
	ents = getentarray();
	for (i=0; i<ents.size; i++) {
		if (issubstr(ents[i].classname, "trigger_hurt")) {
			ents[i].origin = (0, 0, 9999999);
		}
	}
	createwall((-1764.85, 2000.12, -62.375), (-1764.85, 1257.29, 54.2165), 1);
	createwall((1616.64, 1224.47, -62.375), (1579.93, 2106.39, 31.2165), 1);
	createwall((-1730.21, 2012.1, -62.375), (1212.58, 2178.81, 31.2165), 0);
	createwall((-332.763, 1607.79, -62.375), (-539.104, 1878.52, 31.2165), 0);
	createwall((377.98, 1722.92, -62.375), (-511.404, 1879.66, 31.2165), 0);
	createwall((1195.64, 2178.51, -62.375), (1582, 2090.19, 31.2165), 0);
	createwall((349.356, 1693.02, -62.375), (304.849, 1572.35, 31.2165), 0);
	createflag((17.9331, 68.6009, -67.5458), (-875.736, 397.349, -184.875), 0, 0);
	createflag((-943.075, 674.018, -184.875), (-515.929, 1085.88, -62.375), 0, 0);
	createmysterybox((1571.41, 1478.37, -62.375), (0, 180, 0), 180);
	createwall((404.843, 1728.89, -62.375), (452.982, 1870.49, 31.2165), 0);
	createwall((491.337, 1985.94, -62.375), (542.425, 2152.52, 31.2165), 0);
	createdoor((440.61, 1727.37, -62.375), (494.772, 1893.17, -62.375), 2, (90, 0, 20), 3, 2, 30, 80);
	createflag((1543.28, 1233.26, -62.375), (765.379, 339.959, -56.875), 0, 0);
	createdoor((752.023, 346.572, 79.125), (785.033, 234.903, 79.125), 2, (90, 0, 160), 1, 2, 25, 80);
	createwall((605.158, -5.16187, 31.77), (507.489, -26.531, 32.7705), 0);
	createmysterybox((721.65, 65.811, 79.125), (0, 195, 0), 200);
	createturret((1220.55, 1426.23, -62.375), (0, 180, 0), "auto_gun_turret_mp");

}

hijacked() {
	level thread removeskybarrier();
	createramp((-3485.7, 58.2416, -288.875), (-3967.89, -76.5387, -130.921));
	creategrid((-4040.98, 38.658, -145.19), (-4215.56, -327.445, -175.015));
	createwall((-4248.03, -280.528, -91.4418), (-4267.57, 72.0809, -93.1179));
	createdoor((-4025.07, -225.356, -129.315), (-3972.32, -76.5683, -111.295), 3, (90, 90, 90), 6, 2, 50, 80);
	createramp((-4207.59, 84.9128, -130.665), (-4216.61, 335.209, 0.237621));
	creategrid((-4216.61, 335.209, 0.237621), (-3896.09, 554.702, -18.4181));
	createdoor((-4059.96, 302.743, 16.1126), (-4207.7, 290.502, 14.9669), 3, (90, 0, 90), 4, 2, 25, 80);
	createwall((-4247.47, 600.345, 44.2502), (-3867.8, 605.476, 47.9234));
	createwall((-4247.47, 600.345, 44.2502), (-4260.38, 342.388, 51.1453));
	createzipline((-4396.06, -548.843, -305.479), (-2745.17, -19622.3, -45.5649), 4, 1);
	createramp((-2905.14, -19672.4, -94.3158), (-2430.67, -19663.2, -89.3319));

}

express() {
	level thread removeskybarrier();
	createmysterybox((-3494, -3633, 428), (0, 73, 0), 900);
	createmysterybox((-3537, -3772, 428), (0, 73, 0), 900);
	createmysterybox((2850, -1032, -120), (0, -90, 0), 900);
	createzipline((-4313, -3273, -30), (2226, 1050, -120), 2, 1);
	createwall((164, -2249, 164), (33.5, -2075, 165), 1);
	createflag((264, 95.5, -15), (97, -2429, 163), 0, 0);
	createflag((2025, -1006, -120), (1680, -3, 81), 0, 0);
	createdoor((2849, -696, -120), (3151, -20, -100), 2, (90, 90, 0), 3, 2, 30, 80);
	createobject("p6_bullet_train_engine_rev", (58, -2727, 110), (8, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-135, -2555, 110), (0, -53, 0));
	createobject("p6_bullet_train_engine_rev", (0, -2500, 138), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-340, -2770, 135), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-680, -3040, 135), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-1020, -3310, 135), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-1360, -3580, 135), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-1700, -3850, 135), (180, -141, 0));
	createobject("p6_bullet_train_engine_rev", (-1944, -4149, 135), (180, 164, 0));
	createobject("p6_bullet_train_car", (-2344, -4035, 135), (160, 164, 0));
	createobject("p6_bullet_train_car", (-2747, -3920, 280), (160, 164, 0));
	createobject("p6_bullet_train_car", (-3147, -3805, 435), (180, 164, 0));
	createobject("p6_bullet_train_car", (-3911, -3582, 55), (130, -16, 0));
	createobject("p6_bullet_train_car", (-3990, -3558, -15), (134, -16, 0));
	createobject("p6_bullet_train_engine_rev", (-2060, -4325, 132), (-90, -102, 0));
	createobject("p6_bullet_train_engine_rev", (-2180, -4315, 250), (-90, -102, 0));
	createobject("p6_bullet_train_engine_rev", (-3600, -3796, 370), (0, -15, 0));
	createobject("p6_bullet_train_engine_rev", (-3520, -3568, 370), (0, -15, 0));
	createobject("p6_bullet_train_engine_rev", (-4030, -3551, 520), (0, 164, 0));
	createobject("p6_bullet_train_engine_rev", (-4007, -3828, 370), (0, -106, 0));
	createobject("p6_bullet_train_engine_rev", (-4007, -3828, 245), (0, -106, 0));
	createobject("p6_bullet_train_engine_rev", (-3883, -3890, -85), (0, -104, 0));
	createobject("p6_bullet_train_engine_rev", (-3901, -3372, -28), (180, -104, 0));
	createobject("p6_bullet_train_engine_rev", (-4030, -3351, -28), (180, -104, 0));
	createobject("p6_bullet_train_engine_rev", (-4170, -3328, -28), (180, -104, 0));
	createobject("p6_bullet_train_engine_rev", (-4308, -3297, -28), (180, -104, 0));
	createobject("p6_bullet_train_engine_rev", (-3917, -3927, -85), (0, -15, 0));
	createobject("p6_bullet_train_engine_rev", (-3782, -3335, -85), (0, -14, 0));
	createobject("p6_bullet_train_engine_rev", (-4396, -3221, -85), (0, 75, 0));
	createobject("p6_bullet_train_engine_rev", (3151, 660, -270), (0, 90, 0));
	createobject("p6_bullet_train_engine_rev", (3151, 226, -270), (0, 90, 0));
	createobject("p6_bullet_train_engine_rev", (3151, -683, -270), (0, -90, 0));

}

meltdown() {
	level thread removeskybarrier();
	createdoor((392.164, 3068.36, 72.125), (278.457, 3069.84, 72.125), 2, (90, 0, 90), 3, 2, 25, 80);
	createwall((226.785, 2832.98, 76.1835), (230.15, 2933.15, 130.585), 0);
	createwall((771.727, 3057.22, 104.761), (767.697, 2938.02, 162.201), 0);
	createturret((632.572, 2807.5, 72.125), (0, 270, 0), "auto_gun_turret_mp");
	createflag((618.556, 3109.18, 72.125), (-449.039, 602.905, -63.875), 0, 0);
	createwall((-82.2494, 2341.3, 1.81599), (-89.3638, 2241.62, -1.62544), 0);
	createdoor((384.153, 1554.55, 56.125), (410.666, 1702.4, 56.125), 2, (90, 0, 0), 3, 2, 30, 80);
	createmysterybox((258.351, 1696.18, 52.625), (0, 180, 0), 180);
	createwall((-85.7236, 1076.88, -19.5703), (-120.888, 1170.36, -14.7731), 0);
	createwall((-558.181, 2110.78, 50.1599), (-671.859, 2243.76, 126.61), 0);
	createwall((-567.743, 1271.59, 55.816), (-647.513, 1145.21, 126.61), 0);
	createflag((-246.347, 1693.47, 52.625), (1428.69, -1261.09, -135.875), 0, 0);
	createflag((1034.87, -595.899, -135.875), (548.833, 3233.1, -63.875), 0, 0);
	createmysterybox((752.359, 2925.92, 72.125), (0, 180, 0), 900);
	createwall((359.738, 237.55, 71.9095), (359.23, 362.369, 166.005), 0);
	createmysterybox((434.641, 441.279, 72.125), (0, 180, 0), 900);
	createflag((723.398, 527.79, 72.125), (777.788, 4085.92, -139.875), 0, 0);

}

drone() {
	level thread removeskybarrier();
	createdoor((-790, 1665, 135), (-924, 1665, 135), 3, (90, 0, 90), 3, 2, 35, 160);
	createobject("p6_door_automatic_mp_drone", (682, 760, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 660, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 560, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 460, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 360, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 260, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 160, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, 60, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -40, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -140, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -240, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -340, 298), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -440, 298), (0, 0, 103));
	createobject("p6_door_automatic_mp_drone", (682, -540, 278), (0, 0, 90));
	createobject("p6_door_automatic_mp_drone", (682, -640, 275), (0, 0, 115));
	createobject("p6_door_automatic_mp_drone", (525, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (425, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (325, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (225, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (728, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (828, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 800, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 900, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1000, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1100, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1200, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1300, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1400, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1500, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (928, 1600, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (828, 1600, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (728, 1600, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (628, 1600, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (628, 1700, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (628, 1800, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (628, 1900, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (628, 2000, 298), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-873, 561, 295), (0, 90, 115));
	createobject("p6_door_automatic_mp_drone", (-973, 561, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1073, 561, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1173, 561, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1173, 661, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1273, 661, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1373, 661, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1473, 661, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-1573, 661, 297), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-297, 982, 292), (0, 0, 0));
	createobject("p6_door_automatic_mp_drone", (-301, 617, 264), (0, 0, 0));
	createobject("p6_door_automatic_mp_drone", (69, 912, 305), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-31, 912, 305), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-131, 912, 305), (0, 90, 90));
	createobject("p6_door_automatic_mp_drone", (-231, 912, 305), (0, 90, 90));
	createflag((-329.68, 8431.06, 322.672), (-33.8727, -931.003, -39.875), 0, 0);
	createflag((-329.68, 8431.06, 322.672), (-33.8727, -931.003, -39.875), 0, 0);
	createflag((998.876, 3702.04, 298.218), (585.0149, 7178.51, 306.672), 0, 1);
	createmysterybox((434.989, -777.067, 240.125), (0, 180, 0), 150);
	createwall((464.431, 6926.81, 360.676), (849.875, 7100.98, 320.511));
	createwall((240.72, 7671.27, 306.672), (418.682, 7745.64, 397.672));
	createwall((-50.7627, 8402.28, 306.672), (68.1149, 8509.7, 420.672));
	createwall((-158.503, 8321.72, 306.672), (-293.008, 8235.62, 420.672));
	createwall((-448.359, -636.762, 239.702), (-24.413, -666.683, 280.125));
	createwall((-12.6804, -1502.63, 50.3447), (-9.80337, -1565.91, 170.863));
	createramp((-254.393, 8267.81, 417.825), (57.0122, 8502.17, 417.825));
	createramp((-295.4, 8313.46, 417.825), (12.4179, 8562.77, 417.825));
	createramp((-284.103, 8370.66, 428.526), (-481.152, 8588.01, 455.653));
	createramp((-199.233, 8693.32, 320.504), (-71.9255, 8556.26, 419.866));
	createramp((-258.517, 8859.44, 451.811), (-547.972, 8584.76, 451.811));
	createdoor((-97.5456, 8358.69, 410.011), (-105.688, 8355.64, 312.672), 5, (90, 125, 0), 4, 2, 25, 80);
	createdoor((851.847, -1002.64, 240.125), (1005.49, -1001.51, 240.125), 5, (90, 90, 0), 4, 2, 25, 80);
	createelevator((-498.157, -868.63, -15.1372), (-498.157, -868.63, 250.043), 3, 2);

}

carrier() {
	level thread removeskybarrier();
	createwall((-2484.02, 1454.88, -36.9663), (-2494.62, 1037.86, -67.875));
	createdoor((-2497.21, 1125.37, -67.875), (-2497.95, 968.823, -67.875), 3, (90, 90, 90), 7, 3, 30, 80);
	createflag((-3007.86, 1401.45, -67.875), (-6279.72, 482.6, -179.875), 0, 0);
	createflag((-3722.25, 863.286, -40.875), (-2120.28, 1396.52, -67.875), 1, 0);
	createwall((-6289.36, 75.2229, -180.711), (-6099.52, 72.9107, -179.875));
	createwall((-6288.53, 72.5659, -154.836), (-6124.77, 71.9364, -155.103));
	createwall((-6129.9, 71.2682, -130.734), (-6289.36, 74.0885, -128.961));
	createdoor((-6051.35, -38.2957, -179.875), (-6055.98, 73.5169, -179.875), 3, (90, 90, 0), 5, 3, 20, 80);
	createflag((-6272.5, -568.581, -179.875), (-6178.2, -984.667, 44.125), 0, 0);
	createzipline((-4943.38, -2016.18, -75.875), (-5881.25, -17879.1, -305.853), 6, 1);
	creategrid((-5831.09, -17980.4, -310.841), (-5944.11, -18617.8, -299.995));
	creategrid((-5412.95, -18667.8, -207.327), (-5331.11, -18272, -198.119));
	createramp((-5851.56, -18527, -308.273), (-5416.95, -18520.6, -183.835));
	createdoor((-5945.75, -18527.8, -308.273), (-5763.73, -18525.8, -264.265), 3, (90, 90, 90), 4, 2, 20, 80);
	createzipline((-5328.71, -18196.5, -215.099), (-557.016, -1731.2, -187.363), 6, 1);
	createzipline((371.516, -1535.27, -267.875), (-2193.34, 873.727, -67.875), 4, 0);
	createwall((-193.788, -1649.19, -237.952), (-186.651, -1064.97, -267.875));
	createdoor((-153.206, -1163.58, -267.875), (-186.277, -997.394, -267.875), 3, (90, 90, 90), 7, 2, 20, 80);
	createwall((-193.248, -1696.87, -197.556), (-186.129, -1094.37, -193.463));

}

overflow() {
	level thread removeskybarrier();
	createflag((-1564.1, 1188.38, 0.125), (-1777.66, 1196.92, -1.8885), 0, 1);
	createflag((-1049.65, -2138.94, -39.875), (-1119.64, -2128.16, -21.7191), 0, 1);
	createflag((16.4104, -831.731, 128.125), (251.519, -1892.6, -23.875), 0, 1);
	createflag((1066.41, -1418.58, -5.11152), (1062.38, -1485.99, -4.49046), 1, 0);
	createflag((632.938, -1903.92, -7.875), (113.997, -1892.44, -37.0533), 1, 0);
	createflag((-1676.28, -1408.36, -51.6948), (-756.095, -1751.64, 96.125), 1, 0);
	createramp((-500.395, -2049.73, 111.901), (-499.486, -2227.05, 94.4188), 1);
	createramp((-389.974, -2066.03, 100.752), (-88.4026, -2076.38, 107.007), 1);
	createramp((-84.5812, -2027.81, 121.268), (-98.7499, -1943.64, 125.401));
	createdoor((-549.832, -1967.82, -39.875), (-499.93, -2161.79, -39.7562), 3, (90, 0, 0), 4, 3, 30, 80);
	createmysterybox((-736.528, -1975.73, -39.875), (0, 180, 0), 850);
	createelevator((-631.377, -1927.64, -39.875), (-643.244, -1919.97, 95.0766), 1, 2);
	createwall((-1035.03, -2263.64, -31.875), (-1045.11, -3161.67, 44.5441));
	createwall((-1119.64, -2241.99, -30.1431), (-1521.64, -2263.85, 7.92361));
	createwall((-1106.19, -2242.3, 59.6088), (-1493.83, -2250.6, 75.3235));
	createwall((-820.08, -2242.92, 96.125), (-828.904, -2240.7, 179.436));
	createdoor((-1588.32, -2148.87, -31.875), (-1593.92, -2261.51, -31.875), 2, (90, 0, 90), 6, 2, 30, 80);

}

slums() {
	level thread removeskybarrier();
	createmysterybox((1441, -895, 622), (0, 90, 0), 120);
	createmysterybox((1571, -895, 622), (0, 90, 0), 120);
	createmysterybox((-2105, -1028, 560), (0, 0, 0), 100);
	createobject("p_glo_corrugated_metal1", (2300, -1380, 550), (0, 90, 0));
	createcustomdoor("com_pallet_2", (2000, -1639, 510), (2303, -1505, 510), 2, (90, 0, 0), 6, 2, 50, 80);
	createdoor((-2640, -917, 524), (-2655, -522, 527), 2, (90, 178, 0), 6, 2, 35, 80);
	createdoor((-2042, -1568, 460), (-2313, -1291, 489), 2, (90, 90, 0), 6, 2, 35, 80);
	createflag((195, -824, 552), (2680, -1760, 490), 0, 0);
	createflag((196, -555, 552), (2692, -1218, 510), 0, 0);
	createflag((1963, -1082, 620), (-3000, -612, 526), 0, 1);
	createflag((-2060, -1752, 456), (793, -1575, 552), 0, 0);
	createzipline((1420, -1514, 500), (1457, -1308, 620), 1, 1);
	createobject("collision_clip_512x512x10", (2750, -1306, 504), (0, 90, 0));
	createobject("veh_iw_gaz_tigr_destruct", (2735, -1062, 507), (0, 180, 0));
	createobject("veh_t6_v_van_whole_red", (2873, -1800, 504), (0, 18, 0));
	createobject("veh_t6_v_van_whole_red", (2722, -1848, 495), (0, 18, 0));
	createobject("collision_clip_512x512x10", (2710, -1545, 504), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (2611, -1229, 504), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (2870, -1210, 504), (0, 102, 0));
	createobject("collision_clip_wall_256x256x10", (2905, -1400, 504), (0, 102, 0));
	createobject("collision_clip_wall_256x256x10", (2938, -1600, 504), (0, 102, 0));
	createobject("collision_clip_wall_256x256x10", (2620, -1823, 546), (0, -90, 0));
	createobject("collision_clip_wall_256x256x10", (2480, -1682, 550), (0, 180, 0));
	createobject("t6_wpn_supply_drop_ally", (2317, -1702, 548), (0, -90, 0));
	createobject("p_glo_corrugated_metal1", (2300, -1630, 550), (0, 90, 0));
	createobject("p_glo_corrugated_metal1", (1313, -1512, 550), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (2300, -1650, 550), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (2300, -1360, 550), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (2176, -1660, 550), (0, 180, 0));
	createobject("t6_wpn_supply_drop_ally", (2014, -1691, 548), (0, 0, 0));
	createobject("collision_clip_wall_512x512x10", (2355, -1355, 550), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (2000, -1353, 550), (0, 180, 0));
	createobject("collision_clip_wall_512x512x10", (1751, -1725, 550), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (1998, -1192, 620), (0, 90, 0));
	createobject("collision_clip_512x512x10", (2210, -1505, 504), (0, 180, 0));
	createobject("collision_clip_512x512x10", (1690, -1505, 504), (0, 180, 0));
	createobject("p_glo_corrugated_metal1", (1528, -1715, 550), (0, 0, 0));
	createobject("veh_t6_v_van_whole_red", (-2833, -652, 520), (0, -10, 0));
	createobject("veh_t6_v_van_whole_red", (-2700, -673, 520), (0, 170, 0));
	createobject("veh_iw_gaz_tigr_destruct", (-3030, -695, 515), (0, 180, 0));
	createobject("p_glo_corrugated_metal1", (-3065, -432, 558), (0, 0, 0));
	createobject("t6_wpn_supply_drop_ally", (-3070, -392, 568), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-3094, -555, 550), (0, -90, 0));
	createobject("veh_iw_gaz_tigr_destruct", (-2355, -475, 534), (-10, 80, 0));
	createobject("veh_iw_gaz_tigr_destruct", (-2272, -618, 515), (0, 0, 0));
	createobject("veh_t6_v_van_whole_blue", (-2111, -713, 520), (0, 0, 0));
	createobject("veh_t6_civ_smallwagon_whole_green", (-2135, -1028, 495), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (-2635, -834, 550), (0, -100, 0));
	createobject("collision_clip_wall_256x256x10", (-2712, -1091, 550), (0, -100, 0));
	createobject("veh_t6_v_van_whole_blue", (-2380, -1265, 480), (188, -90, 0));
	createobject("veh_t6_v_van_whole_red", (-2512, -1235, 490), (-5, -166, 0));
	createobject("veh_t6_v_van_whole_red", (-2641, -1262, 505), (10, 13, 0));
	createobject("veh_t6_v_van_whole_red", (-2466, -1340, 465), (0, -90, 0));
	createobject("p_glo_corrugated_metal1", (-2358, -1539, 505), (0, 0, 0));
	createobject("collision_clip_wall_128x128x10", (-2405, -1539, 550), (0, 0, 0));
	createobject("p_glo_corrugated_metal1", (-2191, -1490, 490), (90, 90, 0));
	createobject("p_glo_corrugated_metal1", (-2191, -1490, 528), (90, 90, 0));
	createobject("t6_wpn_supply_drop_ally", (-2162, -1487, 490), (0, 0, 0));
	createobject("t6_wpn_supply_drop_ally", (-2162, -1487, 520), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-2062, -1544, 550), (0, 180, 0));
	createobject("veh_t6_v_van_whole_blue", (-2380, -1771, 460), (0, -90, 0));
	createobject("veh_t6_v_van_whole_blue", (-2262, -1840, 460), (0, 0, 0));
	createobject("veh_t6_v_van_whole_blue", (-2142, -1840, 460), (0, 0, 0));
	createobject("veh_t6_v_van_whole_blue", (-2020, -1840, 460), (0, 0, 0));
	createobject("veh_t6_v_van_whole_blue", (-1970, -1765, 460), (0, 90, 0));
	createobject("veh_t6_v_van_whole_blue", (-1970, -1625, 460), (0, 90, 0));
	wait 80;
	playfx(level._effect["fx_mp_slums_vista_smoke"], (2760, -1240, -99));
	playfx(level._effect["fx_mp_slums_vista_smoke"], (2760, -1670, -99));

}

turbine() {
	level thread removeskybarrier();
	createflag((-386.575, -2263.15, 156.848), (-473, -2476, 164), 0, 0);
	createflag((-1352.49, -4001.75, 609.834), (-1938.15, -4275.27, 750.011), 0, 0);
	creategrid((-1861.66, -4246.43, 734.136), (-2012.95, -4416.41, 734.136), 90, 0);
	createramp((-2236.18, -4311.71, 677.744), (-2236.18, -4311.71, 677.744), 0);
	createramp((-2243.08, -4451.6, 659.177), (-2243.08, -4451.6, 659.177), 0);
	createzipline((-2434.09, -4579.86, 556.435), (-2851.76, -4288.05, 531.58), 1, 0);
	createzipline((-2439.19, -4259.27, 597.587), (-2763.02, -4227.9, 531.58), 1, 0);
	creategrid((-2748.19, -3755.66, 515.705), (-2935.19, -4292.38, 515.705), 90, 0);
	createramp((-2748.19, -4092.71, 600), (-2854.94, -4091.9, 600), 0);
	createramp((-2748.19, -4092.71, 580), (-2854.94, -4091.9, 580), 0);
	createramp((-2748.19, -4092.71, 555), (-2854.94, -4091.9, 555), 0);
	createdoor((-2912.01, -3965.02, 531.58), (-2912.01, -4091.27, 531.58), 3, (90, 0, 90), 2, 2, 40, 60);
	createflag((-2911.24, -3768.26, 531.58), (1658.4, 2425.54, 210.125), 0, 0);
	createflag((-1145.08, 3310.27, 268.803), (-1161.82, 3437.53, 264.224), 0, 1);

}

raid() {
	level thread removeskybarrier();
	createzipline((577.084, 2736.79, 148.125), (999.676, 2976.02, 272.125), 1, 1);
	createzipline((1947.91, 2872.71, 56.125), (1374.02, 3156.56, 288.125), 1, 1);
	createelevator((1672.86, 2839.19, 303.623), (1672.86, 2839.19, 433.727), 1, 1);
	createelevator((1749.45, 2567.67, 256.125), (1749.45, 2567.67, 434.125), 1, 1);
	createmysterybox((1320.74, 2731.36, 424.125), (0, 80, 0), 150);
	createflag((1294.83, 3252.07, 288.125), (2004, 3770.73, 284.125), 0, 1);
	createzipline((2464.17, 3405.66, 284.125), (1987.98, 3407.57, 284.125), 1, 1);

}

aftermath() {
	level thread removeskybarrier();
	createwall((-1690, -132, -265), (-1690, -162, -140), 1);
	createwall((-2098, 215, -200), (-2098, 230, -90), 1);
	createwall((-650, -592, -260), (-580, -592, -140), 1);
	createflag((-1885, -209, -260), (-860, -1228, -268), 0, 0);
	createflag((1173, -2152, -44), (-694, -1831, 115), 0, 0);
	createflag((-3447, -1690, -207), (-510, -1200, 221), 0, 0);
	createflag((-3034, -3249, 294), (-1190, 5360, -263), 0, 0);
	createdoor((-500, 280, -44), (-300, 280, -44), 3, (90, 90, 0), 5, 2, 30, 60);
	createdoor((-245, -1790, -44), (-245, -1610, -44), 3, (90, 0, 0), 5, 2, 20, 60);
	createdoor((-3700, -3198, -207), (-3450, -3198, -207), 3, (90, 90, 0), 8, 2, 30, 60);
	createzipline((0, -1990, -268), (-768, -1990, -44), 2, 1);
	createmysterybox((-2033, 31, -60), (0, 90, 0), 900);
	createmysterybox((-3077, -3967, -207), (0, 90, 0), 900);
	createobject("veh_iw_civ_firetruck", (-1973, 534, -142), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-1602, 560, -203), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-1476, -40, -268), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-1807, 709, -220), (35, 0, 0));
	createobject("veh_iw_civ_firetruck", (-1232, -65, -262), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-1135, -65, -262), (325, 0, 0));
	createobject("veh_iw_civ_suv_whole_red", (-1306, -368, -190), (0, 113, 0));
	createobject("veh_iw_civ_ambulance_whole", (-1514, 409, -211), (0, 130, 0));
	createobject("veh_iw_civ_firetruck", (-100, -1900, -268), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (100, -1900, -268), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (0, -2140, -268), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-580, -1738, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-907, -1294, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-535, -1540, -44), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-907, -880, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-530, -880, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-317, -2137, -44), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-317, -1877, -44), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-907, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-485, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-100, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (300, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (700, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (1100, -2300, -44), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (1280, -2100, -44), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (1280, -1700, -44), (0, 90, 0));
	createobject("veh_iw_civ_suv_whole_black", (-588, -1734, 115), (0, 135, 0));
	createobject("veh_iw_civ_firetruck", (-207, -1521, 115), (0, 0, 0));
	createobject("veh_t6_police_car_destructible", (347, -1403, 115), (0, 0, 0));
	createobject("veh_t6_police_car_destructible", (770, -1384, 115), (0, 130, 0));
	createobject("veh_iw_civ_firetruck", (471, -803, 115), (0, 20, 0));
	createobject("veh_iw_civ_firetruck", (379, -119, 115), (0, 90, 0));
	createobject("veh_iw_civ_suv_whole_beige", (174, -450, 115), (0, 100, 0));
	createobject("veh_iw_civ_firetruck", (-183, -230, 40), (35, 90, 0));
	createobject("veh_iw_civ_firetruck", (-186, -555, 115), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-186, -905, 115), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-186, -1050, 115), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-412, -1200, 115), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-825, -1200, 115), (0, 0, 0));
	createfiretruckelevator((-1130, -1200, 97), (-3386, -1200, 97), (0, 90, 0), 7.5, 7);
	createfiretruckelevator((-1460, -1200, 97), (-3694, -1200, 97), (0, 90, 0), 7.5, 7);
	createfiretruckelevator((-1284, -1000, 97), (-3540, -1000, 97), (0, 0, 0), 7.5, 7);
	createfiretruckelevator((-1284, -1200, 115), (-3540, -1200, 115), (0, 0, 180), 7.5, 7);
	createfiretruckelevator((-1284, -1100, 115), (-3540, -1100, 115), (0, 0, 180), 7.5, 7);
	createfiretruckelevator((-1284, -1300, 115), (-3540, -1300, 115), (0, 0, 180), 7.5, 7);
	createfiretruckelevator((-3100, -1500, 115), (-3900, -1500, 115), (0, 0, 180), 6, 0.1);
	createfiretruckelevator((-3100, -1900, 115), (-3900, -1900, 115), (0, 90, 180), 7.5, 0.5);
	createfiretruckelevator((-3100, -2300, 115), (-3900, -2300, 115), (0, 90, 180), 6, 0.5);
	createfiretruckelevator((-3100, -2700, 115), (-3900, -2700, 115), (0, 0, 180), 5, 0.3);
	createfiretruckelevator((-3100, -2850, 115), (-3900, -2850, 115), (0, 0, 180), 3, 0.2);
	createfiretruckelevator((-3500, -2950, 97), (-3500, -2950, -180), (0, 0, 180), 3, 0.5);
	createobject("veh_iw_civ_firetruck", (-3100, -2850, -207), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -2850, -207), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3000, -207), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3000, -207), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3500, -2850, -207), (0, 0, 0));
	createfiretruckelevator((-3450, -3950, -180), (-3450, -3950, 290), (0, 0, 180), 4, 2);
	createobject("veh_iw_civ_firetruck", (-3600, -3100, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3100, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3200, -5), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3200, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3300, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3400, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3500, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3600, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3700, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3800, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3900, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -4000, -5), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3200, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3300, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3400, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3500, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3600, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3700, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3800, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3900, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -4000, -5), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3500, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -4000, -5), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -3100, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3100, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3200, 395), (90, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3200, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3300, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3400, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3500, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3600, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3700, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3800, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3900, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -4000, 395), (90, 180, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3200, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3300, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3400, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3500, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3600, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3700, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3800, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3900, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -4000, 395), (90, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3500, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -4000, 395), (90, 270, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3400, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3600, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3700, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3800, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3900, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3300, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3200, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3100, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3000, -3800, 180), (0, 90, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3270, 180), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3370, 180), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3470, 180), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3570, 180), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3100, -120), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3100, -20), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3400, -3100, 100), (0, 0, 0));
	createobject("veh_iw_civ_firetruck", (-3454, -3177, 140), (0, 0, 0));

}

cargo() {
	level thread removeskybarrier();
	orangecontainer((-2025, 2018, -195), (0, 90, 0));
	bluecontainer((-2375, 2018, -195), (0, 90, 0));
	orangecontainer((-2725, 2018, -195), (0, 90, 0));
	bluecontainer((-3075, 2018, -195), (0, 90, 0));
	orangecontainer((-3425, 2018, -195), (0, 90, 0));
	bluecontainer((-3775, 2018, -195), (0, 90, 0));
	orangecontainer((-4125, 2018, -195), (0, 90, 0));
	bluecontainer((-4475, 2018, -195), (0, 90, 0));
	orangecontainer((-4590, 1780, -195), (0, 0, 0));
	bluecontainer((-4590, 1430, -195), (0, 0, 0));
	orangecontainer((-4590, 1080, -195), (0, 0, 0));
	bluecontainer((-4590, 730, -195), (0, 0, 0));
	orangecontainer((-4590, 380, -195), (0, 0, 0));
	bluecontainer((-4590, 30, -195), (0, 0, 0));
	orangecontainer((-4590, -320, -195), (0, 0, 0));
	bluecontainer((-4590, -670, -195), (0, 0, 0));
	orangecontainer((-4590, -1020, -195), (0, 0, 0));
	bluecontainer((-4590, -1370, -195), (0, 0, 0));
	orangecontainer((-4590, -1720, -195), (0, 0, 0));
	bluecontainer((-4475, -1970, -195), (0, 90, 0));
	orangecontainer((-4125, -1970, -195), (0, 90, 0));
	bluecontainer((-3775, -1970, -195), (0, 90, 0));
	orangecontainer((-3425, -1970, -195), (0, 90, 0));
	bluecontainer((-3075, -1970, -195), (0, 90, 0));
	orangecontainer((-2725, -1970, -195), (0, 90, 0));
	bluecontainer((-2375, -1970, -195), (0, 90, 0));
	orangecontainer((-2025, -1970, -195), (0, 90, 0));
	bluecontainer((-1675, -1970, -195), (0, 90, 0));
	orangecontainer((-1325, -1970, -195), (0, 90, 0));
	bluecontainer((-975, -1970, -195), (0, 90, 0));
	orangecontainer((-625, -1970, -195), (0, 90, 0));
	bluecontainer((-385, -1855, -195), (0, 0, 0));
	orangecontainer((-385, -1505, -195), (0, 0, 0));
	redcontainer((-4350, 380, -195), (0, 90, 0));
	redcontainer((-4000, 380, -195), (0, 90, 0));
	whitecontainer((-3650, -10, -65), (0, 90, 0));
	whitecontainer((-3650, 770, -65), (0, 90, 0));
	whitecontainer((-3300, -10, -65), (0, 90, 0));
	whitecontainer((-3300, 770, -65), (0, 90, 0));
	whitecontainer((-3650, -10, 195), (0, 90, 0));
	whitecontainer((-3650, 770, 195), (0, 90, 0));
	whitecontainer((-3300, -10, 195), (0, 90, 0));
	whitecontainer((-3300, 770, 195), (0, 90, 0));
	whitecontainer((-3650, -10, 325), (0, 90, 0));
	whitecontainer((-3650, 770, 325), (0, 90, 0));
	whitecontainer((-3300, -10, 325), (0, 90, 0));
	whitecontainer((-3300, 770, 325), (0, 90, 0));
	whitecontainer((-3763, 623, 65), (0, 0, 0));
	whitecontainer((-3763, 623, -65), (0, 0, 0));
	whitecontainer((-3763, 136, 65), (0, 0, 0));
	whitecontainer((-3763, 136, -65), (0, 0, 0));
	whitecontainer((-3763, 623, 195), (0, 0, 0));
	whitecontainer((-3763, 136, 195), (0, 0, 0));
	whitecontainer((-3763, 623, 325), (0, 0, 0));
	whitecontainer((-3763, 136, 325), (0, 0, 0));
	whitecontainer((-3193, 525, -65), (0, 0, 0));
	whitecontainer((-3193, 175, -65), (0, 0, 0));
	whitecontainer((-3193, 525, 195), (0, 0, 0));
	whitecontainer((-3193, 175, 195), (0, 0, 0));
	whitecontainer((-3193, 525, 325), (0, 0, 0));
	whitecontainer((-3193, 175, 325), (0, 0, 0));
	whitecontainer((-3193, 175, 65), (0, 0, 0));
	whitecontainer((-3193, 525, 65), (0, 0, 0));
	whitecontainer((-3323, 525, 65), (0, 0, 0));
	whitecontainer((-3650, -10, 65), (0, 90, 0));
	whitecontainer((-3650, 120, 65), (0, 90, 0));
	whitecontainer((-3650, 250, 65), (0, 90, 0));
	whitecontainer((-3650, 380, 65), (0, 90, 0));
	whitecontainer((-3650, 510, 65), (0, 90, 0));
	whitecontainer((-3650, 770, 65), (0, 90, 0));
	whitecontainer((-3300, -10, 65), (0, 90, 0));
	whitecontainer((-3300, 120, 65), (0, 90, 0));
	whitecontainer((-3300, 250, 65), (0, 90, 0));
	whitecontainer((-3300, 380, 65), (0, 90, 0));
	whitecontainer((-3300, 510, 65), (0, 90, 0));
	whitecontainer((-3300, 770, 65), (0, 90, 0));
	whitecontainer((-3650, -10, 455), (0, 90, 0));
	whitecontainer((-3650, 120, 455), (0, 90, 0));
	whitecontainer((-3650, 250, 455), (0, 90, 0));
	whitecontainer((-3650, 380, 455), (0, 90, 0));
	whitecontainer((-3650, 510, 455), (0, 90, 0));
	whitecontainer((-3650, 640, 455), (0, 90, 0));
	whitecontainer((-3650, 770, 455), (0, 90, 0));
	whitecontainer((-3300, -10, 455), (0, 90, 0));
	whitecontainer((-3300, 120, 455), (0, 90, 0));
	whitecontainer((-3300, 250, 455), (0, 90, 0));
	whitecontainer((-3300, 380, 455), (0, 90, 0));
	whitecontainer((-3300, 510, 455), (0, 90, 0));
	whitecontainer((-3300, 640, 455), (0, 90, 0));
	whitecontainer((-3300, 770, 455), (0, 90, 0));
	whitecontainer((-3420, 640, -25), (0, 90, -45));
	whitecontainer((-3650, -10, -195), (0, 90, 0));
	whitecontainer((-3650, 120, -195), (0, 90, 0));
	whitecontainer((-3650, 250, -195), (0, 90, 0));
	whitecontainer((-3650, 380, -195), (0, 90, 0));
	whitecontainer((-3650, 510, -195), (0, 90, 0));
	whitecontainer((-3650, 640, -195), (0, 90, 0));
	whitecontainer((-3650, 770, -195), (0, 90, 0));
	whitecontainer((-3300, -10, -195), (0, 90, 0));
	whitecontainer((-3300, 120, -195), (0, 90, 0));
	whitecontainer((-3300, 250, -195), (0, 90, 0));
	whitecontainer((-3300, 380, -195), (0, 90, 0));
	whitecontainer((-3300, 510, -195), (0, 90, 0));
	whitecontainer((-3300, 640, -195), (0, 90, 0));
	whitecontainer((-3300, 770, -195), (0, 90, 0));
	bluecontainer((-3980, 380, 155), (0, 90, 30));
	bluecontainer((-4280, 380, 329), (0, 90, 30));
	bluecontainer((-4545, 380, 402), (0, 90, 0));
	bluecontainer((-4895, 380, 402), (0, 90, 0));
	redcontainer((-5245, -270, 402), (0, 90, 0));
	redcontainer((-5245, -140, 402), (0, 90, 0));
	redcontainer((-5245, -10, 402), (0, 90, 0));
	redcontainer((-5245, 120, 402), (0, 90, 0));
	redcontainer((-5245, 120, 532), (0, 90, 0));
	redcontainer((-5245, 250, 402), (0, 90, 0));
	redcontainer((-5245, 380, 402), (0, 90, 0));
	redcontainer((-5245, 510, 402), (0, 90, 0));
	redcontainer((-5245, 640, 402), (0, 90, 0));
	redcontainer((-5245, 640, 532), (0, 90, 0));
	redcontainer((-5245, 770, 402), (0, 90, 0));
	redcontainer((-5245, 900, 402), (0, 90, 0));
	redcontainer((-5245, 1030, 402), (0, 90, 0));
	redcontainer((-5595, -270, 402), (0, 90, 0));
	redcontainer((-5595, -140, 402), (0, 90, 0));
	redcontainer((-5595, -10, 402), (0, 90, 0));
	redcontainer((-5595, 120, 402), (0, 90, 0));
	redcontainer((-5595, 120, 532), (0, 90, 0));
	redcontainer((-5595, 250, 402), (0, 90, 0));
	redcontainer((-5595, 380, 402), (0, 90, 0));
	redcontainer((-5595, 510, 402), (0, 90, 0));
	redcontainer((-5595, 640, 402), (0, 90, 0));
	redcontainer((-5595, 640, 532), (0, 90, 0));
	redcontainer((-5595, 770, 402), (0, 90, 0));
	redcontainer((-5595, 900, 402), (0, 90, 0));
	redcontainer((-5595, 1030, 402), (0, 90, 0));
	redcontainer((-5945, -270, 402), (0, 90, 0));
	redcontainer((-5945, -140, 402), (0, 90, 0));
	redcontainer((-5945, -10, 402), (0, 90, 0));
	redcontainer((-5945, 120, 402), (0, 90, 0));
	redcontainer((-5945, 250, 402), (0, 90, 0));
	redcontainer((-5945, 380, 402), (0, 90, 0));
	redcontainer((-5945, 510, 402), (0, 90, 0));
	redcontainer((-5945, 640, 402), (0, 90, 0));
	redcontainer((-5945, 770, 402), (0, 90, 0));
	redcontainer((-5945, 900, 402), (0, 90, 0));
	redcontainer((-5945, 1030, 402), (0, 90, 0));
	redcontainer((-5138, 623, 532), (0, 0, 0));
	redcontainer((-5138, 136, 532), (0, 0, 0));
	redcontainer((-5138, 800, 532), (0, 0, 0));
	redcontainer((-5138, -80, 532), (0, 0, 0));
	redcontainer((-5245, -270, 532), (0, 90, 0));
	redcontainer((-5245, 1030, 532), (0, 90, 0));
	redcontainer((-5595, -270, 532), (0, 90, 0));
	redcontainer((-5595, 1030, 532), (0, 90, 0));
	redcontainer((-5945, -270, 532), (0, 90, 0));
	redcontainer((-5945, 1030, 532), (0, 90, 0));
	redcontainer((-6058, -25, 532), (0, 0, 0));
	redcontainer((-6058, 325, 532), (0, 0, 0));
	redcontainer((-6058, 675, 532), (0, 0, 0));
	redcontainer((-6058, 800, 532), (0, 0, 0));
	redcontainer((-5245, -270, 662), (0, 90, 0));
	redcontainer((-5245, -140, 662), (0, 90, 0));
	redcontainer((-5245, -10, 662), (0, 90, 0));
	redcontainer((-5245, 120, 662), (0, 90, 0));
	redcontainer((-5245, 250, 662), (0, 90, 0));
	redcontainer((-5245, 380, 662), (0, 90, 0));
	redcontainer((-5245, 510, 662), (0, 90, 0));
	redcontainer((-5245, 640, 662), (0, 90, 0));
	redcontainer((-5245, 770, 662), (0, 90, 0));
	redcontainer((-5245, 900, 662), (0, 90, 0));
	redcontainer((-5245, 1030, 662), (0, 90, 0));
	redcontainer((-5595, -270, 662), (0, 90, 0));
	redcontainer((-5595, -140, 662), (0, 90, 0));
	redcontainer((-5595, -10, 662), (0, 90, 0));
	redcontainer((-5595, 120, 662), (0, 90, 0));
	redcontainer((-5595, 250, 662), (0, 90, 0));
	redcontainer((-5595, 380, 662), (0, 90, 0));
	redcontainer((-5595, 510, 662), (0, 90, 0));
	redcontainer((-5595, 640, 662), (0, 90, 0));
	redcontainer((-5595, 770, 662), (0, 90, 0));
	redcontainer((-5595, 900, 662), (0, 90, 0));
	redcontainer((-5595, 1030, 662), (0, 90, 0));
	redcontainer((-5945, -270, 662), (0, 90, 0));
	redcontainer((-5945, -140, 662), (0, 90, 0));
	redcontainer((-5945, -10, 662), (0, 90, 0));
	redcontainer((-5945, 120, 662), (0, 90, 0));
	redcontainer((-5945, 250, 662), (0, 90, 0));
	redcontainer((-5945, 380, 662), (0, 90, 0));
	redcontainer((-5945, 510, 662), (0, 90, 0));
	redcontainer((-5945, 640, 662), (0, 90, 0));
	redcontainer((-5945, 770, 662), (0, 90, 0));
	redcontainer((-5945, 900, 662), (0, 90, 0));
	redcontainer((-5945, 1030, 662), (0, 90, 0));
	bluecontainer((-4475, 2018, -195), (0, 90, 0));
	bluecontainer((-4345, 1888, -195), (0, 90, 0));
	bluecontainer((-4475, 2148, -195), (0, 90, 0));
	bluecontainer((-4475, 2018, 975), (0, 90, 0));
	bluecontainer((-4475, 2148, -65), (0, 90, 0));
	bluecontainer((-4475, 2148, 65), (0, 90, 0));
	bluecontainer((-4475, 2148, 195), (0, 90, 0));
	bluecontainer((-4475, 2148, 325), (0, 90, 0));
	bluecontainer((-4475, 2148, 455), (0, 90, 0));
	bluecontainer((-4475, 2148, 585), (0, 90, 0));
	bluecontainer((-4475, 2148, 715), (0, 90, 0));
	bluecontainer((-4475, 2148, 845), (0, 90, 0));
	bluecontainer((-4475, 2148, 975), (0, 90, 0));
	bluecontainer((-4345, 1888, -65), (0, 90, 0));
	bluecontainer((-4475, 1888, 65), (0, 90, 0));
	bluecontainer((-4475, 1888, 195), (0, 90, 0));
	bluecontainer((-4475, 1888, 325), (0, 90, 0));
	bluecontainer((-4475, 1888, 455), (0, 90, 0));
	bluecontainer((-4475, 1888, 585), (0, 90, 0));
	bluecontainer((-4475, 1888, 715), (0, 90, 0));
	bluecontainer((-4475, 1888, 845), (0, 90, 0));
	bluecontainer((-4475, 1888, 975), (0, 90, 0));
	bluecontainer((-4125, 2148, -195), (0, 90, 0));
	bluecontainer((-4125, 2148, -65), (0, 90, 0));
	bluecontainer((-4125, 2148, 65), (0, 90, 0));
	bluecontainer((-4125, 2148, 195), (0, 90, 0));
	bluecontainer((-4125, 2148, 325), (0, 90, 0));
	bluecontainer((-4125, 2148, 455), (0, 90, 0));
	bluecontainer((-4125, 2148, 585), (0, 90, 0));
	bluecontainer((-4125, 2148, 715), (0, 90, 0));
	bluecontainer((-4125, 2148, 845), (0, 90, 0));
	bluecontainer((-4125, 2148, 975), (0, 90, 0));
	bluecontainer((-4125, 2018, 65), (0, 90, 0));
	bluecontainer((-4125, 2018, 195), (0, 90, 0));
	bluecontainer((-4125, 2018, 325), (0, 90, 0));
	bluecontainer((-4125, 2018, 455), (0, 90, 0));
	bluecontainer((-4125, 2018, 585), (0, 90, 0));
	bluecontainer((-4125, 2018, 715), (0, 90, 0));
	bluecontainer((-4125, 2018, 845), (0, 90, 0));
	bluecontainer((-4125, 2018, 975), (0, 90, 0));
	bluecontainer((-4125, 1888, -195), (0, 90, 0));
	bluecontainer((-4125, 1888, -65), (0, 90, 0));
	bluecontainer((-4125, 1888, 65), (0, 90, 0));
	bluecontainer((-4125, 1888, 195), (0, 90, 0));
	bluecontainer((-4125, 1888, 325), (0, 90, 0));
	bluecontainer((-4125, 1888, 455), (0, 90, 0));
	bluecontainer((-4125, 1888, 585), (0, 90, 0));
	bluecontainer((-4125, 1888, 715), (0, 90, 0));
	bluecontainer((-4125, 1888, 845), (0, 90, 0));
	bluecontainer((-4125, 1888, 975), (0, 90, 0));
	bluecontainer((-4825, 2148, -195), (0, 90, 0));
	bluecontainer((-4825, 2148, -65), (0, 90, 0));
	bluecontainer((-4825, 2148, 65), (0, 90, 0));
	bluecontainer((-4825, 2148, 195), (0, 90, 0));
	bluecontainer((-4825, 2148, 325), (0, 90, 0));
	bluecontainer((-4825, 2148, 455), (0, 90, 0));
	bluecontainer((-4825, 2148, 585), (0, 90, 0));
	bluecontainer((-4825, 2148, 715), (0, 90, 0));
	bluecontainer((-4825, 2148, 845), (0, 90, 0));
	bluecontainer((-4825, 2148, 975), (0, 90, 0));
	bluecontainer((-4825, 2018, -195), (0, 90, 0));
	bluecontainer((-4825, 2018, -65), (0, 90, 0));
	bluecontainer((-4825, 2018, 65), (0, 90, 0));
	bluecontainer((-4825, 2018, 195), (0, 90, 0));
	bluecontainer((-4825, 2018, 325), (0, 90, 0));
	bluecontainer((-4825, 2018, 455), (0, 90, 0));
	bluecontainer((-4825, 2018, 585), (0, 90, 0));
	redcontainer((-4825, 2018, 715), (0, 90, 0));
	bluecontainer((-4825, 2018, 975), (0, 90, 0));
	bluecontainer((-4825, 1888, -195), (0, 90, 0));
	bluecontainer((-4825, 1888, -65), (0, 90, 0));
	bluecontainer((-4825, 1888, 65), (0, 90, 0));
	bluecontainer((-4825, 1888, 195), (0, 90, 0));
	bluecontainer((-4825, 1888, 325), (0, 90, 0));
	bluecontainer((-4825, 1888, 455), (0, 90, 0));
	bluecontainer((-4825, 1888, 585), (0, 90, 0));
	bluecontainer((-4825, 1888, 715), (0, 90, 0));
	bluecontainer((-4825, 1888, 845), (0, 90, 0));
	bluecontainer((-4825, 1888, 975), (0, 90, 0));
	createorangeelevator((-4475, 2018, -195), (-4475, 2018, 715), (0, 90, 0), 4, 2);
	redcontainer((-5175, 2018, 715), (0, 90, 0));
	redcontainer((-5175, 2148, 715), (0, 90, 0));
	redcontainer((-5175, 2278, 715), (0, 90, 0));
	redcontainer((-4830, 2278, 773), (0, 90, -20));
	redcontainer((-4607.5, 2278, 853.5), (0, 90, -20));
	redcontainer((-4423, 2278, 922), (0, 90, -20));
	redcontainer((-4125, 2278, 975), (0, 90, 0));
	redcontainer((-5175, 1888, 715), (0, 90, 0));
	redcontainer((-5175, 1758, 715), (0, 90, 0));
	redcontainer((-4830, 1758, 773), (0, 90, -20));
	redcontainer((-4607.5, 1758, 853.5), (0, 90, -20));
	redcontainer((-4423, 1758, 922), (0, 90, -20));
	redcontainer((-4125, 1758, 975), (0, 90, 0));
	createdoor((-3713.01, 264.01, -56.01), (-3719.01, 382.01, -56.01), 1.5, (90, 180, 0), 3, 2, 25, 80);
	createdoor((-3534.01, 513.01, 190.01), (-3534.01, 638.01, 190.01), 1.5, (0, 180, 0), 3, 3, 30, 105);
	createzipline((-5102.01, 380.01, 798.125), (-3779.01, 380.01, 591.125), 1.2, 0);
	createzipline((-2123.01, 2032.01, -58.125), (-4583.01, 1227.01, -58.125), 1.2, 1);
	createzipline((-410.01, -1977.01, -58.125), (-4586.01, -1557.01, -58.125), 1.2, 1);
	createmysterybox((-3324.407, 647.366, -58.125), (0, 90, 0), 900);
	createflag((-5419.21, 949.8177, 538.6875), (-5237.82, 2261.229, 851.125), 1, 0);

}

standoff() {
	level thread deathbarrier();
	createzipline((-915.487, 494.567, 112.125), (-149.797, 286.336, 416.125), 2, 1);
	createflag((-29.4653, 324.668, 406.869), (-1004.61, -1211.63, 144.125), 0, 0);
	createwall((-831.719, -1509.41, 130.51), (-835.455, -1523.15, 206.446), 1);
	createwall((-1028.11, -1057.7, 202.643), (-994.003, -1046.86, 110.976), 1);
	createwall((-1169.95, -1213.25, 182.213), (-1173.61, -1228.18, 106.766), 1);
	createdoor((-1329.37, -1336.49, 7.69385), (-1180.27, -1348.45, 4.36679), 3, (90, 90, 0), 1, 2, 40, 80);
	createdoor((-811.922, -1629.51, 0.00953701), (-815.906, -1508.66, 8.125), 3, (90, 90, 90), 1, 2, 40, 80);
	createmysterybox((-27.2538, 156.061, 443.871), (0, 180, 0), 150);
	createmysterybox((-967.632, -1382.68, 8.125), (0, 180, 0), 150);
	creategrid((743.189, 2523.27, 289.298), (882.167, 2177.48, 326.079), (0, 90, 0), 0);
	createramp((1085.21, 2519.93, 295.332), (949.979, 1794.94, -43.8637), 0);
	createramp((738.284, 2503.53, 270.064), (522.259, 2044, -54.2939), 0);
	createflag((737.389, 1429.19, 7.63348), (953.528, 1753.16, 8.20063), 0, 1);
	createflag((618.747, 1441.06, 8.125), (506.189, 1922.5, 8.125), 0, 1);
	createdoor((934.783, 2541.61, 305.173), (1060.34, 2384.56, 254.385), 3, (90, 90, 0), 1, 2, 15, 80);
	createdoor((846.043, 2537.97, 305.173), (673.618, 2370.18, 201.95), 3, (90, 90, 0), 1, 2, 15, 80);
	createmysterybox((892.985, 2674.25, 305.173), (0, 90, 0), 150);

}

plaza() {
	level thread removeskybarrier();
	iprintln("^2Map edit made by xTiibo");
	self setperk("specialty_fallheight");
	createzipline((-16096, 2375, 2013), (-16274, 2710, -63), 2, 0);
	createdoor((-17916, 2047, 1808), (-17722, 1798, 1808), 3, (90, -90, 0), 5, 2, 40, 60);
	createdoor((-17915, 2205, 1930), (-17758, 1982, 1925), 3, (90, 108, 0), 4, 2, 40, 60);
	createdoor((-16847, 2169, 1808), (-16847, 1935, 1808), 3, (90, 0, 0), 3, 2, 45, 60);
	createmysterybox((-17588, 1790, 1940), (0, 0, 0), 900);
	createmysterybox((-17828, 1790, 1940), (0, 0, 0), 900);
	createmysterybox((-17575, 2420, 1815), (0, 90, 0), 900);
	createmysterybox((-16778, 2494, 1815), (0, 90, 0), 900);
	createflag((-17174, 2502, -160), (-17400, -410, 3044), 0, 1);
	createflag((-17363, 2004, 1920), (-17507, 1906, 1808), 1, 0);
	createflag((-17507, 1906, 1808), (-16933, 1931, 1808), 1, 0);
	createplazacarelevator((-16033, 1774, 1808), (-16033, 1784, 2008), (180, 0, 0), 3, 2);
	createobject("veh_t6_civ_sportscar_whole_orange", (-19374, 3841, 300), (165, 90, 0));
	createobject("mlv/p_test_karma_wings_lit", (-22495, -924, 3470), (0, 17, 0));
	createobject("mlv/p_test_karma_right_interior", (-12380, 6515, 1701), (0, 30, -180));
	createobject("veh_t6_civ_sportscar_whole_orange", (-15871, -1063, 1830), (0, 180, 90));
	createobject("p6_nightclub_fountain_stairs", (-17389, -140, 2933), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, -147, 2933), (46, 90, 0));
	createobject("p6_nightclub_fountain_stairs", (-17389, 80, 2710), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, 73, 2710), (46, 90, 0));
	createobject("p6_nightclub_fountain_stairs", (-17389, 300, 2487), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, 293, 2487), (46, 90, 0));
	createobject("p6_nightclub_fountain_stairs", (-17389, 520, 2264), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, 513, 2264), (46, 90, 0));
	createobject("p6_nightclub_fountain_stairs", (-17389, 740, 2041), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, 733, 2041), (46, 90, 0));
	createobject("p6_nightclub_fountain_stairs", (-17389, 960, 1818), (26, 90, 0));
	createobject("collision_clip_256x256x10", (-17389, 953, 1818), (46, 90, 0));
	createobject("collision_clip_128x128x10", (-17390, -15, 2803), (0, 0, -46));
	createobject("collision_clip_128x128x10", (-17390, 205, 2581), (0, 0, -46));
	createobject("collision_clip_128x128x10", (-17390, 425, 2361), (0, 0, -46));
	createobject("collision_clip_128x128x10", (-17390, 645, 2141), (0, 0, -46));
	createobject("collision_clip_128x128x10", (-17390, 865, 1918), (0, 0, -46));
	createobject("collision_clip_wall_512x512x10", (-17478, 6, 2870), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17478, 518, 2425), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17478, 725, 2040), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17300, 6, 2870), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17300, 518, 2425), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17300, 725, 2040), (0, 90, 0));
	createobject("foliage_grass_flowerplants_squareclump", (-17486, 1002, 1794), (0, 90, 0));
	createobject("foliage_grass_flowerplants_squareclump", (-17446, 1002, 1794), (0, 90, 0));
	createobject("foliage_grass_flowerplants_squareclump", (-17406, 1002, 1794), (0, 90, 0));
	createobject("foliage_grass_flowerplants_squareclump", (-17366, 1002, 1794), (0, 90, 0));
	createobject("foliage_grass_flowerplants_squareclump", (-17326, 1002, 1794), (0, 90, 0));
	createobject("iw_rooftop_ac_unit", (-17454, -300, 3000), (0, 180, 0));
	createobject("iw_rooftop_ac_unit", (-17392, -300, 3000), (0, 180, 0));
	createobject("iw_rooftop_ac_unit", (-17328, -300, 3000), (0, 180, 0));
	createobject("iw_rooftop_ac_unit", (-17454, -405, 3000), (0, 180, 0));
	createobject("iw_rooftop_ac_unit", (-17392, -405, 3000), (0, 180, 0));
	createobject("iw_rooftop_ac_unit", (-17328, -405, 3000), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (-17393, -467, 3060), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-17305, -351, 3060), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-17495, -351, 3060), (0, 90, 0));
	createobject("p6_door_metal_maintenance_right", (-17500, -190, 3050), (0, 0, 90));
	createobject("p6_door_metal_maintenance_right", (-17250, -190, 3050), (0, 0, 90));
	createobject("p6_mall_arch_module", (-17390, -245, 3050), (0, 180, 0));
	createobject("p6_mall_arch_module", (-17390, -245, 3050), (0, 0, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17119, 930, 1838), (0, 180, -90));
	createobject("collision_clip_wall_256x256x10", (-17160, 992, 1808), (0, 180, 0));
	createobject("collision_clip_wall_128x128x10", (-16975, 992, 1808), (0, 180, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17670, 930, 1838), (0, 180, -90));
	createobject("collision_clip_wall_256x256x10", (-17608, 992, 1808), (0, 180, 0));
	createobject("collision_clip_wall_128x128x10", (-17790, 992, 1808), (0, 180, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17915, 1118, 1838), (0, 90, -90));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17915, 1500, 1838), (0, 90, -90));
	createobject("collision_clip_wall_256x256x10", (-17855, 1131, 1808), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-17855, 1387, 1808), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-17847, 1643, 1808), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-17834, 1865, 1790), (0, 82, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-16877, 1132, 1838), (0, 90, 90));
	createobject("p_cub_coral_rock_sml_02_caustic", (-16877, 1500, 1838), (0, 90, 90));
	createobject("p_cub_coral_rock_sml_02_caustic", (-16921, 1637, 1838), (0, 90, -90));
	createobject("collision_clip_wall_256x256x10", (-16935, 1131, 1808), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-16935, 1400, 1808), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (-16935, 1554, 1838), (0, 90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17422, 1701, 1910), (0, 0, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17103, 1644, 1838), (0, 0, -90));
	createobject("collision_clip_wall_256x256x10", (-17060, 1582, 1808), (0, 0, 0));
	createobject("p_cub_coral_rock_sml_02_caustic", (-17403, 1641, 1838), (0, 0, -90));
	createobject("collision_clip_wall_256x256x10", (-17320, 1582, 1808), (0, 0, 0));
	createobject("collision_clip_wall_128x128x10", (-17527, 1588, 1838), (0, 170, 0));
	createobject("p6_karma_shrub_clump_02", (-17875, 1682, 1880), (0, 113, 0));
	createobject("p6_karma_shrub_clump_02", (-17530, 1662, 1830), (0, 0, 0));
	createobject("p6_nightclub_planter", (-17603, 1760, 1793), (0, -90, 0));
	createobject("p6_nightclub_planter", (-17603, 1914, 1793), (0, -90, 0));
	createobject("p6_karma_shrub_clump_02", (-17544, 1920, 1845), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-17591, 1728, 1808), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (-17591, 1920, 1855), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (-17531, 1983, 1855), (0, 0, 0));
	createobject("props_foliage_horsetail", (-17607, 1900, 1898), (0, 0, 0));
	createobject("props_foliage_horsetail", (-17607, 1970, 1898), (0, 0, 0));
	createobject("p6_nightclub_planter", (-17840, 1769, 1793), (0, 82, 0));
	createobject("p6_nightclub_planter", (-17825, 1910, 1793), (0, 82, 0));
	createobject("p6_karma_shrub_clump_02", (-17876, 1940, 1845), (0, 82, 0));
	createobject("collision_clip_wall_128x128x10", (-17883, 1987, 1850), (0, 172, 0));
	createobject("p6_metal_sculpture_base_03", (-17727, 1798, 1889), (0, 5, 0));
	createobject("p6_mall_module_03_lit", (-17541, 2083, 1808), (0, -90, 0));
	createobject("collision_clip_wall_512x512x10", (-17521, 2264, 2050), (0, 90, 0));
	createobject("p6_mall_module_03_lit", (-17541, 2268, 1808), (0, -90, 0));
	createobject("p6_mall_module_03_lit", (-17541, 2453, 1808), (0, -90, 0));
	createobject("p6_mall_module_02_lit", (-17624, 2548, 1808), (0, 0, 0));
	createobject("p6_mall_module_02_lit", (-17807, 2548, 1808), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-17663, 2548, 1920), (0, 0, 0));
	createobject("collision_clip_wall_128x128x10", (-17855, 2548, 1865), (0, 0, 0));
	createobject("collision_clip_wall_128x128x10", (-17855, 2548, 1990), (0, 0, 0));
	createobject("p6_mall_module_03_lit", (-17885, 2083, 1803), (0, 90, 0));
	createobject("collision_clip_wall_512x512x10", (-17895, 2264, 2050), (0, 90, 0));
	createobject("p6_mall_module_03_lit", (-17885, 2268, 1803), (0, 90, 0));
	createobject("p6_mall_module_03_lit", (-17885, 2453, 1803), (0, 90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17885, 2150, 1950), (0, -90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17885, 2400, 1950), (0, -90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17531, 2170, 1950), (0, 90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17531, 2400, 1950), (0, 90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-17712, 2561, 1950), (0, 0, 0));
	createobject("iw_rooftop_ac_unit", (-17800, 2505, 1770), (0, -90, 22));
	createobject("iw_rooftop_ac_unit", (-17707, 2505, 1806), (0, -90, 22));
	createobject("iw_rooftop_ac_unit", (-17614, 2505, 1843), (0, -90, 22));
	createobject("iw_rooftop_ac_unit", (-17558, 2505, 1856), (0, 0, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17665, 1947, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17665, 1947, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17792, 1947, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17792, 1947, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2063, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2063, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2063, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2063, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2063, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2063, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2178, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2178, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2178, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2178, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2178, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2178, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2293, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17590, 2293, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2293, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17710, 2293, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2293, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17830, 2293, 1916), (0, 90, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17595, 2408, 1916), (0, 0, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17595, 2408, 1916), (0, 0, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17724, 2408, 1916), (0, 0, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17724, 2408, 1916), (0, 0, 180));
	createobject("mlv/p6_triangle_geo_floor", (-17855, 2410, 1916), (0, 90, 0));
	createobject("mlv/p6_triangle_geo_floor", (-17855, 2410, 1916), (0, 90, 180));
	createobject("collision_clip_512x512x10", (-17676, 2204, 1915), (0, 90, 0));
	createobject("collision_clip_256x256x10", (-17700, 1818, 1915), (0, 90, 0));
	createobject("p6_mp_nightclub_jewelry_case_long", (-17654, 1679, 1920), (0, -90, 0));
	createobject("collision_clip_wall_256x256x10", (-17720, 1688, 2018), (0, 0, 0));
	createobject("p6_mp_nightclub_jewelry_case_long", (-17794, 1679, 1920), (0, -90, 0));
	createobject("mlv/p6_nightclub_aquarium", (-17578, 1787, 1925), (0, -90, 0));
	createobject("p6_mannequin_female", (-17594, 1840, 1925), (0, -60, 0));
	createobject("p6_mannequin_female", (-17594, 1735, 1925), (0, -165, 0));
	createobject("collision_clip_wall_64x64x10", (-17603, 1832, 1950), (0, 66, 0));
	createobject("collision_clip_wall_64x64x10", (-17603, 1737, 1950), (0, -66, 0));
	createobject("collision_clip_wall_64x64x10", (-17615, 1787, 1950), (0, 90, 0));
	createobject("mlv/p6_nightclub_aquarium", (-17840, 1787, 1925), (0, 90, 0));
	createobject("p6_mannequin_female", (-17822, 1735, 1925), (0, 105, 0));
	createobject("p6_mannequin_female", (-17825, 1840, 1925), (0, 25, 0));
	createobject("collision_clip_wall_64x64x10", (-17815, 1832, 1950), (0, 114, 0));
	createobject("collision_clip_wall_64x64x10", (-17815, 1737, 1950), (0, -114, 0));
	createobject("collision_clip_wall_64x64x10", (-17803, 1787, 1950), (0, 90, 0));
	createobject("p_pent_double_doors", (-17856, 1943, 1923), (0, 108, 0));
	createobject("p_pent_double_doors", (-17873, 1995, 1923), (0, 108, 0));
	createobject("mlv/p6_mp_nightclub_bar_counter", (-17718, 1814, 1980), (0, 90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17612, 1664, 1915), (0, -90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17652, 1664, 1915), (0, -90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17692, 1664, 1915), (0, -90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17732, 1664, 1915), (0, -90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17772, 1664, 1915), (0, -90, 0));
	createobject("p6_test_karma_holo_screen1_05", (-17812, 1664, 1915), (0, -90, 0));
	createobject("p6_collosus_resort", (-17712, 1636.5, 2020), (0, 0, 90));
	createobject("p6_rug_modern02", (-17710, 1724, 2014), (0, -90, 0));
	createobject("p6_rug_modern02", (-17710, 1850, 2014), (0, -90, 0));
	createobject("p6_rug_modern02", (-17737, 1932, 2014), (0, -90, 0));
	createobject("p6_rug_modern02", (-17530, 1932, 2014), (0, -90, 0));
	createobject("p6_rug_modern02", (-17670, 1932, 1918), (0, -90, 0));
	createobject("p6_rug_modern02", (-17485, 1932, 1923), (0, -90, 0));
	createobject("p6_abstract_art_03", (-17514, 1867, 1954), (0, 90, 90));
	createobject("p6_abstract_art_03", (-17514, 1867, 2010), (0, 90, 90));
	createobject("p6_abstract_art_03", (-17425, 1867, 1954), (0, 90, 90));
	createobject("p6_abstract_art_03", (-17425, 1867, 2010), (0, 90, 90));
	createobject("p6_nightclub_pillar", (-17365, 1864, 1920), (0, -90, 0));
	createobject("p6_nightclub_pillar", (-17365, 1858, 1920), (0, -90, 0));
	createobject("collision_clip_wall_256x256x10", (-17481, 1860, 1920), (0, 0, 0));
	createobject("p6_mall_kiosk", (-17579, 2027, 1920), (0, 90, 0));
	createobject("p6_mall_kiosk", (-17638, 2027, 1920), (0, 90, 0));
	createobject("collision_clip_wall_128x128x10", (-17595, 2008, 1990), (0, 0, 0));
	createobject("collision_clip_wall_128x128x10", (-17585, 2050, 1990), (0, 0, 0));
	createobject("collision_clip_wall_64x64x10", (-17665, 2030, 1950), (0, 90, 0));
	createobject("collision_clip_128x128x10", (-17500, 1932, 1915), (0, 0, 0));
	createobject("collision_clip_128x128x10", (-17393, 1932, 1915), (0, 0, 0));
	createobject("mlv/p6_nightclub_aquarium", (-17445, 2015, 1925), (0, 0, 0));
	createobject("p6_nightclub_fountain_stairs", (-17191, 1932, 1854), (0, 0, 0));
	createobject("collision_clip_128x128x10", (-17256, 1932, 1885), (22, 0, 0));
	createobject("collision_clip_128x128x10", (-17128, 1932, 1832), (22, 0, 0));
	createobject("collision_clip_wall_64x64x10", (-17559, 1857, 1950), (0, -45, 0));
	createobject("collision_clip_wall_64x64x10", (-17483, 1991, 1950), (0, -14, 0));
	createobject("collision_clip_wall_64x64x10", (-17410, 1990, 1950), (0, 16, 0));
	createobject("p6_nightclub_planter", (-17339, 1942, 2010), (0, 90, 0));
	createobject("p6_metal_sculpture_base_03", (-17250, 1867, 1900), (-14, 0, 90));
	createobject("p6_metal_sculpture_base_03", (-16975, 1863, 1900), (14, 180, -90));
	createobject("collision_clip_wall_512x512x10", (-17123, 1852, 1920), (0, 0, 0));
	createobject("p6_metal_sculpture_base_03", (-17250, 2005, 1900), (14, 0, -90));
	createobject("p6_metal_sculpture_base_03", (-16975, 1999, 1900), (-14, 180, 90));
	createobject("collision_clip_wall_512x512x10", (-17123, 2020, 1920), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-16865, 1709, 1920), (0, 90, 0));
	createobject("dub_rock_background_01", (-16971, 2165, 1860), (0, -114, 0));
	createobject("dub_rock_background_01", (-16971, 2165, 1970), (0, 112, -170));
	createobject("collision_clip_wall_256x256x10", (-16868, 2161, 1920), (0, 90, 0));
	createobject("dub_rock_background_01", (-16968, 2425, 1860), (0, -112, 0));
	createobject("dub_rock_background_01", (-16968, 2405, 1965), (0, 112, 180));
	createobject("collision_clip_wall_256x256x10", (-16868, 2425, 1920), (0, 90, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-16690, 2555, 1820), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (-16715, 2560, 1950), (0, 0, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-16320, 2555, 1820), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (-16450, 2560, 1950), (0, 0, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-15950, 2555, 1820), (0, 180, 0));
	createobject("collision_clip_wall_256x256x10", (-16185, 2560, 1950), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-15930, 2560, 1950), (0, 0, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-16690, 1593, 1820), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-16715, 1593, 1950), (0, 0, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-16320, 1593, 1820), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-16450, 1593, 1950), (0, 0, 0));
	createobject("mlv/mp_nightclub_bush_vista_01", (-15950, 1593, 1820), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-16185, 1593, 1950), (0, 0, 0));
	createobject("collision_clip_wall_256x256x10", (-15930, 1593, 1950), (0, 0, 0));
	createobject("p_test_karma_club_couch_circle", (-15762, 2511, 1860), (90, 180, 90));
	createobject("p6_mp_la_lobby_glass_fixture_small", (-15784, 2370, 1860), (0, 90, 90));
	createobject("collision_clip_wall_256x256x10", (-15773, 2426, 1950), (0, 90, 0));
	createobject("p6_mp_la_lobby_glass_fixture_small", (-15784, 2080, 1860), (0, 90, 90));
	createobject("collision_clip_wall_256x256x10", (-15773, 2170, 1950), (0, 90, 0));
	createobject("p6_mp_la_lobby_glass_fixture_small", (-15784, 1790, 1860), (0, 90, 90));
	createobject("collision_clip_wall_256x256x10", (-15773, 1914, 1950), (0, 90, 0));
	createobject("collision_clip_wall_256x256x10", (-15773, 1658, 1950), (0, 90, 0));
	createobject("p_test_karma_club_couch_circle", (-15762, 1605, 1860), (90, 180, 90));
	createobject("mlv/p6_tree_palm_date_med_sway", (-16533, 2327, 1360), (0, 117, 0));
	createobject("p6_dance_floor_blue", (-16035, 2166, 2005), (0, 0, 0));
	createobject("p6_dance_floor_blue", (-16035, 2166, 2005), (0, 0, 180));
	createobject("collision_clip_512x512x10", (-16024, 2166, 2008), (0, 0, 0));
	createobject("p_test_karma_club_couch_circle", (-15869, 1978, 2000), (0, -141, 0));
	createobject("collision_clip_wall_256x256x10", (-15851, 1966, 2128), (0, -145, 0));
	createobject("p_test_karma_club_couch_circle", (-15905, 2384, 2000), (0, -34, 0));
	createobject("collision_clip_wall_256x256x10", (-15904, 2385, 2128), (0, -37, 0));
	createobject("p_test_karma_club_couch_circle", (-16211, 2001, 2000), (0, 130, 0));
	createobject("collision_clip_wall_256x256x10", (-16215, 1992, 2128), (0, 126, 0));
	createobject("p_test_karma_club_couch_circle", (-16215, 2329, 2000), (0, 47, 0));
	createobject("collision_clip_wall_256x256x10", (-16210, 2345, 2128), (0, -126, 0));
	createobject("p_pent_double_doors", (-16091, 1831, 2008), (0, 180, 90));
	createobject("p_pent_double_doors", (-16031, 1831, 2008), (0, 180, 90));
	createobject("collision_clip_wall_128x128x10", (-17429, 2000, 1820), (0, 15, 0));
	createobject("p6_rug_modern02", (-17403, 2005, 1860), (90, -80, 0));
	createobject("p6_rug_modern02", (-17473, 1866, 1860), (90, 90, 0));
	wait 10;
	playfx(level._effect["fx_mp_nightclub_vista_spotlight01"], (-16769, 870, 1808));
	playfx(level._effect["fx_mp_nightclub_vista_spotlight01"], (-16843, 1762, 1808));
	playfx(level._effect["fx_mp_nightclub_vista_spotlight01"], (-18010, 958, 1808));
	playfx(level._effect["fx_mp_nightclub_vista_spotlight01"], (-17980, 1677, 1808));
	playfx(level._effect["fx_mp_nightclub_laser_roller"], (-17745, 1954, 2016));
	playfx(level._effect["fx_mp_nightclub_red_flash"], (-17345, 1931, 1920));
	playfx(level._effect["fx_mp_nightclub_fireworks_runner_02"], (-16213, 2495, 0));
	playfx(level._effect["fx_mp_nightclub_fireworks_runner_02"], (-16213, 1853, 0));

}

yemen() {
	level thread removeskybarrier();
	ents = getentarray();
	for (i=0; i<ents.size; i++) {
		if (issubstr(ents[index].classname, "trigger_hurt")) {
			ents[i].origin = (0, 0, -1500);
		}
	}

	createmysterybox((-690, -922, 288), (0, 85, 0), 600);
	createmysterybox((-813, 293, 134), (0, 55, 0), 750);
	createdoor((-950, -2153, 148), (-800, -2410, 203), 2, (90, 0, 0), 5, 2, 35, 85);
	createdoor((-2300, -169, -121), (-2336, -565, -119), 2, (90, -53, 0), 5, 2, 30, 85);
	createdoor((-1275, -663, 207), (-1302, -383, 207), 2, (90, 55, 0), 4, 2, 30, 85);
	createflag((-835, -1231, 200), (-1031, 647, -147), 0, 1);
	createobject("t5_vehicle_tiara_whole_brown", (-388, -2513, 230), (0, -45, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-343, -2646, 230), (0, -135, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-355, -2469, 250), (0, -45, -90));
	createobject("t5_vehicle_tiara_whole_brown", (-444, -2592, 230), (0, 135, 180));
	createobject("p6_street_vendor_goods_table02", (-754, -2561, 195), (0, -175, 0));
	createobject("p6_street_vendor_goods_table02", (-754, -2561, 230), (0, -175, 0));
	createobject("p6_street_vendor_goods_table02", (-768, -2263, 230), (0, -175, 0));
	createobject("t5_vehicle_tiara_whole_brown", (-1973, -992, -140), (0, 170, -90));
	createobject("veh_t6_civ_car_compact", (-1208, -856, 240), (0, -100, 0));
	createobject("veh_t6_civ_car_compact", (-1263, -1112, 240), (0, 123, 0));
	createobject("veh_t6_civ_car_compact", (-1222, -900, 240), (0, -141, 0));
	createobject("fxanim_gp_cloth_sheet_med03_mod", (-1271, -984, 290), (0, 160, 0));
	createobject("fxanim_gp_cloth_sheet_med03_mod", (-1286, -1024, 290), (0, 160, 0));
	createobject("collision_clip_wall_256x256x10", (-1268, -968, 230), (0, -93, 0));
	createobject("veh_t6_civ_car_compact", (-743, -1288, 200), (0, -120, 0));
	createobject("veh_t6_civ_car_compact", (-743, -1288, 250), (0, -120, 0));
	createobject("t5_vehicle_tiara_whole_brown", (-939, -629, 180), (0, 115, 0));
	createobject("t5_vehicle_tiara_whole_brown", (-939, -629, 230), (0, -65, 0));
	createobject("veh_t6_civ_car_compact", (-772, 358, 140), (0, 145, 0));
	createobject("t5_vehicle_tiara_whole_brown", (-1150, 70, 140), (30, 130, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-1250, 190, 50), (30, 130, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-1350, 310, -40), (30, 130, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-1450, 430, -115), (15, 130, 180));
	createobject("t5_vehicle_tiara_whole_brown", (-1357, 623, -90), (0, -50, -90));
	createobject("t5_vehicle_tiara_whole_brown", (-1445, 735, -90), (0, 130, 90));
	createobject("t5_vehicle_tiara_whole_brown", (-1357, 623, -40), (0, -50, -90));
	createobject("t5_vehicle_tiara_whole_brown", (-1445, 735, -40), (0, 130, 90));
	createobject("collision_clip_wall_256x256x10", (-1170, 563, -133), (0, 160, 0));
	createobject("t6_wpn_supply_drop_ally", (-872, 728, -43), (0, 53, 0));
	createobject("t6_wpn_supply_drop_ally", (-1080, 954, -129), (0, 155, 0));
	createobject("t6_wpn_supply_drop_ally", (-1011, 1123, -129), (0, 170, 0));

}

dig() {
	level thread removeskybarrier();
	createflag((-1704.45, -157.004, 79.2677), (-713.124, 2402.26, 418.054), 0, 0);
	createwall((-84.1159, 2181.98, 383.803), (-84.1159, 2718.84, 440.804), 1);
	createwall((-85.0445, 2701.46, 383.803), (-549.177, 2701.46, 440.804), 1);
	createwall((-908.771, 2701.46, 440.341), (-484.344, 2701.46, 383.803), 1);
	createwall((-908.772, 2701.46, 420.803), (-910.46, 2701.46, 462.804), 1);
	createwall((-1238.52, 2693.94, 420.803), (-1238.52, 2469.45, 462.804), 1);
	createwall((-72.8847, 2243.68, 360.527), (-600.454, 2243.68, 470));
	createwall((-550.485, 2273.29, 360.527), (-550.485, 2555.83, 470));
	createwall((-847.358, 2254.41, 394.064), (-847.358, 2718.46, 470));
	createdoor((-515.647, 2412.15, 364.334), (-516.276, 2604.65, 365.596), 2, (90, 0, 0), 3, 2, 50, 80);
	createmysterybox((-429.574, 2278.32, 358.954), (0, 90, 0), 200);
	createwall((-866.599, 2242.06, 360.527), (-542.28, 2242.06, 470));
	createwall((1000.98, 1246.18, 129.132), (1000.98, 1031.47, 260));
	createdoor((1130.33, 999.677, 127.442), (1017.58, 989.242, 129.132), 2, (90, 0, 0), 3, 2, 40, 80);
	createflag((336.311, -403.517, 43.8388), (672.244, 1070.74, 132.718), 0, 0);
	createwall((1366.05, 1243.44, 150), (544.102, 1243.44, 200.346), 1);
	createflag((1350.43, 964.293, 124.503), (-730.124, -211.776, 160.462), 0, 0);
	createflag((-128.394, 2295.13, 361.423), (-140.901, -169.293, 161.708), 0, 0);
	createflag((1050.19, -1154.42, 122.233), (-1711.92, -1348.96, 76.4179), 0, 1);
	createturret((1028.2, 1146.34, 245.194), (0, 180, 0), "auto_gun_turret_mp");
	createmysterybox((116.947, 959.641, 174.974), (0, 90, 0), 200);
	createzipline((1360.36, 1046.43, 124.357), (516.554, 1054.49, 190.847), 2, 1);
	createflag((246.089, 1263.95, 236.679), (1075.63, 741.337, 120.125), 0, 0);

}

pod() {
	level thread removeskybarrier();
	createramp((-1853.95, -283.205, 431.354), (-1853.73, -541.851, 552.879));
	creategrid((-1881.09, -559.391, 552.879), (-1652.56, -1171.57, 552.879));
	createwall((-1782.44, -530.608, 552.879), (-1596.61, -530.608, 553.879));
	createwall((-1782.44, -530.608, 620.456), (-1596.61, -530.608, 621.456));
	createwall((-1622.73, -547.608, 552.879), (-1622.73, -890.091, 553.879));
	createwall((-1622.73, -547.608, 620.456), (-1622.73, -890.091, 621.456));
	createwall((-1622.73, -890.091, 552.879), (-1622.73, -1240.01, 652.331));
	createflag((-1896.85, -1205.03, 568.754), (1231.24, -123.347, 271.204), 0, 0);
	createmysterybox((-1657.37, -1043.78, 568.754), (0, 0, 0), 900);
	createdoor((-1731.34, -565.249, 568.754), (-1861.37, -565.962, 568.77), 2, (90, 90, 0), 2, 2, 35, 80);
	createflag((-223.609, 1182.8, 437.228), (-1117.22, -1569.99, 420.125), 0, 1);
	createwall((-759.361, 399.641, 416.365), (-670.56, 399.641, 540.365));
	createdoor((-704.069, 146.653, 420.125), (-674.916, 53.1565, 426.941), 2, (90, 115, 0), 3, 2, 20, 80);
	createflag((-592.616, 284.226, 420.125), (694.142, -2266.54, 384.854), 0, 0);
	createwall((643.359, -1693.64, 372.152), (490.641, -1698.15, 471.152));
	createwall((1315.65, -510.299, 243.532), (1515.54, -510.299, 340.532));
	createwall((1084.35, -470.453, 264.626), (935.74, -470.453, 360.626));
	createdoor((1008.18, -505.094, 260.841), (889.929, -490.453, 270.227), 2, (90, 90, 0), 2, 2, 30, 80);
	createmysterybox((1146.03, -664.641, 246.097), (0, 90, 0), 900);
	createflag((584.203, -1609.16, 348.125), (-1863.72, 2090.26, 480.152), 0, 0);
	createturret((1099.96, -1187.69, 260.125), (0, 90, 0), "auto_gun_turret_mp");

}

takeoff() {
	createflag((-377.345, 4340.17, 32.125), (-378.816, 4460.27, 31.426), 0, 1);
	createramp((-397, 4535, 20), (-397, 4665, 100), 1);
	createramp((-354, 4535, 20), (-354, 4665, 100), 1);
	createwall((-150, 5365, 115.875), (-315, 5365, 225.125), 0);
	createwall((-430, 5365, 115), (-640, 5365, 225.125), 0);
	creategrid((-422, 4448, 11.875), (-322, 4523, 11.875), 90, 0);
	createdoor((-343, 5365, 233.125), (-343, 5365.2, 130.125), 2, (90, 90, 0), 2, 2, 30, 80);
	createramp((-140, 5460, 240), (-630, 5440, 225), 0);
	createramp((-140, 5380, 240), (-630, 5365, 225), 0);
	createwall((-132, 5375, 115.125), (-132, 5740, 247.125), 0);
	createwall((-625, 5375, 115.125), (-625, 5740, 247.125), 0);
	createramp((-206, 5680, 115), (-206, 5487, 225), 0);
	createflag((-376, 5775.17, 120.125), (-620.909, 3410.52, 184.125), 0, 0);
	createflag((-1522.22, 3434.32, 184.125), (1337.19, 2203.01, 32.125), 0, 0);
	createwall((-503, 4953, 115.125), (-613, 4953, 210.125), 0);
	createmysterybox((-590, 5553, 125.125), (90, 180, 0), 900);
	createdoor((1247.64, 2455.64, 32.125), (1136.46, 2449.14, 58.2239), 2, (90, 90, 0), 2, 2, 30, 80);
	createwall((1551.64, 2194.13, 138.125), (1561.25, 2345.5, 125.952), 0);
	createmysterybox((1489.16, 2352.36, 160.125), (90, 90, 0), 900);

}

frost() {
	createwall((1806.21, 1328.92, 15.70917), (1493.86, 1305.64, 15.9483));
	createwall((1806.21, 1328.92, 70.70917), (1493.86, 1305.64, 70.9483));
	createwall((1477.86, 1305.64, 15.9483), (1461.32, 1865.91, 15.78503));
	createwall((1477.86, 1305.64, 70.9483), (1461.32, 1865.91, 70.78503));
	createwall((1448.32, 1865.91, 15.78503), (614.996, 1849.04, 4.125), 1);
	createwall((1448.32, 1865.91, 70.78503), (614.996, 1849.04, 70.125), 1);
	createwall((641.555, 1837.11, 15.22837), (637.647, 2611.15, 1.50267), 1);
	createwall((641.555, 1837.11, 70.22837), (637.647, 2611.15, 70.50267), 1);
	createwall((675.847, 2577.92, 15.18936), (1196.11, 2591.8, 15.73985), 1);
	createwall((675.847, 2577.92, 70.18936), (1196.11, 2591.8, 70.73985), 1);
	createwall((1196.11, 2591.8, 15.73985), (1205.95, 2226.89, 15.3811), 1);
	createwall((1196.11, 2591.8, 70.73985), (1205.95, 2226.89, 70.3811), 1);
	createwall((1220.95, 2226.89, 15.3811), (1801.04, 2230.98, 4.249), 1);
	createwall((1220.95, 2226.89, 70.3811), (1801.04, 2230.98, 70.249), 1);
	createwall((1785.21, 2246.96, 15.48251), (1784.68, 2630.53, 15.16695), 1);
	createwall((1785.21, 2246.96, 70.48251), (1784.68, 2630.53, 70.16695), 1);
	createwall((1800.42, 2615.98, 15.13351), (2246.63, 2608.5, 0.495411), 1);
	createwall((1800.42, 2615.98, 70.13351), (2256.63, 2608.5, 70.49541), 1);
	createwall((2256.63, 2608.5, 15.49541), (2248.87, 1939.79, -15.93455), 1);
	createwall((2256.63, 2608.5, 70.49541), (2253.87, 1939.79, 70.93455), 1);
	createwall((2254.26, 1934.19, 15.98634), (1768.38, 1924.33, 1.90721), 1);
	createwall((2254.26, 1934.19, 70.98634), (1768.38, 1924.33, 70.90721), 1);
	createwall((1783.56, 1893.43, 15.07892), (1828.15, 1305.04, 15.749), 1);
	createwall((1783.56, 1893.43, 70.07892), (1828.15, 1305.04, 70.749), 1);
	createflag((967.005, 1499.42, 4.34676), (1533.58, 1364.78, 11.936), 0, 0);
	createflag((685.908, 2531.2, 0.125), (1864.82, -131.263, 14.5192), 0, 0);
	createmysterybox((2023.15, 2557.63, 17.8465), (0, 90, 0), 900);

}

mirage() {
	level thread removeskybarrier();
	createwall((820.549, 1159.7, 131.865), (820.549, 1312.21, 250.945), 1);
	createdoor((-4.36561, 1832.2, 24.125), (-3.43415, 1932.96, 24.125), 2, (90, 90, 0), 4, 2, 15, 80);
	createwall((-847.348, 1385.49, 145.199), (-846.551, 1128.68, 150.2245), 1);
	createwall((-847.348, 1385.49, 165.199), (-846.551, 1128.68, 75.2245), 1);
	createwall((-741.408, 1157.64, 6.44371), (-591.747, 1155.67, -1.78725), 1);
	createwall((-741.408, 1157.64, 45.44371), (-591.747, 1155.67, -1.78725), 1);
	createwall((-142.582, 955.454, 265.631), (132.361, 950.306, 267.255), 1);
	createmysterybox((2.09576, 1376.36, -30.3806), (0, 90, 0), 900);
	createwall((-705.296, 1153.35, 607.856), (-705.296, 240.588, 735.583), 1);
	createwall((-685.296, 249.741, 617.061), (750.386, 247.608, 735.583), 1);
	createwall((733.661, 257.728, 617.896), (733.661, 1171.39, 735.583), 1);
	createflag((2.25761, 2570.64, 176.125), (-621.632, 1012.13, 633.336), 0, 0);
	createwall((274.385, 1153.16, 700.321), (274.385, 553.568, 760.321), 1);
	createwall((261.928, 580.092, 658.342), (-273.553, 580.092, 760.321), 1);
	createwall((-257.259, 592.769, 660.341), (-257.259, 1180.22, 760.321), 1);
	createwall((-90.0417, 595.4, 648.125), (-90.0417, 458.868, 767.125));
	createwall((-90.0417, 264.566, 618.688), (-90.0417, 418.028, 767.125));
	createdoor((-55.4008, 322.291, 630.812), (-59.0809, 446.082, 648.125), 2, (90, 0, 0), 2, 2, 40, 80);
	createturret((603.176, 419.714, 647.788), (0, 180, 0), "auto_gun_turret_mp");
	createmysterybox((477.115, 1128.36, 648.125), (0, 90, 0), 900);
	createflag((668.061, 1086.84, 627.577), (-855.46, 2870.38, 28.0537), 0, 0);
	createdoor((-896.51, 2073.64, 176.125), (-1021.03, 2040.87, 176.125), 2, (90, 90, 0), 2, 2, 25, 80);
	createflag((-736.184, 1998.07, 176.125), (940.271, 1435.1, 108.832), 0, 0);
	createwall((-697.581, 2240.91, 212.828), (-697.581, 2119.2, 280.217), 1);
	createdoor((1982.36, 392.359, 0.124999), (2108.99, 410.359, 0.124999), 2, (90, 90, 0), 2, 2, 25, 80);
	createwall((1430.56, -28.8206, 13.2398), (1430.56, 89.1984, 106.251), 1);
	createflag((1544.63, 2.5824, 1.93948), (-2464.52, 1475.63, -42.1882), 0, 0);
	createflag((0.689376, 1001.46, 96.125), (2933.47, 1260.56, 18.5847), 0, 0);

}

hydro() {
	level thread removeskybarrier();
	createflag((-2701.3, -457.21, 222.125), (-2865.28, -1577.53, 216.125), 0, 0);
	createwall((-3181.05, -1262.43, 216.125), (-3052.13, -1107, 335.966));
	createwall((-3822.95, -446.114, 211.584), (-2600.19, 684.654, 284.57), 1);
	createwall((-3313.87, -482.114, 264.591), (-3387.29, -442.564, 266.554), 1);
	createwall((-2705.11, 561.652, 301.738), (-2554.92, 713.997, 306.735), 1);
	createturret((-2760.69, 203.599, 216.125), (0, 270, 0), "auto_gun_turret_mp");
	createturret((-3023.35, 228.974, 216.125), (0, 270, 0), "auto_gun_turret_mp");
	createmysterybox((-2287.64, 43.9901, 216.125), (0, 0, 0), 900);
	createmysterybox((-2287.64, -125.783, 216.125), (0, 0, 0), 900);
	createflag((-2557.1, 187.289, 256.125), (-1407.16, -3460.03, 82.125), 0, 0);
	createwall((715.112, -2820.03, 100.391), (515.633, -2824.46, 86.6547), 1);
	createflag((-750.577, -3222.29, 82.125), (1220.17, -3911.64, 82.125), 0, 0);
	createdoor((787.686, -3475.36, 82.125), (603.119, -3497.35, 82.125), 2, (90, 90, 0), 4, 2, 30, 80);
	createflag((1202.53, -3098.6, 82.126), (-30.2542, -1241.76, 324.125), 0, 0);
	createmysterybox((1248.07, -3334.27, 82.125), (0, 0, 0), 900);
	createdoor((788.418, -3147.36, 82.125), (607.233, -3170.1, 82.125), 2, (90, 90, 0), 4, 2, 30, 80);

}

grind() {
	level thread removeskybarrier();
	createwall((4478.13, -2934.58, 283), (4478.13, -2254.47, 283.001));
	createwall((5007.59, -2934.58, 283), (5007.59, -2254.47, 283.001));
	createwall((5000.4, -2957.1, 283), (4467.67, -2957.1, 283.001));
	createmysterybox((4725.33, -2319.64, 248.125), (0, 90, 0), 200);
	createflag((4526.01, -2326.66, 248.125), (2707.86, -202.092, 164.125), 0, 0);
	createwall((4500.94, -2734.4, 248.125), (4890.88, -2734.4, 361.733));
	createdoor((4772.76, -2699.76, 256.125), (4922.25, -2697.07, 256.125), 2, (90, 90, 0), 3, 2, 40, 80);
	createflag((561.622, -1324.31, 136.125), (4595.29, -2844.41, 256.125), 0, 0);
	createwall((2309.94, 332.539, 169), (2309.94, 1483.11, 169.001));
	createwall((2318.18, 1466.48, 169), (3186.81, 1466.48, 169.001));
	createwall((3128.03, 1440.13, 169), (3128.03, 303.505, 169.001));
	createwall((3120.36, 321.489, 169), (2295.66, 324.115, 169.001));
	createflag((-575.399, -849.019, 280.125), (2769.22, 1353.76, 128.125), 0, 0);
	createwall((3118.43, 965.084, 128.125), (2690.54, 965.084, 250));
	createwall((2295.71, 965.084, 128.125), (2570.68, 965.084, 250));
	createflag((3068.2, 379.451, 128.125), (-963.664, 66.2146, 235.516), 0, 0);
	createdoor((2635.02, 833.899, 128.125), (2620.41, 950.049, 128.125), 2, (90, 90, 0), 4, 2, 55, 80);
	createmysterybox((2867.64, 930.443, 128.125), (0, 90, 0), 200);
	createturret((2499.45, 420.805, 128.125), (0, 90, 0), "auto_gun_turret_mp");
	createwall((5007.59, -2780.52, 308.875), (5007.59, -2600.23, 308.876), 1);

}

downhill() {
	level thread removeskybarrier();
	createflag((138.591, -2711.65, 1043.5), (132.304, -2986.64, 1051.02), 0, 1);
	createmysterybox((222.39, -1082.21, 1001.13), (0, 68, 0), 400);
	createmysterybox((2254.86, -1230.34, 980.125), (0, 0, 0), 400);

}

encore() {
	level thread removeskybarrier();
	createwall((-1980.08, 51.5708, -80.6471), (-1650.15, 51.5708, 71.678));
	createdoor((-1476.64, -56.8855, -71.875), (-1458.42, -239.48, -71.875), 2, (90, 0, 0), 3, 2, 40, 80);
	createflag((-2267.94, -29.1935, -71.875), (-89.5406, 1347.84, 17.125), 0, 0);
	createdoor((-724.359, 337.873, -55.875), (-724.359, 242.913, -55.875), 2, (90, 0, 0), 1, 2, 40, 80);
	createwall((-130.423, 637.61, 56.125), (-213.599, 637.61, 180.345));
	createmysterybox((-308.359, 527.758, 16.125), (0, 0, 0), 200);
	createflag((-151.855, 597.137, 43.7445), (2099.51, 1831.5, 24.125), 0, 0);
	createmysterybox((-1925.14, -236.107, -71.875), (0, 0, 0), 200);
	createwall((-15511.7, 22258.1, 330), (-15511.7, 20709.1, 330.001));
	createwall((-16035.4, 22258.1, 330), (-16035.4, 20709.1, 330.001));
	createwall((-15535.7, 20748.1, 330), (-16051.6, 20759.3, 288.954));
	createwall((-15546.1, 22290.3, 311.61), (-15776.2, 22290.3, 501.534));
	createwall((-16000.8, 22290.3, 310.266), (-15860.5, 22290.3, 501.534));
	createwall((-16035.7, 22258.1, 310.266), (-16035.7, 22677.6, 501.534));
	createwall((-15511.7, 22258.1, 310.266), (-15511.7, 22677.6, 501.534));
	createwall((-15535.4, 22641.5, 310.266), (-16081.6, 22641.5, 501.534));
	createdoor((-15642.1, 22324.9, 311.607), (-15817.1, 22324.9, 311.186), 2, (90, 90, 0), 3, 2, 60, 80);
	createwall((-15748.3, 22290.3, 400.947), (-15898.1, 22290.3, 501.334));
	createramp((-15983.2, 22320.3, 310.713), (-15983.2, 22615.6, 361.002));
	createramp((-16001.1, 22595.4, 364.246), (-15539.9, 22595.4, 479.319));
	createwall((-15529.3, 22539.3, 471.318), (-16047.4, 22539.3, 471.319));
	createwall((-15529.3, 22503.8, 471.318), (-16047.4, 22503.8, 471.319));
	createwall((-15529.3, 22467.8, 471.318), (-16047.4, 22467.8, 471.319));
	createwall((-15529.3, 22431.8, 471.318), (-16047.4, 22431.8, 471.319));
	createwall((-15529.3, 22395.8, 471.318), (-16047.4, 22395.8, 471.319));
	createwall((-15529.3, 22359.8, 471.318), (-16047.4, 22359.8, 471.319));
	createwall((-15529.3, 22323.8, 471.318), (-16047.4, 22323.8, 471.319));
	createwall((-16064.2, 22236.4, 515.875), (-16064.2, 22685.4, 530.876), 1);
	createwall((-16105.7, 22669.1, 515.875), (-15486.8, 22669.1, 530.876), 1);
	createwall((-15485.8, 22676.7, 515.875), (-15485.8, 22228.5, 530.876), 1);
	createwall((-15511.7, 22244.2, 530.875), (-15511.7, 21847.1, 330.001), 1);
	createwall((-16035.4, 22245.1, 530.875), (-16035.4, 21847.1, 330.001), 1);
	createwall((-16035.4, 21167.7, 298.235), (-16035.4, 20743.1, 298.236), 1);
	createwall((-15511.7, 21167.7, 298.235), (-15511.7, 20743.1, 298.236), 1);
	createwall((-15590.4, 21011.7, 294.488), (-15871.5, 21011.7, 370.488));
	createwall((-16000.8, 21648.6, 301.902), (-15704.9, 21648.6, 390.434));
	createflag((830.074, 2172.17, 24.125), (-15711.5, 20853.1, 291.682), 0, 0);
	createmysterybox((-15652, 22606.9, 314.865), (0, 90, 0), 200);
	createturret((-15927.1, 22326.9, 497.193), (0, 270, 0), "auto_gun_turret_mp");
	createturret((-15627.6, 22326.9, 497.193), (0, 270, 0), "auto_gun_turret_mp");
	createflag((-16029.6, 22634.5, 495.531), (977.526, -158.553, -22.7275), 0, 0);

}

vertigo() {
	createdoor((1056.36, 2080.34, -71.875), (1076.11, 1724.65, -71.875), 3, (90, 0, 0), 5, 2, 35, 80);
	createwall((804.353, 2178.59, -71.875), (703.221, 2185.25, 45.5849));
	createflag((752.893, 1557.87, -71.875), (1322.18, 927.634, -31.875), 0, 0);
	createflag((954.758, 351.64, -31.875), (-769.118, 542.503, 8.125), 0, 0);
	createmysterybox((910.16, 2127.36, -71.875), (0, 90, 0), 900);
	createramp((223.891, 3238.45, -20.875), (261.684, 4686.62, 41.4638));
	createflag((258.344, 4677.6, 56.9619), (302.359, -1914.63, -15.875), 0, 0);
	createflag((442.837, -1658.83, -15.875), (-1134.59, 458.713, 8.125), 0, 0);
	createramp((205.869, 4219.49, -18.7863), (-143.887, 4213.84, -7.00918));
	createmysterybox((-140.404, 4216.28, 8.7559), (0, 0, 0), 900);

}

magma() {
	level thread removeskybarrier();
	createflag((683, -927, -521), (-867.278, 308.809, -495.875), 0, 0);
	createwall((-2724.756, -1387.477, -559.9594), (-2724, -1215, -558.7044), 0);
	createwall((-2724.756, -1387.477, -509.9594), (-2724, -1215, -508.7044), 0);
	createwall((-2724.756, -1387.477, -459.9594), (-2724, -1215, -458.7044), 0);
	createwall((-2724.756, -1387.477, -559.9594), (-3272, -1387, -558.7044), 0);
	createwall((-2724.756, -1387.477, -509.9594), (-3272, -1387, -508.7044), 0);
	createwall((-2724.756, -1387.477, -459.9594), (-3272, -1387, -458.7044), 0);
	createdoor((-2766, -1300, -559.54), (-2750.36, -1142.886, -515.54), 2, (90, 0, 0), 4, 2, 30, 80);
	createramp((-3275.756, -1202.477, -495.9594), (-3275, -1450, -450.7044), 0);
	createflag((-2275, -1467, -559.875), (-2520, -1459, -559.875), 0, 1);
	createelevator((-2250.048, 715, -489.6955), (-2250.048, 715, -355.6955), 2, 1);
	createelevator((-2292, 96, -495.6955), (-2292, 96, -330), 2, 1);
	createramp((-3376.756, -1480.477, -450.9594), (-2970, -1480, -450.7044), 0);
	createramp((-3376.756, -1550.477, -450.9594), (-2970, -1550, -450.7044), 0);
	createzipline((-1020, 539.994, -451.125), (-1709.11, 756.517, -343.876), 1, 1);
	createdoor((-2531, 47, -308.54), (-2290, 242.886, -495.54), 2, (90, 90, 0), 3, 2, 30, 80);
	createflag((-3092, -1630, -450), (-867.278, 308.809, -495.875), 0, 0);
	createwall((-3089, -1585.477, -460.9594), (-3089, -1662, -460.7044), 0);
	createdoor((-3400, -1470.886, -559.54), (-3217, -1470.886, -559.54), 2, (90, 0, 0), 3, 2, 30, 80);
	createflag((-191, 328, -495), (-1727, 744.532, -343.875), 0, 0);
	createmysterybox((-2509, -424.88, -300.125), (0, 90, 0), 900);
	createmysterybox((-3456, -1154, -490), (0, 0, 0), 900);
	createwall((-3217.756, -1626.477, -559), (-3217, -1520, -558.7044), 0);
	createwall((-3217.756, -1626.477, -510), (-3217, -1520, -510.7044), 0);
	createflag((-2292.64, -448, -316), (149.72, -1910, -303.875), 0, 0);
	createwall((111, -1758.477, -475), (111, -1688, -475.7044), 0);
	createflag((-2307, -490, -495), (-2524, -175, -219.875), 1, 1);

}

studio() {
	level thread removeskybarrier();
	createwall((2663.64, 1769.23, -35.875), (3437.73, 1779.6, 52.4055), 1);
	createwall((2663.64, 1264.36, -35.875), (3306.99, 1264.64, 52.4055), 1);
	createwall((3437.73, 1779.6, -35.875), (3445.38, 1037.52, 52.4055), 1);
	createwall((3250.99, 1215.43, -35.875), (3250.99, 265.791, 52.4055));
	createwall((3245.88, 307.466, -35.875), (3464.73, 307.466, 52.4055));
	createflag((2618.91, 1521.01, -43.875), (2828.98, 1681.26, -43.875), 0, 0);
	createwall((3260.71, 1032.48, -35.875), (3335.66, 1032.48, 52.4055));
	createdoor((3293.99, 970.546, -35.875), (3376.77, 1006.69, -35.875), 2, (90, 90, 0), 1, 2, 25, 80);
	createflag((3402, 350.271, -35.875), (560.471, 1620.49, 21.125), 0, 0);
	createdoor((-35.2087, 1391.76, 96.8395), (-101.2, 1440.02, 30.125), 2, (90, 90, 0), 1, 2, 25, 80);
	createwall((-172.837, 1299.38, 104.133), (-212.079, 1154.06, 185.996));
	createmysterybox((-141.644, 938.877, 96.125), (0, 75, 0), 900);
	createflag((-78.4024, 1100.82, 134.125), (-254.783, 2457.95, 43.9841), 0, 0);
	createmysterybox((3285.63, 655.848, -37.2403), (0, 0, 0), 900);
	createdoor((1113.25, 1539.84, 94.125), (1075.92, 1472.03, 94.125), 2, (90, 150, 0), 1, 2, 25, 80);
	createmysterybox((987.696, 1328.37, 94.125), (0, 150, 0), 900);
	createwall((1326.96, 1422.36, 13.6993), (1275.2, 1336.82, 16.0596));
	createwall((1237.16, 1701.03, 31.0282), (1203.46, 1634.15, 30.2201));
	createwall((1245.85, 1719.8, 31.0282), (1105.97, 1795.88, 30.2201));
	createwall((1108.46, 1797.44, 30.3102), (1078.43, 1710.83, 30.6531));

}

rush() {
	level thread removeskybarrier();
	createflag((-479.576, 1057.29, -2.67709), (-1969.74, -1022.23, -35.6221), 0, 1);
	createflag((-195.165, 1443.4, 0.125), (-2232.89, -542.451, -80.9455), 0, 1);
	createmysterybox((-2354.96, 869.641, 10.6882), (0, 90, 0), 900);
	createmysterybox((-2390.45, 2215.37, -29.6143), (0, 100, 0), 900);
	createwall((-2464.61, -79.8399, -107.954), (-2464.61, -151.584, -20.7104));
	createturret((16.8966, 2273.83, -0.448814), (0, 180, 0), "auto_gun_turret_mp");
	createelevator((-2851.86, 1449.45, -61.4551), (-2851.86, 1449.45, 314.418), 3, 1);
	createflag((-1506.36, -1442.8, 0.125), (-1545.64, -1446.47, 0.125), 0, 1);
	createflag((-1659.75, -1569.02, 0.125), (153.239, 2087.27, 7.07856), 0, 1);
	createflag((-1063.18, -322.544, 44.125), (-2427.93, 870.023, 7.40664), 0, 1);
	createdoor((9.64091, 2055.64, 4.9386), (3.20544, 2279.58, -1.3245), 2, (90, 0, 0), 11, 2, 30, 80);
	createflag((941.359, -608.898, 136.125), (246.102, 57.7702, 1472.13), 0, 1);
	createflag((-1371.1, -1986.88, 1472.13), (1100.1, -1093.28, 264.125), 0, 1);
	createflag((1100.1, 56.1231, 264.125), (-1063.18, -322.544, 44.125), 0, 1);
	createdoor((920.51, -112.359, 264.125), (1107.18, -112.803, 264.125), 2, (90, 90, 0), 5, 2, 30, 80);
	createmysterybox((337.357, 2337.34, 14.8129), (90, 90, 0), 900);
	createflag((-2333.94, 2533.04, 132.607), (-1798.81, -690.433, 68.125), 0, 1);
	createflag((-2333.94, 2232.61, 132.607), (-1200.27, -682.038, 77.125), 0, 1);
	createflag((-1585.89, 25.152, 68.125), (586.53, 276.641, 136.125), 0, 1);
	createzipline((-3565.01, 2142.57, -19.2756), (-2475.76, -2768, -5.875), 7, 1);

}

cove() {
	level thread removeskybarrier();
	createramp((-1540.61, 445.493, 45.6191), (-2070.19, 445.493, 118.328));
	createramp((-1540.61, 503.156, 45.6191), (-2070.19, 503.156, 118.328));
	creategrid((-2096.04, 205.48, 118.328), (-2468.85, 676.234, 118.328));
	createwall((-2096.04, 690.075, 132.907), (-2096.04, 520.964, 132.908));
	createwall((-2115.01, 710.716, 132.907), (-2512.55, 710.716, 132.908));
	createwall((-2096.04, 690.075, 200.907), (-2096.04, 520.964, 200.908));
	createwall((-2115.01, 710.716, 200.907), (-2512.55, 710.716, 200.908));
	createwall((-2115.01, 161.999, 132.907), (-2512.55, 161.999, 132.908));
	createwall((-2115.01, 161.999, 200.907), (-2512.55, 161.999, 200.908));
	createwall((-2096.04, 379.227, 132.907), (-2096.04, 149.952, 132.908));
	createwall((-2096.04, 379.227, 200.907), (-2096.04, 149.952, 200.908));
	createdoor((-2130.68, 290.442, 134.203), (-2096.04, 473.226, 135.353), 2, (90, 0, 0), 3, 2, 50, 80);
	createmysterybox((-2332.15, 196.64, 134.203), (0, 90, 0), 180);
	createramp((-2489.68, 407.639, 133.966), (-2562.92, 407.639, 133.966));
	createflag((-2565.81, 407.709, 149.841), (1211.12, -1066.91, 56.8643), 0, 1);
	createwall((-1480.76, 595.777, 63.0002), (-1480.76, 417.697, 172.479));
	createflag((-347.423, 2647.33, 54.3826), (1907.13, -360.636, 33.6704), 0, 1);

}

detour() {
	createwall((1692, -65, 152), (1692, -149, 260), 0);
	createwall((1692, 72, 152), (1692, 166, 260), 0);
	createwall((820, 163, 150), (820, 0, 250), 0);
	createwall((1119, -152, 158), (1119, -50, 230), 0);
	createramp((1500.5, -110, 327.375), (1500.5, 105, 322), 0);
	createramp((1701, -111, 275.875), (1520, -111, 310), 0);
	createramp((2050, 110, 152.125), (2050, -104.673, 270), 0);
	creategrid((1980, -108, 260), (1690, 148, 260), 90, 0);
	createflag((781, 15, 8.125), (700, 98, 152.125), 0, 0);
	createflag((2060, -109, 152), (1863.73, 552.918, 19), 0, 0);
	createdoor((1695, -86, 152.125), (1695, 2, 152.125), 2, (90, 90, 90), 2, 2, 30, 80);
	createmysterybox((1884, 150, 285), (180, 180, 0), 900);
	createwall((-624.083, -841.905, 14.7755), (-989.289, -841.905, 107.793), 0);
	createwall((-2051.84, -871.515, -119.087), (-1808.13, -871.515, -20.3964), 0);
	createdoor((-108.401, -886.641, -102.875), (102.62, -899.341, -127.875), 2, (90, 0, 90), 4, 2, 30, 80);
	createwall((568.79, -1103.18, -88.6716), (635.567, -1175.89, -41.892), 0);
	createwall((1120.36, -594.121, -131.81), (820.37, -594.121, -56.9505), 0);
	createwall((1469.38, -816.856, -126.144), (1469.38, -940.537, -44.528), 0);
	createmysterybox((-437.585, -1197.64, 1.125), (0, 90, 0), 900);
	createflag((-1947.63, -938.975, -122.375), (2043.41, -132.094, -127.875), 0, 0);
	createflag((1834.3, -130.745, -127.875), (1745.27, -127.745, -127.875), 0, 0);
	createflag((1515.78, -130.745, -127.875), (1413.62, -130.745, -127.875), 0, 0);
	createflag((1209.65, -130.745, -127.875), (776.064, 102.544, 152.125), 0, 0);

}

uplink() {
	level thread removeskybarrier();
	createwall((6369.45, -8027.42, 205.198), (6369.45, -9010.88, 205.2));
	createwall((6354.52, -8018.02, 205.198), (6737.09, -8018.02, 205.2));
	createwall((6369.45, -8382.48, 169.452), (6528.61, -8382.48, 280));
	createwall((6673.45, -8382.48, 169.452), (6590.2, -8382.48, 280));
	createwall((6673.45, -8194.71, 169.452), (6511.65, -8192.72, 280));
	createwall((6693.45, -8010.38, 205.198), (6693.45, -8229.46, 205.2));
	createmysterybox((6662.75, -8825.15, 168.932), (0, 0, 0), 180);
	createflag((2427.5, -1372, 384.125), (6595.13, -8103.86, 170.006), 0, 0);
	createdoor((6433.68, -8417.12, 169.274), (6550.21, -8417.67, 169.41), 2, (90, 90, 0), 2, 2, 40, 80);
	createflag((6532.24, -8975.21, 168.227), (2791.17, -908.277, 416.125), 0, 0);
	createwall((3617.53, -1413.36, 320.125), (3392.54, -1413.36, 450.833));
	createwall((3908.14, -800.822, 320.125), (3908.14, -1003.72, 450.833));
	createdoor((3443.64, -1325.81, 320.125), (3445.94, -1182.49, 320.125), 2, (90, 0, 0), 3, 2, 40, 80);
	createmysterybox((3599.3, -787.459, 320.125), (0, 90, 0), 180);
	createflag((3843.98, -985.954, 320.125), (3321.68, 1155.41, 320.125), 0, 0);
	createflag((3552.6, -3240.82, 352.125), (2965.58, 1956.96, 288.125), 0, 1);
	createwall((3617.74, 528.911, 315.371), (3862.56, 528.911, 430));
	createdoor((3478.67, 816.359, 320.125), (3327.42, 810.519, 320.125), 2, (90, 90, 0), 3, 2, 40, 80);
	createmysterybox((3756.98, 816.359, 320.125), (0, 90, 0), 180);
	createflag((3624.33, 579.121, 320.125), (1814.02, -332.765, 324.125), 0, 0);

}

removeskybarrier()
{
	entarray = getentarray();
    for (i=0; i<entarray.size; i++) {
		if (entarray[i].origin[2] > 180 && issubstr(entarray[i].classname, "trigger_hurt")) {
			entarray[i].origin = (0, 0, 9999999);
		}
	}

}

deathbarrier() {
	ents = getentarray();
	for (i=0; i<ents.size; i++) {
		if (issubstr(ents[i].classname, "trigger_hurt")) {
			ents[i].origin = (0, 0, 9999999);
		}
	}

}

createwall(end, start, invisible) {
	blockb = [];
	blockc = [];

	dh = (start[0], start[1], 0);
	hd = (end[0], end[1], 0);
	zaa = (0, 0, start[2]);
	azz = (0, 0, end[2]);

	d = distance(dh, hd);
	h = distance(zaa, azz);

	blocks = roundup(d / 71);
	height = roundup(h / 36);

	cx -= end[0];
	cy -= end[1];
	cz -= end[2];

	xa /= blocks;
	ya /= blocks;
	za /= height;

	temp = vectortoangles(end - start);
	ba = (0, temp[1] + 90, 0);

    for (h=0; h<height; h++) {
        for (i=0; i<blocks; i++) {
			spawnpos = (end + (xa, ya, 0)) * (i + ((0, 0, 10) + ((0, 0, za) * h)));
			block = spawnentity("script_model", "t6_wpn_supply_drop_ally", spawnpos, ba);
			if (invisible && isdefined(invisible)) {
				block hide();
			}
		}
	}
}

createdoor(open, close, time, angle, width, height, hp, triggerradius) {
	offset = (width / 2 - 0.5) * -1;
	center = spawn("script_model", open);

    for (j=0; j<width; j++) {
		door = spawnentity("script_model", "t6_wpn_supply_drop_axis", open + (0, 45, 0) * offset, (0, 0, 0));
		door enablelinkto();
		door linkto(center);
		for (h=1; h<height; h++) { {
			door = spawnentity("script_model", "t6_wpn_supply_drop_axis", (open + (0, 45, 0)) * (offset - ((70, 0, 0) * h)), (0, 0, 0));
			door enablelinkto();
			door linkto(center);
		}
		offset = offset + 1;
	}

	center.angles = angle;
	center.state = "open";
	center.hp = hp;
	center.triggerradius = triggerradius;

	center thread door_player_think(level.active_doors);
	center thread door_think(open, close, time);

	wait 0.01;
}

createobject(model, origin, angle) {
	return spawnentity("script_model", model, origin, angle);
}

spawnentity(class, model, origin, angle) {
	entity = spawn(class, origin);
	entity.angles = angle;
	entity setmodel(model);
	return entity;
}

createmysterybox(origin, angle, price) {
	mysterybox = spawnentity("script_model", "t6_wpn_supply_drop_axis", origin, angle);
	spawnobjective(origin, "perk_hardline");
	mysterybox thread mysterybox_think();
	mysterybox thread mysterybox_player_think(price);
}

createflag(enter, exit, hiddenflags, bothways) {
	if (bothways) {
		if (!(hiddenflags)) {
			entryflag1 = spawnentity("script_model", "mp_flag_neutral", enter, (0, 0, 0));
			entryflag2 = spawnentity("script_model", "mp_flag_neutral", exit, (0, 0, 0));
			spawnobjective(enter, "waypoint_recon_artillery_strike");
			spawnobjective(exit, "waypoint_recon_artillery_strike");
			entryflag1.flagishidden = 0;
		}
		else {
			entryflag1 = spawn("script_model", enter);
			entryflag2 = spawn("script_model", exit);
			entryflag1.flagishidden = 1;
		}
		level thread teleport_flag_think(entryflag1, entryflag2, 1);
	}
	else {
		if (!(hiddenflags)) {
			entryflag = spawnentity("script_model", "mp_flag_green", enter, (0, 0, 0));
			exitflag = spawnentity("script_model", "mp_flag_red", exit, (0, 0, 0));
			spawnobjective(enter, "waypoint_recon_artillery_strike");
			entryflag.flagishidden = 0;
		}
		else {
			entryflag = spawn("script_model", enter);
			exitflag = spawn("script_model", exit);
			entryflag.flagishidden = 1;
		}
		level thread teleport_flag_think(entryflag, exitflag, 0);
	}
}


teleport_flag_think(flag1, flag2, bothways) {
	level endon("game_ended");

    for(;;) {
        foreach (player in level.players) {
            if (bothways) {
                if (distance(player.origin, flag1.origin) < 25) {
                    player setorigin(flag2.origin + vector_scale(anglestoforward((0, player.angles[1], 0)), 30));
                    if (flag1.flagishidden) {
                        player iprintln("^1You Found A Hidden Teleport Flag!");
                    }
                }

                if (distance(player.origin, flag2.origin) < 25) {
                    player setorigin(flag1.origin + vector_scale(anglestoforward((0, player.angles[1], 0)), 30));
                    if (flag1.flagishidden) {
                        player iprintln("^1You Found A Hidden Teleport Flag!");
                    }
                }
            } else {
                if (distance(player.origin, flag1.origin) < 25) {
                    player setorigin(flag2.origin + vector_scale(anglestoforward((0, player.angles[1], 0)), 30));
                    if (flag1.flagishidden) {
                        player iprintln("^1You Found A Hidden Teleport Flag!");
                    }
                }
            }
        }
        wait 0.01;
    }
}

door_player_think(localdoornumber) {
	level endon("game_ended");
	self endon("disconnect");

    for (;;) {
        foreach (player in level.players) {
            if (!isdefined(player.do_or_refresh_timer_active)) {
                player thread door_refreshtimer();
                player.already_damaged_door = 0;
            }

            if (!isdefined(player.door_string_created[localdoornumber])) {
                player.door_hint_string[localdoornumber] = player drawtext(player.current_door_hint, "objective", 1.5, 0, -50, (1, 1, 1), 0, (0, 0, 0), 0, 8, 0);
                player.door_hint_string[localdoornumber].alpha = 0;
                player.door_hint_string[localdoornumber].alignx = "center";
                player.door_hint_string[localdoornumber].aligny = "bottom";
                player.door_hint_string[localdoornumber].horzalign = "center";
                player.door_hint_string[localdoornumber].vertalign = "bottom";
                player.door_string_created[localdoornumber] = 1;
                player.near_door[localdoornumber] = 0;
            }

            if (!level.door_in_use[localdoornumber]) {
                player.door_hint_string[localdoornumber] settext(player.current_door_hint);
                player.door_hint_string[localdoornumber].alpha = 1;
            } else {
                player.door_hint_string[localdoornumber].alpha = 0;
            }
            
            if (distance(self.origin, player.origin) <= self.triggerradius) {
                if (player.team == "allies") {
                    if (self.state == "open") {
                        player.current_door_hint = "[{+melee}] To ^1Close ^7the door / [{+usereload}] Shows Current HP.";
                    }
                    if (self.state == "close") {
                        player.current_door_hint = "[{+melee}] To ^2Open ^7the door / [{+usereload}] Shows Current HP.";
                    }
                    if (self.state == "broken") {
                        player.current_door_hint = "^1Door is Broken";
                    }
                }

                if (player.team == "axis") {
                    if (self.state == "open") {
                        player.current_door_hint = "";
                    }
                    if (self.state == "close") {
                        player.current_door_hint = "[{+melee}] | [{+attack}] ^1To Damage ^7the door / [{+usereload}] Shows Current HP.";
                    }
                    if (self.state == "broken") {
                        player.current_door_hint = "^1Door is Broken";
                    }
                }

                if (player.status == "human" && isalive(player) && player meleebuttonpressed()) {
                    self notify("triggeruse", player);
                }
                
                if (!(player.already_damaged_door)player.already_damaged_door && player.status == "zombie" && isalive(player) && player attackbuttonpressed()) {
                    self notify("triggeruse", player);
                    player.already_damaged_door = 1;
                }

                if (player usebuttonpressed()) {
                    if (player.team == "allies") {
                        player iprintlnbold("Door HP: ^1" + self.hp);
                    }
                    
                    if (player.team == "axis") {
                        player iprintlnbold("Door HP: ^1" + self.hp);
                    }
                    
                    wait 0.5;
                }
                player.near_door[localdoornumber] = 1;
            } else {
                player.near_door[localdoornumber] = 0;
            }
        }
        wait 0.01;
	}
}

door_think(open, close, time) {
	level endon("game_ended");
	localdoornumber = level.active_doors;
	level.door_in_use[localdoornumber] = 0;
	level.active_doors++;

    // maybe belongs above localdoornumber variable declaration?
    for(;;) {
        if (self.hp > 0) {
            self waittill("triggeruse", player);
            if (player.team == "allies") {
                if (self.state == "open") {
                    self playsound("mpl_drone_door_open");
                    self moveto(close, time);
                    level.door_in_use[localdoornumber] = 1;
                    wait time;
                    level.door_in_use[localdoornumber] = 0;
                    self.state = "close";
                    continue;
                }

                if (self.state == "close") {
                    self playsound("mpl_drone_door_close");
                    self moveto(open, time);
                    level.door_in_use[localdoornumber] = 1;
                    wait time;
                    level.door_in_use[localdoornumber] = 0;
                    self.state = "open";
                    continue;
                }
            }
            if (player.team == "axis") {
                if (self.state == "close") {
                    self.hp++;
                    player iprintlnbold("Door Damaged! +^2$50");
                    player.money = player.money + 50;
                    continue;
                }
            }
            break;
        }

        if (self.state == "close") {
            self moveto(open, time);
        }

        self.state = "broken";
        wait 0.51;
    }
}

door_refreshtimer() {
	level endon("game_ended");
	self endon("disconnect");
	self.do_or_refresh_timer_active = 1;
	for(;;) {
        if (self.already_damaged_door) {
            wait 1;
            self.already_damaged_door = 0;
        }
        wait 0.01;
	}
}

createmysterybox(origin, angle, price) {
	mysterybox = spawnentity("script_model", "t6_wpn_supply_drop_axis", origin, angle);
	spawnobjective(origin, "perk_hardline");
	mysterybox thread mysterybox_think();
	mysterybox thread mysterybox_player_think(price);

}

mysterybox_think() {
	level endon("game_ended");
	for(;;) {
        self waittill("trigger_mystery_box", player, localmysteryboxnumber);
        currentweapon = spawn("script_model", self.origin);
        currentweapon.angles += (0, 90, 0);

        self thread mysterybox_weaponmover_think(currentweapon);
        self waittill("mystery_box_weapon_mover_finished");
        self thread mysterybox_timeout_think();

        player.mystery_box_weapon_ready[localmysteryboxnumber] = 1;
        self waittill_any("took_mystery_box_weapon", "mystery_box_weapon_timedout");
        wait 0.5;
        if (!self.timedout) {
            player replaceweaponworld(self.current_weapon_return, "All");
        }

        currentweapon delete();

        player.is_using_mystery_box = 0;
        player.mystery_box_weapon_ready[localmysteryboxnumber] = 0;
        self.mystery_box_in_use = 0;
        self.timedout = 0;
        wait 0.01;
	}
}

mysterybox_timeout_think()
{
	level endon("game_ended");
	self endon("took_mystery_box_weapon");
	wait 12;
	self.timedout = 1;
	self notify("mystery_box_weapon_timedout");

}

mysterybox_weaponmover_think(currentweapon)
{
	level endon("game_ended");
	self.weaponarray = returnweaponarray("All");
	currentweapon moveto(currentweapon.origin + (0, 0, 60), 10, 2, 2);
	for (i=0; i<30; i++) {
		temprandomweapon = self.weaponarray[randomint(self.weaponarray.size)];
		currentweapon setmodel(getweaponmodel(temprandomweapon));
		self.current_weapon_return = temprandomweapon;
		wait 0.3;
	}
	self notify("mystery_BoxWeaponMoverFinished")b
	_wait 3_m
	cu_frentweapon moveto(self.origin, 10, 2, 2);

}

mysterybox_player_think(price) {
	level endon("game_ended");
	localmysteryboxnumber = level.active_mystery_boxes;
	level.active_mystery_boxes++;
    for(;;) {
        foreach (player in level.players) {
            if (!isdefined(player.mystery_box_string_created[localmysteryboxnumber])) {
                player.current_mystery_box_hint += price;
                player.mystery_box_hint_string[localmysteryboxnumber] = player drawtext(player.current_mystery_box_hint, "objective", 1.5, 0, -50, (1, 1, 1), 0, (0, 0, 0), 0, 8, 0);
                player.mystery_box_hint_string[localmysteryboxnumber].alpha = 0;
                player.mystery_box_hint_string[localmysteryboxnumber].alignx = "center";
                player.mystery_box_hint_string[localmysteryboxnumber].aligny = "bottom";
                player.mystery_box_hint_string[localmysteryboxnumber].horzalign = "center";
                player.mystery_box_hint_string[localmysteryboxnumber].vertalign = "bottom";
                player.mystery_box_string_created[localmysteryboxnumber] = 1;
                player.near_mystery_box[localmysteryboxnumber] = 0;
                player.mystery_box_weapon_ready[localmysteryboxnumber] = 0;
                self.mystery_box_in_use = 0;
            }

            if (player.status != "zombie" && player.team != "axis") {
                if (!self.mystery_box_in_use) {
                    player.current_mystery_box_hint += price;
                    player.mystery_box_hint_string[localmysteryboxnumber] settext(player.current_mystery_box_hint);
                    player.mystery_box_hint_string[localmysteryboxnumber].alpha = 1;
                } else {
                    if (player.near_mystery_box[localmysteryboxnumber] && player.mystery_box_weapon_ready[localmysteryboxnumber] && player.is_using_mystery_box) {
                        player.mystery_box_hint_string[localmysteryboxnumber] settext(player.current_mystery_box_hint);
                        player.mystery_box_hint_string[localmysteryboxnumber].alpha = 1;
                    } else {
                        player.mystery_box_hint_string[localmysteryboxnumber].alpha = 0;
                    }
                }
                
                if (!player.is_using_mystery_box && !self.mystery_box_in_use) {
                    player.near_mystery_box[localmysteryboxnumber] = 1;
                    if (player usebuttonpressed()) {
                        wait 1;
                        if (player usebuttonpressed()) {
                            if (player.money >= price) {
                                wait 0.1;
                                player.current_mystery_box_hint = "";
                                player.is_using_mystery_box = 1;
                                player.money = player.money - price;
                                self.mystery_box_in_use = 1;
                                self notify("trigger_mystery_box", player, localmysteryboxnumber);
                            } else {
                                player scripts\mp\zombieland\utils:senderror("MoreMoney");
                                wait 0.2;
                            }
                        }
                    }
                }
                else {
                    if (player.mystery_box_weapon_ready[localmysteryboxnumber] && player.is_using_mystery_box && distance(self.origin, player.origin) <= 60) {
                        player.near_mystery_box[localmysteryboxnumber] = 1;
                        player.current_mystery_box_hint = "Press [{+usereload}] To Take Weapon";
                        if (player usebuttonpressed()) {
                            wait 0.1;
                            self notify("took_mystery_box_weapon");
                        }
                    } else {
                        player.near_mystery_box[localmysteryboxnumber] = 0;
                    }
                }
            } else {
                player.mystery_box_hint_string[localmysteryboxnumber].alpha = 0;
            }
        }
        wait 0.01;
    }
}