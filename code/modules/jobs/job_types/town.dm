/*
Town access doors
Sheriff/Deputy, Gatehouse etc: 62 ACCESS_GATEWAY
General access: 25 ACCESS_BAR
Clinic surgery/storage: 68 ACCESS_CLONING
Shopkeeper: 34 ACCESS_CARGO_BOT
Banker : 52 ACCESS_MINT_VAULT
Barkeep : 28 ACCESS_KITCHEN - you jebronis made default bar for no reason bruh
Prospector : 48 ACCESS_MINING
Detective : 4 ACCESS_FORENSICS_LOCKERS
here's a tip, go search DEFINES/access.dm
*/

/*
Mayor
*/

/datum/job/town/castellan
	title = "Castellan"
	flag = MM13CASTELLAN
	department_flag = TOWN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Emissaries of the kingdom."
	description = "You are the leader of the Town and the people look to you for leadership. Pass laws to protect your Citizens, distribute the Town's funds and make deals with the powers present within the Region to better the people - or exploit them for your own personal gain."
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/town/castellan
	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)

/datum/outfit/job/town/castellan/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/town/castellan
	name = "Castellan"
	jobtype = /datum/job/town/castellan

	ears = null
	id = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
//	l_pocket =
	r_pocket = /obj/item/flashlight/lantern
//	belt =
	shoes = /obj/item/clothing/shoes/mm13/boots
	uniform = /obj/item/clothing/under/mm13/castellan
//	suit =
	head = /obj/item/clothing/head/crown
	backpack_contents = list(
		/obj/item/clothing/head/crown/fancy = 1, \
		/obj/item/clothing/under/f13/priestess = 1)

/*--------------------------------------------------------------*/

/datum/job/town/guardcaptain
	title = "Guard Captain"
	flag = MM13GUARDCAPTAIN
	department_flag = TOWN
	head_announce = list("Security")
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Castellan"
	description = "As the chief law enforcer of the Town, your job is to keep the peace, settle local disputes, guide the guards, and keep your townsfolk safe from external threats and alive."
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/town/guardcaptain

	access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)

/datum/outfit/job/town/guardcaptain
	name = "Guard Captain"
	jobtype = /datum/job/town/guardcaptain

	id = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

	ears = null
	uniform = /obj/item/clothing/under/mm13/guard
//	neck =
	shoes = /obj/item/clothing/shoes/mm13/boots
	suit = /obj/item/clothing/suit/mm13/caparmor
	head = /obj/item/clothing/head/mm13/caphelm
//	glasses =
//	l_hand =
//	l_pocket =
	backpack_contents = list(
		/obj/item/restraints/handcuffs/sinew=1, \
		/obj/item/melee/classic_baton=1, \
		/obj/item/kitchen/knife/combat)
	r_pocket = /obj/item/flashlight/lantern
	belt = /obj/item/storage/belt/waistsheath

/datum/outfit/job/town/guardcaptain/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)

/*--------------------------------------------------------------*/

/datum/job/town/guard
	title = "Guard"
	flag = MM13GUARD
	department_flag = TOWN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Guard Captain and the Castellan"
	description = "Working under the Guard Captain your job is to keep the town safe and follow orders, sometimes in that order."
	selection_color = "#dcba97"
	exp_requirements = 12
	exp_type = EXP_TYPE_DEN

	outfit = /datum/outfit/job/town/guard
	access = list(ACCESS_BAR, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_GATEWAY)

/datum/outfit/job/town/guard
	name = "Guard"
	jobtype = /datum/job/town/guard

	id = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	ears = null
	uniform = /obj/item/clothing/under/mm13/guard
//	neck =
	shoes = /obj/item/clothing/shoes/mm13/boots
	suit = /obj/item/clothing/suit/mm13/gambeson
	head = /obj/item/clothing/head/mm13/kettle
//	glasses =
//	l_hand =
//	l_pocket =
	backpack_contents = list(
		/obj/item/restraints/handcuffs/sinew=1, \
		/obj/item/kitchen/knife/combat)
	r_pocket = /obj/item/flashlight/lantern
	belt = /obj/item/storage/belt/waistsheath

