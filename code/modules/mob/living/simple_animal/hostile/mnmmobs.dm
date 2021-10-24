/mob/living/simple_animal/hostile/goblin
	name = "Goblin"
	desc = "A small skinny green mangy looking humanoid who makes incoherent noises."
	icon = 'icons/mob/wastemobs.dmi'
	gender = "male"
	icon_state = "Gobbo1"
	icon_living = "Gobbo1"
	icon_dead = "gobbodead"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/gecko = 2, /obj/item/stack/sheet/animalhide/gecko = 1)
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	taunt_chance = 30
	speed = 1
	maxHealth = 70
	health = 70
	harm_intent_damage = 7
	obj_damage = 20
	melee_damage_lower = 10
	melee_damage_upper = 15
	attack_verb_simple = "claws"
	speak_emote = list("rasps")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("hostile")
	a_intent = INTENT_HARM
	gold_core_spawnable = HOSTILE_SPAWN

	emote_taunt = list("screeches")
	emote_taunt_sound = list('sound/f13npc/gecko/gecko_charge1.ogg', 'sound/f13npc/gecko/gecko_charge2.ogg', 'sound/f13npc/gecko/gecko_charge3.ogg',)
	aggrosound = list('sound/f13npc/gecko/gecko_alert.ogg', )
	death_sound = 'sound/f13npc/gecko/gecko_death.ogg'

/mob/living/simple_animal/hostile/goblin/playable
	health = 150
	maxHealth = 150
	speed = 0
	emote_taunt_sound = null
	emote_taunt = null
	aggrosound = null
	idlesound = null
	see_in_dark = 10
	wander = 0
	anchored = FALSE
	melee_damage_lower = 20
	melee_damage_upper = 45

/mob/living/simple_animal/hostile/goblinthicc
	name = "Goblin"
	desc = "A small but proportionate green mangy looking humanoid who makes incoherent noises."
	icon = 'icons/mob/wastemobs.dmi'
	gender = "female"
	icon_state = "Thiccgobbo1"
	icon_living = "Thiccgobbo1"
	icon_dead = "gobbodead"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/gecko = 2, /obj/item/stack/sheet/animalhide/gecko = 1)
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	taunt_chance = 30
	speed = 1
	maxHealth = 70
	health = 70
	harm_intent_damage = 7
	obj_damage = 20
	melee_damage_lower = 10
	melee_damage_upper = 15
	attack_verb_simple = "claws"
	speak_emote = list("rasps")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("hostile")
	a_intent = INTENT_HARM
	gold_core_spawnable = HOSTILE_SPAWN

	emote_taunt = list("screeches")
	emote_taunt_sound = list('sound/f13npc/gecko/gecko_charge1.ogg', 'sound/f13npc/gecko/gecko_charge2.ogg', 'sound/f13npc/gecko/gecko_charge3.ogg',)
	aggrosound = list('sound/f13npc/gecko/gecko_alert.ogg', )
	death_sound = 'sound/f13npc/gecko/gecko_death.ogg'

/mob/living/simple_animal/hostile/goblinthicc/playable
	health = 150
	maxHealth = 150
	speed = 0
	emote_taunt_sound = null
	emote_taunt = null
	aggrosound = null
	idlesound = null
	see_in_dark = 10
	wander = 0
	anchored = FALSE
	melee_damage_lower = 20
	melee_damage_upper = 45