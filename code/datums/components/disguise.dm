/datum/component/disguise
	var/initial_appearance

/datum/component/disguise/Initialize(atom/movable/mimicked_atom)
	if(!isatom(parent))
		return COMPONENT_INCOMPATIBLE
	RegisterSignal(parent, COMSIG_ATOM_UPDATE_ICON, .proc/block_icon_update)
	
	RegisterSignal(parent,
		list(
			COMSIG_LIVING_MOB_BUMP,
			COMSIG_MOB_ITEM_ATTACK,
			COMSIG_PARENT_ATTACKBY,
			COMSIG_ATOM_ATTACK_HAND,
			COMSIG_ATOM_HITBY,
			COMSIG_ATOM_HULK_ATTACK,
			COMSIG_ATOM_ATTACK_PAW
		), .proc/unstealth)
	RegisterSignal(parent, COMSIG_HUMAN_MELEE_UNARMED_ATTACK, .proc/on_unarmed_attack)
	RegisterSignal(parent, COMSIG_ATOM_BULLET_ACT, .proc/on_bullet_act)

	var/atom/movable/movable = parent
	initial_appearance = movable.appearance
	movable.appearance = mimicked_atom
	movable.copy_overlays(mimicked_atom)

	movable.alpha = max(movable.alpha, 150) //chameleon
	movable.transform = initial(movable.transform) //meh
	movable.pixel_y = initial(movable.pixel_y)
	movable.pixel_x = initial(movable.pixel_x)

/datum/component/disguise/Destroy(force, silent)
	UnregisterSignal(parent, list(
		COMSIG_ATOM_UPDATE_ICON,

		COMSIG_HUMAN_MELEE_UNARMED_ATTACK,
		COMSIG_MOB_ITEM_ATTACK,
		COMSIG_PARENT_ATTACKBY,
		COMSIG_ATOM_ATTACK_HAND,
		COMSIG_ATOM_BULLET_ACT,
		COMSIG_ATOM_HITBY, 
		COMSIG_ATOM_HULK_ATTACK, 
		COMSIG_ATOM_ATTACK_PAW,
	))
	var/atom/movable/movable = parent
	movable.appearance = initial_appearance
	movable.update_icon() //:troll:
	return ..()
	
/datum/component/disguise/proc/unstealth()
	SIGNAL_HANDLER
	to_chat(parent, SPAN_WARNING("Your disguise breaks apart from contact!"))
	do_sparks(2, TRUE, src)
	qdel(src)

/datum/component/disguise/proc/on_unarmed_attack(datum/source, atom/target)
	SIGNAL_HANDLER
	if(!isliving(target))
		return
	unstealth(source)

/datum/component/disguise/proc/on_bullet_act(datum/source, obj/item/projectile/projectile)
	SIGNAL_HANDLER
	if(projectile.nodamage)
		return
	unstealth(source)

/datum/component/disguise/proc/block_icon_update()
	return COMSIG_ATOM_NO_UPDATE_ICON_STATE|COMSIG_ATOM_NO_UPDATE_OVERLAYS