/datum/outfit/job/town/guard/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/*--------------------------------------------------------------*/

/datum/job/town/farmer
	title = "Farmer"
	flag = MM13FARMER
	department_flag = TOWN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Castellan"
	description = "As a Farmer, enshrouded in safety by the walls of the Town, you enact out your skills of cultivation and husbandry, making you a vital backbone business of the town in growing medicines, crops and livestock. You will be depended on for your crops and livestock, for food, medicine, and trade.  Do your best not to fail the town."
	selection_color = "#dcba97"
	exp_requirements = 2
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/farmer

	access = list(ACCESS_BAR,  ACCESS_KITCHEN)
	minimal_access = list(ACCESS_BAR,  ACCESS_KITCHEN)

/datum/outfit/job/town/farmer
	name = "Farmer"
	jobtype = /datum/job/town/farmer

	id = null
	ears = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
//	l_pocket =
	r_pocket = /obj/item/flashlight/lantern
	belt = /obj/item/storage/bag/plants
	backpack_contents = list(
		/obj/item/cultivator=1, \
		/obj/item/hatchet=1,
		/obj/item/shovel/spade=1)
	shoes = /obj/item/clothing/shoes/mm13/sandals

/datum/outfit/job/town/farmer/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/rustic,)

/*--------------------------------------------------------------*/

/datum/job/town/miner
	title = "Miner"
	flag = MM13MINER
	department_flag = TOWN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Castellan"
	description = "You are a miner for the town.  Your duty is to bring back useful materials from mining areas and to prepare any found resources for use by the town."
	selection_color = "#dcba97"

	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/miner

	access = list(ACCESS_BAR, ACCESS_MINING)
	minimal_access = list(ACCESS_BAR, ACCESS_MINING)

/datum/outfit/job/town/miner
	name = "Miner"
	jobtype = /datum/job/town/miner

	id = null
	ears = null
	suit = /obj/item/clothing/suit/overalls
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/lantern
	r_hand = /obj/item/pickaxe
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/mm13/boots
	backpack_contents = list(
		/obj/item/mining_scanner/prospector=1, \
		/obj/item/shovel=1, \
		/obj/item/kitchen/knife/combat)

/datum/outfit/job/town/miner/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/roving, \
		/obj/item/clothing/under/f13/cowboyt)

/datum/outfit/job/town/miner/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/*--------------------------------------------------------------*/

/datum/job/town/apothecary
	title = "Apothecary"
	flag = MM13APOTHECARY
	department_flag = TOWN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Castellan"
	description = "Healing and medicine are your primary focus, undertaking any task that can make the wounded or sick whole again.  You should make potions and brews to help those with ailments, and be ready to bind wounds and even operate on those in need."
	selection_color = "#dcba97"

	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/apothecary
	access = list(ACCESS_BAR, ACCESS_CLONING)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING)

/datum/outfit/job/town/apothecary
	name = "Apothecary"
	jobtype = /datum/job/town/apothecary
	chemwhiz = TRUE
	uniform = /obj/item/clothing/under/mm13/apothecary
	ears = null
//	neck =
//	suit =
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	shoes = /obj/item/clothing/shoes/mm13/clogs
	id = null
//	l_pocket =
	r_pocket = /obj/item/flashlight/lantern
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healpoultice = 4 )
/datum/outfit/job/town/apothecary/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
/*--------------------------------------------------------------*/

/datum/job/town/cleric
	title = "Cleric"
	flag = MM13CLERIC
	department_flag = TOWN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Castellan, your patron god."
	description = "You are a beacon of faith. Guide the Town and any others who wish to be led on spiritual matters, and try to build your flock. Perhaps there are interesting religious artifacts or some architecture that would be worth studying or protecting?"
	selection_color = "#dcba97"

	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/cleric

	loadout_options = list(
	/datum/outfit/loadout/standardpreacher,
	/datum/outfit/loadout/nightcleric )
	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)


/datum/outfit/loadout/nightcleric
	name = "Moon watcher"
	l_hand = /obj/item/reagent_containers/food/snacks/grown/moonflower
	backpack_contents = list(
		/obj/item/autosurgeon=1,
		/obj/item/organ/eyes/night_vision=1
		)

