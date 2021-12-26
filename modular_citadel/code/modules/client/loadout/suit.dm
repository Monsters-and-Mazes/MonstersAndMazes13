/datum/gear/suit
	category = LOADOUT_CATEGORY_SUIT
	subcategory = LOADOUT_SUBCATEGORY_SUIT_GENERAL
	slot = SLOT_WEAR_SUIT

/datum/gear/suit/redhood
	name = "Red cloak"
	path = /obj/item/clothing/suit/hooded/cloak/david
	cost = 3

/datum/gear/suit/jacketbomber
	name = "Bomber jacket"
	path = /obj/item/clothing/suit/jacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/oldjacketbomber
	name = "Old bomber jacket"
	path = /obj/item/clothing/suit/bomber
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketflannelblack // all of these are reskins of bomber jackets but with the vibe to make you look like a true lumberjack
	name = "Black flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketflannelred
	name = "Red flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketflannelaqua
	name = "Aqua flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/aqua
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketflannelbrown
	name = "Brown flannel jacket"
	path = /obj/item/clothing/suit/jacket/flannel/brown
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketleather
	name = "Leather jacket"
	path = /obj/item/clothing/suit/jacket/leather
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/overcoatleather
	name = "Leather overcoat"
	path = /obj/item/clothing/suit/jacket/leather/overcoat
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketpuffer
	name = "Puffer jacket"
	path = /obj/item/clothing/suit/jacket/puffer
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/vestpuffer
	name = "Puffer vest"
	path = /obj/item/clothing/suit/jacket/puffer/vest
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketlettermanbrown
	name = "Brown letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketlettermanred
	name = "Red letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman_red
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/jacketlettermanNT
	name = "Nanotrasen letterman jacket"
	path = /obj/item/clothing/suit/jacket/letterman_nanotrasen
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/coat
	name = "Winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat
	subcategory = LOADOUT_SUBCATEGORY_SUIT_COATS

/datum/gear/suit/coat/aformal
	name = "Assistant's formal winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/aformal

/datum/gear/suit/coat/runed
	name = "Runed winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/narsie/fake

/datum/gear/suit/coat/brass
	name = "Brass winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/ratvar/fake

/datum/gear/suit/coat/polycoat
	name = "Polychromic winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/polychromic
	cost = 4 //too many people with neon green coats is hard on the eyes

/datum/gear/suit/coat/med
	name = "Medical winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/medical
	restricted_roles = list("Chief Medical Officer", "Medical Doctor") // Reserve it to Medical Doctors and their boss, the Chief Medical Officer

/datum/gear/suit/coat/paramedic
	name = "Paramedic winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/paramedic
	restricted_roles = list("Chief Medical Officer", "Paramedic") // Reserve it to Paramedics and their boss, the Chief Medical Officer

/datum/gear/suit/coat/robotics
	name = "Robotics winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/robotics
	restricted_roles = list("Research Director", "Roboticist")

/datum/gear/suit/coat/sci
	name = "Science winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/science
	restricted_roles = list("Research Director", "Scientist", "Roboticist") // Reserve it to the Science Departement

/datum/gear/suit/coat/eng
	name = "Engineering winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/engineering
	restricted_roles = list("Chief Engineer", "Station Engineer") // Reserve it to Station Engineers and their boss, the Chief Engineer

/datum/gear/suit/coat/eng/atmos
	name = "Atmospherics winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/engineering/atmos
	restricted_roles = list("Chief Engineer", "Atmospheric Technician") // Reserve it to Atmos Techs and their boss, the Chief Engineer

/datum/gear/suit/coat/hydro
	name = "Hydroponics winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/hydro
	restricted_roles = list("Head of Personnel", "Botanist") // Reserve it to Botanists and their boss, the Head of Personnel

/datum/gear/suit/coat/bar
	name = "Bar winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/bar
	restricted_roles = list("Bartender") // Reserve it to Bartenders and not the Head of Personnel because he doesnt deserve to look as fancy as them

/datum/gear/suit/coat/cargo
	name = "Cargo winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/cargo
	restricted_roles = list("Quartermaster", "Cargo Technician") // Reserve it to Cargo Techs and their boss, the Quartermaster

/datum/gear/suit/coat/miner
	name = "Mining winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat/miner
	restricted_roles = list("Quartermaster", "Shaft Miner") // Reserve it to Miners and their boss, the Quartermaster

/datum/gear/suit/militaryjacket
	name = "Military Jacket"
	path = /obj/item/clothing/suit/jacket/miljacket
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS

/datum/gear/suit/ianshirt
	name = "Ian Shirt"
	path = /obj/item/clothing/suit/ianshirt

/datum/gear/suit/flakjack
	name = "Flak Jacket"
	path = /obj/item/clothing/suit/flakjack
	subcategory = LOADOUT_SUBCATEGORY_SUIT_JACKETS
	cost = 2

/datum/gear/suit/samurai
	name = "Samurai outfit"
	path = /obj/item/clothing/suit/samurai
// BEGIN_INTERNALS
// END_INTERNALS
// BEGIN_FILE_DIR
#define FILE_DIR .
// END_FILE_DIR
// BEGIN_PREFERENCES
// END_PREFERENCES
// BEGIN_INCLUDE
// END_INCLUDE
