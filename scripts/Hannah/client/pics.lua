vNames = {
    "Dongtai Agriboss 35",
    "Mancini Cavallo 1001",
    "Rowlinson K22",
    "Kenwall Heavy Rescue",
    "Pattani Gluay",
    "Orque Grandois 21TT",
    "Poloma Renegade",
    "Columbi Excelsior",
    "Tuk-Tuk Rickshaw",
    "Saas PP12 Hogg",
    "Shimuzu Tracline",
    "Vanderbildt LeisureLiner",
    "Stinger Dunebug 84",
    "Mullen Skeeter Eagle",
    "Sakura Aquila Space",
    "YP-107 Phoenix",
    "",
    "SV-1003 Raider",
    "Orque Living 42T",
    "Monster Truck",
    "Hamaya Cougar 600",
    "Tuk-Tuk Laa",
    "Chevalier Liner SB",
    "F-33 DragonFly Jet Fighter",
    "Trat Tang-mo",
    "Chevalier Traveller SD",
    "SnakeHead T20",
    "TextE Charteu 52CT",
    "Sakura Aquila City",
    "Si-47 Leopard",
    "URGA-9380",
    "Mosca 2000",
    "Chevalier Piazza IX",
    "G9 Eclipse",
    "Garret Traver-Z",
    "Shimuzu Tracline",
    "Sivirkin 15 Havoc",
    "Kuang Sunrise",
    "Aeroliner 474",
    "Fengding EC14FD2",
    "Niseco Coastal D22",
    "Niseco Tusker P246",
    "Hamaya GSY650",
    "Hamaya Oldman",
    "Orque Bon Ton 71FT",
    "MV V880",
    "Schulz Virginia",
    "Maddox FVA 45",
    "Niseco Tusker D18",
    "Zhejiang 6903",
    "Cassius 192",
    "Saas PP12 Hogg",
    "Agency Hovercraft",
    "Boyd Fireflame 544",
    "Sakura Aquila Metro ST",
    "GV-104 Razorback",
    "Sivirkin 15 Havoc",
    "Chevalier Classic",
    "Peek Airhawk 225",
    "Vaultier Patrolman",
    "Makoto MZ 260X",
    "UH-10 Chippewa",
    "Chevalier Traveller SC",
    "AH-33 Topachula",
    "H-62 Quapaw",
    "Dinggong 134D",
    "Mullen Skeeter Hawk",
    "Chevalier Traveller SX",
    "Winstons Amen 69",
    "Sakura Aquila Forte",
    "Niseco Tusker G216",
    "Chepachet PVD",
    "Chevalier Express HT",
    "Hamaya 1300 Elite Cruiser",
    "Tuk Tuk Boom Boom",
    "SAAS PP30 Ox",
    "Hedge Wildchild",
    "Civadier 999",
    "Pocumtuck Nomad",
    "Frisco Catshark S-38",
    "Pell Silverbolt 6",
    "Chevalier Ice Breaker",
    "Mosca 125 Performance",
    "Marten Storm III",
    "Bering I-86DP ",
    "Dalton N90",
    "Wilforce Trekstar",
    "MTA Powerrun 77",
    "Hamaya Y250S",
    "Makoto MZ 250",
    "Titus ZJ"
}
--
pics = {}
pics["Grapplehook"] = Grapple
pics["Parachute"] = Parachute
pics["Scrap Metal"] = mt1
pics["Steel"] = mt3
pics["Iron"] = mt2
pics["Silver"] = mt4
pics["Platinum"] = mt5
pics["Garbage Bin"] = storage_garbage
pics["(F) Hellfire Missile Turret"] = hellfireturret
pics["(F) Missile Turret"] = missileturret
pics["(F) Flamethrowing Turret"] = flameturret
pics["Crafting Table"] = craftingtable
pics["Faction Storage"] = FS
pics["Defense Raider"] = defenseraider
pics["Ammo"] = Ammo
pics["Car Trap (Bomb)"] = CarTrap1
pics["Car Trap (Electric)"] = CarTrap2
pics["Radar"] = RadarIMG
pics["Vehicle Shield"] = VSimg
pics["Plastic Surgery Kit"] = PlasticSurgeryKit
pics["Bandage"] = BandageI
pics["Med-Kit"] = MedKitI
pics["Full Restore"] = FullRestoreI
for name, cat in pairs(reference) do
	if string.find(name, "Property Claim") then
		pics[name] = PropertyClaim
	end
	if cat == "Utility" then
		for i=1, #vNames do
			if string.find(vNames[i], name) then
				pics[name] = AllVehicles
			end
		end
	elseif cat == "Food" then
		pics[name] = AllFood
	elseif cat == "Weaponry" then
		if not pics[name] then
			pics[name] = AllWeaponry
		end
	elseif cat == "Raw" then
		if name:find("wood") then
			pics[name] = AllWood
		end
		if not pics[name] then
			pics[name] = AllRaw
		end
	elseif cat == "Build" then
		if not pics[name] then
			pics[name] = AllBuild
		end
	end
end
--
for name, ref in pairs(reference) do
	local haspic = false
	for name2, pic in pairs(pics) do
		if name == name2 then
			haspic = true
		end
	end
	if not haspic then
		pics[name] = Default_Item
	end
end