/datum/outfit/loadout/healcleric
	name = "Divine resurrection"
	l_hand = /obj/item/gun/magic/wand/resurrection
	backpack_contents = list(
		/obj/item/gun/magic/wand/book/healing,
		)

/datum/outfit/loadout/standardpreacher
	name = "Naturalist"
//	l_hand =
	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/gaia = 1
		)

/datum/job/town/cleric/after_spawn(mob/living/H, mob/M)
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(GLOB.religion)
		B.deity_name = GLOB.deity
		B.name = GLOB.bible_name
		B.icon_state = GLOB.bible_icon_state
		B.item_state = GLOB.bible_item_state
		to_chat(H, "There is already an established religion for this realm. You are an acolyte of [GLOB.deity]. Defer to the Cleric.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = GLOB.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = DEFAULT_RELIGION
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = DEFAULT_DEITY
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity


	switch(lowertext(new_religion))
		if("penumbra") // DEFAULT_RELIGION
			B.name = pick("The Tome of Entzo","The Book of Zot")
			B.deity_name = pick("Entzo", "Leyala")
		if("moon")
			B.name = "The Crescent Tome"
			B.deity_name = "Leyala"
		if("lost")
			B.name = "Tales of the Wandering God"
			B.deity_name = "Wandering God"
		if("sun")
			B.name = pick("The Solar Reliquary")
			B.deity_name = "Raum"
		if("chaos")
			B.name = "The Book of Lorgar"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("weeaboo","kawaii")
			B.name = pick("Fanfiction Compendium","Japanese for Dummies","The Manganomicon","Establishing Your O.T.P")
		else
			B.name = "The Holy Book of [new_religion]"

	GLOB.religion = new_religion
	GLOB.bible_name = B.name
	GLOB.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)


/datum/outfit/job/town/cleric
	name = "Cleric"
	jobtype = /datum/job/town/cleric
	ears = null
	belt = null
	id = null
	uniform = /obj/item/clothing/under/rank/chaplain
	suit = /obj/item/clothing/suit/mm13/cleric
	backpack = /obj/item/storage/backpack/cultpack
	satchel = /obj/item/storage/backpack/cultpack
//	gloves =
	shoes = /obj/item/clothing/shoes/mm13/sandals
	backpack = 		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
//	r_hand = 		/obj/item/gun/ballistic/revolver/m29
	r_pocket = /obj/item/flashlight/lantern
	backpack_contents = list(
		/obj/item/storage/fancy/candle_box, \
		/obj/item/reagent_containers/pill/patch/healpoultice =2)

/*--------------------------------------------------------------*/

/datum/job/town/innkeeper
	title = "Innkeeper"
	flag = MM13INNKEEPER
	department_flag = TOWN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Castellan"
	description = "As the Innkeeper, you have an establishment to run. You should take pride in your inn and tavern as a beacon in the night for weary adventurers, and a lively place for entertainment, food, drink, and rumor during the day."
	selection_color = "#dcba97"
	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/innkeeper

//	loadout_options = list()

	access = list(ACCESS_BAR, ACCESS_KITCHEN)
	minimal_access = list(ACCESS_BAR, ACCESS_KITCHEN)

/datum/outfit/job/town/innkeeper
	name = "Innkeeper"
	jobtype = /datum/job/town/innkeeper
	uniform = /obj/item/clothing/under/mm13/fancykeeper
	id = null
//	l_pocket =
	r_pocket = /obj/item/flashlight/lantern
	ears = null
//	belt = /obj/item/gun/ballistic/revolver/caravan_shotgun
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
	/obj/item/clothing/under/mm13/innkeepess = 1)

///datum/outfit/loadout/rugged
	name = "Rugged"
	uniform = /obj/item/clothing/under/f13/cowboyb
	suit = /obj/item/clothing/suit/f13/cowboybvest
	gloves = /obj/item/clothing/gloves/color/brown
	shoes = /obj/item/clothing/shoes/mm13/clogs

