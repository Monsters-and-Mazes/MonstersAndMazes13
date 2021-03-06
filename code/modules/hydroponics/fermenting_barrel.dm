/obj/structure/fermenting_barrel
	name = "wooden barrel"
	desc = "A large wooden barrel. You can ferment fruits and such inside it, or just use it to hold liquid."
	icon = 'icons/obj/objects.dmi'
	icon_state = "barrel"
	density = TRUE
	anchored = FALSE
	pressure_resistance = 2 * ONE_ATMOSPHERE
	max_integrity = 300
	var/open = FALSE
	var/speed_multiplier = 1 //How fast it distills. Defaults to 100% (1.0). Lower is better.

/obj/structure/fermenting_barrel/Initialize()
	create_reagents(300, DRAINABLE | AMOUNT_VISIBLE) //Bluespace beakers, but without the portability or efficiency in circuits.
	. = ..()

/obj/structure/fermenting_barrel/examine(mob/user)
	. = ..()
	. += SPAN_NOTICE("It is currently [open?"open, letting you pour liquids in.":"closed, letting you draw liquids from the tap."]")

/obj/structure/fermenting_barrel/proc/makeWine(obj/item/reagent_containers/food/snacks/grown/fruit)
	var/amount = fruit.seed.potency / 4
	if(fruit.distill_reagent)
		reagents.add_reagent(fruit.distill_reagent, amount)
	else
		var/data = list()
		data["names"] = list("[initial(fruit.name)]" = 1)
		data["color"] = fruit.filling_color
		data["boozepwr"] = fruit.wine_power
		if(fruit.wine_flavor)
			data["tastes"] = list(fruit.wine_flavor = 1)
		else
			data["tastes"] = list(fruit.tastes[1] = 1)
		reagents.add_reagent(/datum/reagent/consumable/ethanol/fruit_wine, amount, data)
	qdel(fruit)
	playsound(src, 'sound/effects/bubbles.ogg', 50, TRUE)

/obj/structure/fermenting_barrel/attackby(obj/item/I, mob/user, params)
	var/obj/item/reagent_containers/food/snacks/grown/fruit = I
	if(istype(fruit))
		if(!fruit.can_distill)
			to_chat(user, SPAN_WARNING("You can't distill this into anything..."))
			return TRUE
		else if(!user.transferItemToLoc(I,src))
			to_chat(user, SPAN_WARNING("[I] is stuck to your hand!"))
			return TRUE
		to_chat(user, SPAN_NOTICE("You place [I] into [src] to start the fermentation process."))
		addtimer(CALLBACK(src, .proc/makeWine, fruit), rand(80, 120) * speed_multiplier)
		return TRUE
	var/obj/item/W = I
	if(W)
		if(W.is_refillable())
			return FALSE //so we can refill them via their afterattack.
	else
		return ..()

/obj/structure/fermenting_barrel/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	open = !open
	if(open)
		DISABLE_BITFIELD(reagents.reagents_holder_flags, DRAINABLE)
		ENABLE_BITFIELD(reagents.reagents_holder_flags, REFILLABLE)
		to_chat(user, SPAN_NOTICE("You open [src], letting you fill it."))
	else
		DISABLE_BITFIELD(reagents.reagents_holder_flags, REFILLABLE)
		ENABLE_BITFIELD(reagents.reagents_holder_flags, DRAINABLE)
		to_chat(user, SPAN_NOTICE("You close [src], letting you draw from its tap."))
	update_icon()

/obj/structure/fermenting_barrel/update_icon_state()
	if(open)
		icon_state = "barrel_open"
	else
		icon_state = "barrel"
