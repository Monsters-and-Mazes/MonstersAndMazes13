
GLOBAL_LIST_INIT(engineering_positions, list(
	"Chief Engineer",
	"Station Engineer",
	"Atmospheric Technician"))


GLOBAL_LIST_INIT(medical_positions, list(
	"Chief Medical Officer",
	"Medical Doctor",
	"Geneticist",
	"Virologist",
	"Paramedic",
	"Chemist"))


GLOBAL_LIST_INIT(science_positions, list(
	"Research Director",
	"Scientist",
	"Roboticist"))

GLOBAL_LIST_INIT(supply_positions, list(
	"Quartermaster",
	"Cargo Technician",
	"Shaft Miner"))

GLOBAL_LIST_INIT(civilian_positions, list(
	"Head of Personnel",
	"Bartender",
	"Botanist",
	"Cook",
	"Janitor",
	"Curator",
	"Lawyer",
	"Chaplain",
	"Clown",
	"Mime",
	"Assistant"))


GLOBAL_LIST_INIT(nonhuman_positions, list(
	"AI",
	"Cyborg",
	ROLE_PAI))

GLOBAL_LIST_INIT(town_positions, list(
	"Castellan",
	"Guard",
	"Blacksmith",
	"Alchemist",
	"Mason",
	"Apothecary",
	"Cleric",
	"Miner",
	"Farmer",
	"Laborer",
	"Chef",
	"Hunter",
	"Herbalist",
	"Peasant"))

GLOBAL_LIST_INIT(town_whitelist_positions, list(
))



GLOBAL_LIST_INIT(command_positions, list(
	"Elder",
	"Head Scribe",
	"Head Paladin",
	"Head Knight",

	"Legion Centurion",
	"Legion Venator",

	"Overseer",
	"Chief of Security",

	"Mayor",
	"Sheriff",

	"Chief",
	"Shaman",
	"Head Hunter",

	"Followers Administrator"
	))

GLOBAL_LIST_INIT(silicon_whitelist_positions, list(
"Mr. Handy"))
//Whitelisted positions list FO13/MM13 anything that shows up here requires that the user have an entry in the 'role_whitelist' table of id,ckey,"faction"
//NCR Assistant and Legion Camp Follower re-added to whitelisting.  BoS Initiate removed from whitelist.

GLOBAL_LIST_INIT(faction_whitelist_positions, list(
"Head Scribe",
"Elder",
"Head Paladin",
"Head Knight",
"Head Scribe",
"Star Paladin",
"Paladin",
"Star Knight",
"Knight",
"Proctor",
"Scribe",
"BoS Off-Duty",

"Legion Centurion",
"Legion Venator",
"Legion Veteran Decanus",
"Veteran Legionary",
"Legion Prime Decanus",
"Prime Legionary",
"Legion Recruit Decanus",
"Legion Scout",
"Legion Explorer",
"Auxilia",
"Legion Slave",

"Mayor",
"Sheriff",
"Deputy",
"Shopkeeper",
"Doctor",
"Prospector",
"Detective",

"Chief",
"Shaman",
"Head Hunter",
"Druid",
"Hunter",

"Followers Administrator",
"Followers Doctor",
"Followers Guard",

"Cyborg",
"Overseer",
"Chief of Security",
"Vault-tec Doctor",
"Vault-tec Scientist",
"Vault-tec Security",
"Vault-tec Engineer"
))

GLOBAL_LIST_INIT(faction_player_positions, list(
"Star Knight",
"Knight",
"Proctor",
"Scribe",
"BoS Off-Duty",

"Legion Veteran Decanus",
"Veteran Legionary",
"Legion Prime Decanus",
"Prime Legionary",
"Legion Recruit Decanus",
"Legion Scout",
"Legion Explorer",
"Auxilia",
"Legion Slave",

"Deputy",
"Shopkeeper",
"Doctor",
"Prospector",
"Detective",

"Druid",
"Hunter",

"Followers Doctor",
"Followers Guard",

"Cyborg",
"Vault-tec Doctor",
"Vault-tec Scientist",
"Vault-tec Security",
"Vault-tec Engineer"
))
/*
//Whitelisted positions list FO13 anything that shows up here requires that the user have an entry in the 'role_whitelist' table of id,ckey,"antagonist"
GLOBAL_LIST_INIT(antagonist_whitelist_positions, list(
	"Raider",
	"Outlaw",
	"Great Khan" //DA KHANZ, BAY BEEEEEEE
))

GLOBAL_LIST_INIT(brotherhood_paladin_positions, list(
	"Head Paladin",
	"Star Paladin",
	"Paladin"
))

GLOBAL_LIST_INIT(brotherhood_command_positions, list(
	"Elder",
	"Head Paladin",
	"Head Knight",
	"Head Scribe"
))

GLOBAL_LIST_INIT(brotherhood_positions, list(
	"Star Paladin",
	"Paladin",
	"Star Knight",
	"Knight",
	"Proctor",
	"Scribe",
	"Initiate",
	"BoS Off-Duty"
))

GLOBAL_LIST_INIT(den_command_positions, list(
	"Mayor",
	"Sheriff"
))

GLOBAL_LIST_INIT(den_positions, list(
	"Doctor",
	"Citizen",
	"Deputy",
	"Shopkeeper",
	"Farmer",
	"Prospector",
	"Detective",
	"Preacher",
	"Barkeep"
))

GLOBAL_LIST_INIT(legion_command_positions, list(
	"Legion Centurion",
	"Legion Venator"
))

GLOBAL_LIST_INIT(legion_positions, list(
	"Legion Veteran Decanus",
	"Veteran Legionary",
	"Legion Prime Decanus",
	"Prime Legionary",
	"Legion Recruit Decanus",
	"Recruit Legionary",
	"Legion Explorer",
	"Auxilia",
	"Camp Follower",
	"Legion Slave"
))

GLOBAL_LIST_INIT(ncr_rangervet_positions, list(
	"NCR Veteran Ranger",
))

GLOBAL_LIST_INIT(ncr_ranger_positions, list(
	"NCR Ranger",
))

GLOBAL_LIST_INIT(ncr_upper_command_positions, list(
	"NCR Lieutenant",
	"NCR Sergeant First Class",
))

GLOBAL_LIST_INIT(ncr_lower_command_positions, list(
	"NCR Medical Officer",
	"NCR Sergeant",
	"NCR Corporal",
))

GLOBAL_LIST_INIT(ncr_general_positions, list(
	"NCR Combat Medic",
	"NCR Combat Engineer",
	"NCR Trooper",
	"NCR Off-Duty"
))

GLOBAL_LIST_INIT(ncr_positions, list(
	"NCR Lieutenant",
	"NCR Medical Officer",
	"NCR Sergeant First Class",
	"NCR Sergeant",
	"NCR Corporal",
	"NCR Combat Medic",
	"NCR Combat Engineer",
	"NCR Trooper",
	"NCR Rear Echelon",
	"NCR Off-Duty",
	"NCR Veteran Ranger",
	"NCR Ranger"
))

GLOBAL_LIST_INIT(vault_command_positions, list(
	"Overseer",
	"Chief of Security"
))

GLOBAL_LIST_INIT(vault_positions, list(
	"Vault-tec Doctor",
	"Vault-tec Scientist",
	"Vault-tec Security",
	"Vault-tec Engineer",
	"Vault Dweller",
	"Cyborg"
))
*/