///datum/outfit/loadout/frontier
	name = "Frontier"
	head = /obj/item/clothing/head/bowler
	mask = /obj/item/clothing/mask/fakemoustache
	uniform = /obj/item/clothing/under/f13/westender
	suit = /obj/item/clothing/suit/f13/westender
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/mm13/clogs

///datum/outfit/loadout/richmantender
	name = "Fancy"
	head = /obj/item/clothing/head/fedora
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/bartender
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/mm13/clogs
	neck = /obj/item/clothing/neck/tie/black

///datum/outfit/loadout/diner
	name = "Diner"
	head = /obj/item/clothing/head/soft/mime
	glasses = /obj/item/clothing/glasses/orange
//	suit = /obj/item/clothing/suit/apron/chef
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/mm13/clogs
/*--------------------------------------------------------------*/
/datum/job/town/chef
	title = "Chef"
	flag = MM13CHEF
	department_flag = TOWN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the castellan, the innkeeper"
	description = "You are the chef.  Your duty is to keep food stocked and at the ready, and to prepare it for patrons of the bar.  You may also be called upon to prepare meals outside of the inn by the castellan or to support larger gatherings."
	selection_color = "#dcba97"
	exp_requirements = 2
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/chef

	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)


/datum/outfit/job/town/chef
	name = "Chef"
	head = /obj/item/clothing/head/helmet/f13/raider
	uniform = /obj/item/clothing/suit/toggle/chef
//	suit = /obj/item/clothing/suit/apron/chef
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1,
		/obj/item/storage/box/dice=1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis=1)
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/flask = 1)



/datum/outfit/loadout/provisioner
	name = "Provisioner"
	neck = /obj/item/clothing/neck/scarf/cptpatriot
	suit = /obj/item/clothing/suit/jacket/miljacket
	uniform = /obj/item/clothing/under/f13/merca
	gloves = /obj/item/clothing/gloves/f13/leather
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/flask = 1)

/datum/outfit/loadout/bum
	name = "Bum"
	mask = /obj/item/clothing/mask/facewrap
//	suit = /obj/item/clothing/suit/poncho
	uniform = /obj/item/clothing/under/f13/rag
	gloves = /obj/item/clothing/gloves/f13/handwraps
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack_contents = list(/obj/item/storage/bag/trash = 1, /obj/item/reagent_containers/food/drinks/bottle/whiskey = 1)

/datum/outfit/loadout/properlady
	name = "Proper Lady"
	head = /obj/item/clothing/head/beret/black
	suit = /obj/item/clothing/under/sailordress
	gloves = /obj/item/clothing/gloves/f13/lace
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/bottle/wine = 1)

/datum/outfit/loadout/propergent
	name = "Respectable Gent"
	head = /obj/item/clothing/head/f13/beaver
	suit = /obj/item/clothing/suit/f13/cowboybvest
	uniform = /obj/item/clothing/under/f13/bartenderalt
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack_contents = list(/obj/item/storage/box/matches = 1, /obj/item/storage/fancy/cigarettes/cigars = 1)

/datum/outfit/loadout/hombre
	name = "Hombre"
	head = /obj/item/clothing/head/f13/cowboy
	suit = /obj/item/clothing/suit/f13/duster
	uniform = /obj/item/clothing/under/f13/cowboyb
	gloves = /obj/item/clothing/gloves/f13/leather
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack_contents = list()

/datum/outfit/job/town/settler
	name = "Citizen"
	jobtype = /datum/job/town/peasant
	ears = /obj/item/radio/headset/headset_den
	belt = null
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_den
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/mm13/clogs
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/flare
	r_hand = /obj/item/book/granter/trait/selection
	backpack_contents = list(
			/obj/item/storage/bag/money/small/settler = 1, \
			/obj/item/kitchen/knife/combat = 1, \
			/obj/item/gun/ballistic/automatic/pistol/n99 = 1, \
			/obj/item/ammo_box/magazine/m10mm_adv/simple=2)
/*----------------------------------------------------------------
--							Peasant							--
----------------------------------------------------------------*/
/datum/job/town/peasant
	title = "Peasant"
	flag = MM13PEASANT
	department_flag = TOWN
	faction = "Town"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Castellan"
	enforces = "The well-being of the town."
	forbids = "Doing harm to townspeople or the town itself."
	description = "You are a peasant of the town, and should help out with all the tasks around town and try to make sure that the town has a good name in the realm."
	selection_color = "#006666"

	outfit = /datum/outfit/job/town/peasant

