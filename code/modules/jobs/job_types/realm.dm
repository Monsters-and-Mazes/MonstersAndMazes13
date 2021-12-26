/datum/job/realm
	department_flag = REALM


/datum/job/realm/adventurer
	title = "Adventurer"
	flag = MM13ADVENTURER
	department_flag = REALM
	faction = "Town"
	total_positions = 10
	spawn_positions = 5
	description = "You are an adventurer, striking out to complete some long task for others or advance your own goals.  Perhaps this is where you will find what you are seeking?"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/realm/adventurer
	access = list(ACCESS_BAR, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_GATEWAY)

/datum/outfit/job/town/guard
	name = "Guard"
	jobtype = /datum/job/town/guard

//	ears = 			/obj/item/radio/headset/headset_den
	id =            /obj/item/card/id/dogtag/deputy
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/settler
//	r_pocket = /obj/item/flashlight/flare
//	r_hand = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	suit = 			/obj/item/clothing/suit/armor/f13/town/deputy
	head =	/obj/item/clothing/head/f13/town/deputy
//	belt = /obj/item/gun/ballistic/revolver/colt357
	shoes = 		/obj/item/clothing/shoes/f13/explorer
	uniform = /obj/item/clothing/under/f13/cowboyb
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/kitchen/knife/combat)

/datum/outfit/job/town/guard/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)




/datum/outfit/job/realm/adventurer
	name = "Adventurer"
	jobtype = /datum/job/realm/adventurer

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/realm/adventurer/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit, \
		/obj/item/clothing/suit/f13/veteran, \
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer, \
		/obj/item/clothing/suit/armor/f13/leatherarmor)
	l_pocket = 	/obj/item/reagent_containers/food/drinks/flask
	r_pocket = /obj/item/flashlight/flare
	belt = 	/obj/item/kitchen/knife/combat/survival
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/storage/bag/money/small/wastelander, \
		/obj/item/kitchen/knife)

/datum/outfit/loadout/salvager
	name = "Salvager"
//	suit = /obj/item/clothing/suit/apron
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	head = /obj/item/clothing/head/welding
	r_hand = /obj/item/weldingtool/largetank
//	backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/m1911/compact=1)

/datum/outfit/loadout/scavenger
	name = "Scavenger"
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/storage/backpack/duffelbag/scavengers
	l_hand = /obj/item/pickaxe/drill
	belt = /obj/item/storage/belt/utility
	backpack_contents = list(/obj/item/mining_scanner=1,
							/obj/item/metaldetector=1,
							/obj/item/shovel=1)

/datum/outfit/loadout/medic
	name = "Wasteland Doctor"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/bedsheet/medical
	backpack_contents =  list(/obj/item/reagent_containers/medspray/synthflesh=2,
							/obj/item/stack/medical/suture/emergency/fifteen=1,
							/obj/item/stack/medical/ointment/twelve=1,
							/obj/item/smelling_salts/crafted=1,
							/obj/item/healthanalyzer=1,
							/obj/item/stack/sheet/mineral/silver=1,
							/obj/item/screwdriver=1,
							/obj/item/wirecutters=1,
							/obj/item/hatchet=1
		)

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	suit = /obj/item/clothing/neck/cloak
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(/obj/item/storage/box/vendingmachine=1,
							/obj/item/stack/f13Cash/caps/threefivezero=1)

//end new

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	gloves = /obj/item/pda
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless

/datum/outfit/loadout/warrior
	name = "Warrior"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	l_hand = /obj/item/shield/legion/buckler
	backpack_contents = list(
		/obj/item/claymore/machete/spatha=1)

/datum/outfit/loadout/slave
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/caravaneer
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/orange