GLOBAL_LIST_INIT(world_positions, list(
	"Adventurer"
))
GLOBAL_LIST_INIT(security_positions, list(
	"Guard"
))
/*
GLOBAL_LIST_INIT(silicon_positions, list(
	"Mr. Handy"
))

GLOBAL_LIST_INIT(tribal_positions, list(
	"Chief",
	"Shaman",
	"Head Hunter",
	"Druid",
	"Villager",
	"Hunter",
	"Spirit-Pledged"
))

GLOBAL_LIST_INIT(followers_command_positions, list(
	"Followers Administrator"
))
GLOBAL_LIST_INIT(followers_positions, list(
	"Followers Doctor",
	"Followers Guard",
	"Followers Volunteer",
	"Followers Scientist"
))

*/

GLOBAL_LIST_INIT(exp_jobsmap, list(
	EXP_TYPE_CREW = list("titles" = command_positions | town_positions | medical_positions | science_positions | supply_positions | security_positions | civilian_positions | list("AI","Cyborg")) // crew positions
))

GLOBAL_LIST_INIT(exp_specialmap, list(
	EXP_TYPE_LIVING = list(), // all living mobs
	EXP_TYPE_ANTAG = list(),
	EXP_TYPE_SPECIAL = list("Lifebringer","Ash Walker","Exile","Servant Golem","Free Golem","Hermit","Translocated Vet","Escaped Prisoner","Hotel Staff","SuperFriend","Space Syndicate","Ancient Crew","Space Doctor","Space Bartender","Beach Bum","Skeleton","Zombie","Space Bar Patron","Lavaland Syndicate","Ghost Role", "Ghost Cafe Visitor"), // Ghost roles
	EXP_TYPE_GHOST = list() // dead people, observers
))
GLOBAL_PROTECT(exp_jobsmap)
GLOBAL_PROTECT(exp_specialmap)

/proc/guest_jobbans(job)
	return ((job in GLOB.command_positions) || (job in GLOB.nonhuman_positions) || (job in GLOB.security_positions))



//this is necessary because antags happen before job datums are handed out, but NOT before they come into existence
//so I can't simply use job datum.department_head straight from the mind datum, laaaaame.
/proc/get_department_heads(job_title)
	if(!job_title)
		return list()

	for(var/datum/job/J in SSjob.occupations)
		if(J.title == job_title)
			return J.department_head //this is a list

/proc/get_full_job_name(job)
	var/static/regex/cap_expand = new("cap(?!tain)")
	var/static/regex/cmo_expand = new("cmo")
	var/static/regex/hos_expand = new("hos")
	var/static/regex/hop_expand = new("hop")
	var/static/regex/rd_expand = new("rd")
	var/static/regex/ce_expand = new("ce")
	var/static/regex/qm_expand = new("qm")
	var/static/regex/sec_expand = new("(?<!security )officer")
	var/static/regex/engi_expand = new("(?<!station )engineer")
	var/static/regex/atmos_expand = new("atmos tech")
	var/static/regex/doc_expand = new("(?<!medical )doctor|medic(?!al)")
	var/static/regex/mine_expand = new("(?<!shaft )miner")
	var/static/regex/chef_expand = new("chef")
	var/static/regex/borg_expand = new("(?<!cy)borg")

	job = lowertext(job)
	job = cap_expand.Replace(job, "captain")
	job = cmo_expand.Replace(job, "chief medical officer")
	job = hos_expand.Replace(job, "head of security")
	job = hop_expand.Replace(job, "head of personnel")
	job = rd_expand.Replace(job, "research director")
	job = ce_expand.Replace(job, "chief engineer")
	job = qm_expand.Replace(job, "quartermaster")
	job = sec_expand.Replace(job, "security officer")
	job = engi_expand.Replace(job, "station engineer")
	job = atmos_expand.Replace(job, "atmospheric technician")
	job = doc_expand.Replace(job, "medical doctor")
	job = mine_expand.Replace(job, "shaft miner")
	job = chef_expand.Replace(job, "cook")
	job = borg_expand.Replace(job, "cyborg")
	return job