/datum/outfit/job/town/peasant
	name = "Peasant"
	jobtype = /datum/job/town/peasant
//	head =
	uniform = 	/obj/item/clothing/under/mm13/peasant
	gloves = 	/obj/item/clothing/gloves/f13/handwraps
	shoes = 	/obj/item/clothing/shoes/f13/rag
//	suit = 		/obj/item/clothing/suit/armor/f13/tribe_armor
	id = 		/obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/clothing/under/mm13/peasantdress = 1)


/datum/job/town/hunter
	title = "Hunter"
	flag = MM13HUNTER
	department_flag = TOWN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Castellan"
	enforces = "The well-being of the town."
	forbids = "Doing harm to townspeople or the town itself."
	description = "You are a hunter for the town.  Your duties are to go into the wilderness and track and hunt game to provide food or livestock for the townspeople."
	selection_color = "#006666"

	outfit = /datum/outfit/job/town/hunter

	loadout_options = list(
		/datum/outfit/loadout/ranged, //Bow and quiver, Bone knife, Healing powder
		/datum/outfit/loadout/melee, //Deathclaw Bone Spear, Bone knife, Healing powder
	)

/datum/outfit/job/town/hunter/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)

/datum/outfit/job/town/hunter
	name = "Hunter"
	jobtype = /datum/job/town/hunter
	head = 		/obj/item/clothing/head/helmet/f13/wayfarer/hunter
	uniform = 	/obj/item/clothing/under/f13/wayfarer/hunter
	gloves = 	/obj/item/clothing/gloves/f13/handwraps
	shoes = 	/obj/item/clothing/shoes/f13/rag
	suit = 		/obj/item/clothing/suit/armor/f13/tribe_armor
	id = 		/obj/item/card/id/tribetattoo
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=2,
		/obj/item/stack/medical/gauze=1,
		/obj/item/flashlight/flare/torch=1)

/datum/outfit/loadout/ranged
	name = "Ranged"
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/tribalbow=1,
		/obj/item/storage/belt/tribe_quiver=1,
		/obj/item/kitchen/knife/combat/bone=1,
		/obj/item/reagent_containers/pill/patch/healingpowder=1
	)

/datum/outfit/loadout/melee
	name = "Melee"
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/bone=1,
		/obj/item/reagent_containers/pill/patch/healingpowder=1
	)


/*--------------------------------------------------------------*/
/datum/job/town/herbalist
	title = "Herbalist"
	flag = MM13HERBALIST
	department_flag = TOWN
	faction = "Town"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Castellan"
	description = "As the herbalist, it is important to grow, harvest, and be knowledgeable about medicinal and other useful plants for the town's benefit. You are a scholar and a worker who should be able to aid the apothecary and the farmer."
	selection_color = "#dcba97"

	exp_requirements = 12
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/town/herbalist
	access = list(ACCESS_BAR, ACCESS_CLONING)
	minimal_access = list(ACCESS_BAR, ACCESS_CLONING)

/datum/outfit/job/town/herbalist
	name = "Herbalist"
	jobtype = /datum/job/town/herbalist
	chemwhiz = TRUE
//	uniform = /obj/item/clothing/under/f13/science
	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel/
	shoes = /obj/item/clothing/shoes/mm13/clogs
	id = /obj/item/card/id/dendoctor
//	l_pocket = NULL
	r_pocket = /obj/item/flashlight/lantern
	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/grown/ambrosia/deus,\
		/obj/item/reagent_containers/food/snacks/grown/broc,\
		/obj/item/reagent_containers/food/snacks/grown/xander, \
		/obj/item/reagent_containers/food/snacks/grown/cannabis, \
		/obj/item/reagent_containers/food/snacks/grown/coyotetobacco, \
		/obj/item/reagent_containers/food/snacks/grown/datura, \
		/obj/item/reagent_containers/food/snacks/grown/feracactus, \
		/obj/item/reagent_containers/food/snacks/grown/fungus, \
		/obj/item/reagent_containers/food/snacks/grown/holymelon, \
		/obj/item/reagent_containers/food/snacks/grown/peach, \
		/obj/item/storage/bag/plants
		)
