/datum/bovine_fashion
	var/name
	var/desc
	var/emote_see
	var/emote_hear
	var/speak
	var/speak_emote

	// This isn't applied to the bovine, but stores the icon_state of the
	// sprite that the associated item uses
	var/icon_file
	var/obj_icon_state
	var/obj_alpha
	var/obj_color

/datum/bovine_fashion/New(mob/M)
	name = replacetext(name, "REAL_NAME", M.real_name)
	desc = replacetext(desc, "NAME", name)

/datum/bovine_fashion/proc/apply(mob/living/simple_animal/cow/bovine/D) //none of this currently seems to work, but the backpacks go on so I'm content for now
	if(name)
		D.name = name
	if(desc)
		D.desc = desc
	if(emote_see)
		D.emote_see = emote_see
	if(emote_hear)
		D.emote_hear = emote_hear
	if(speak)
		D.speak = speak
	if(speak_emote)
		D.speak_emote = speak_emote

/datum/bovine_fashion/proc/get_overlay(dir)
	if(icon_file && obj_icon_state)
		var/image/corgI = image(icon_file, obj_icon_state, dir = dir)
		corgI.alpha = obj_alpha
		corgI.color = obj_color
		return corgI

/datum/bovine_fashion/head
	icon_file = 'icons/mob/corgi_head.dmi'

/datum/bovine_fashion/back
	icon_file = 'icons/mob/corgi_back.dmi'


/datum/bovine_fashion/back/backpack
	name = "caravan bovine"
	desc = "This bovine is wearing a backpack to hold items."