/datum/outfit/job/town/herbalist/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)


/*
/datum/job/den/f13banker
	title = "Banker"
	flag = F13BANKER
	department_flag = DEN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "law and order"
	description = "No matter where society lurks, profit and fortune are there to be made! It is up to you to distribute caps and earn interest while safekeeping items of value for the wastelands denizens! Ensure you make a profit and make your money back no matter the cost. You are to work alongside the Town, and should not be attempting to harm the residents of Oasis."
	selection_color = "#dcba97"
	enforces = "You are in a Job meant for encouraging roleplay with others, do not abandon your post or hoard money unless absolutely necessary. Do not use the caps provided for yourself."

	outfit = /datum/outfit/job/den/f13banker

	loadout_options = list(
	/datum/outfit/loadout/classy,
	/datum/outfit/loadout/loanshark,
	/datum/outfit/loadout/investor,
	)

	access = list(ACCESS_BAR, ACCESS_MINT_VAULT)
	minimal_access = list(ACCESS_BAR, ACCESS_MINT_VAULT)

/datum/outfit/job/den/f13banker
	name = "Banker"
	jobtype = /datum/job/den/f13banker

	uniform = /obj/item/clothing/under/lawyer/blacksuit
	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/headset_den
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/bag/money/small/banker)

/datum/outfit/loadout/classy
	name = "Classy"
	head = /obj/item/clothing/head/collectable/tophat
	glasses = /obj/item/clothing/glasses/monocle
	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	suit = /obj/item/clothing/suit/f13/banker
	gloves = /obj/item/clothing/gloves/color/white/redcoat
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
	/obj/item/cane=1,
	/obj/item/gun/ballistic/revolver/zipgun=1,
	/obj/item/storage/fancy/cigarettes/cigpack_bigboss=1,
	/obj/item/reagent_containers/food/drinks/bottle/whiskey=1,
	/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass=1
	)

/datum/outfit/loadout/loanshark
	name = "Loanshark"
	glasses = /obj/item/clothing/glasses/orange
	mask = /obj/item/clothing/mask/cigarette/cigar
	suit = /obj/item/clothing/suit/f13/vest
	uniform = /obj/item/clothing/under/f13/sleazeball
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(
	/obj/item/reagent_containers/food/drinks/bottle/whiskey=1,
	/obj/item/storage/box/matches=1,
	/obj/item/gun/ballistic/automatic/mini_uzi=1
	)

/datum/outfit/loadout/investor
	name = "Investor"
	glasses = /obj/item/clothing/glasses/sunglasses
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	uniform = /obj/item/clothing/under/f13/bennys
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/colt357=1,
		/obj/item/storage/fancy/cigarettes/cigpack_bigboss=1,
		/obj/item/storage/box/matches=1
		)
*/

/*--------------------------------------------------------------*/

/datum/job/den/f13shopkeeper
	title = "Shopkeeper"
	flag = F13SHOPKEEPER
	department_flag = DEN
	faction = "Town"
	total_positions = 2
	spawn_positions = 2
	supervisors = "law and order"
	description = "The capitalist economy of pre-war america survived alongside its people. Now it's your job to continue its survival, so make some caps!"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13shopkeeper
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT)

/datum/outfit/job/den/f13shopkeeper
	name = "Shopkeeper"
	jobtype = /datum/job/den/f13shopkeeper

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/mm13/smith
	ears = /obj/item/radio/headset/headset_den
	neck = /obj/item/clothing/neck/apron/labor/forge
	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
//	gloves = /obj/item/clothing/gloves/mm13/guardgloves
//	l_pocket =
	r_pocket = /obj/item/flashlight/lantern
	shoes = /obj/item/clothing/shoes/mm13/darkboots
	suit = null
	backpack_contents = list()

/datum/outfit/job/den/f13shopkeeper/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/den/f13shopkeeper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/automatic_sear)
