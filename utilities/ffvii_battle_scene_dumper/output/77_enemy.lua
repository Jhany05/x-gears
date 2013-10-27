-- MP (16)
MP = {
    max_hp = 30,
    max_mp = 0,

    level = 2,
    physical_power = 6,
    physical_defense = 2,
    physical_dodge = 0,
    magic_power = 0,
    magic_defense = 0,
    speed = 50,
    luck = 4,

    back_damage_multiplier = 2,

    morph_item = Potion,

    reward_exp = 16,
    reward_ap = 2,
    reward_gil = 10,

    reward_items_drop = {
        Potion = 8,
    },

    elements = {},

    status_immunes = {},

    attacks = {
        MachineGun = {
            script_id = 3,
        },
        Tonfa = {
            script_id = 4,
        }
    },

    items_steal = {
        Grenade = 8,
    },

    berserk_attack = MachineGun,

    manipulate_attacks = {
        MachineGun,
        Tonfa,
    },
},


-- Guard Hound (17)
Guard Hound = {
    max_hp = 42,
    max_mp = 0,

    level = 3,
    physical_power = 8,
    physical_defense = 2,
    physical_dodge = 6,
    magic_power = 2,
    magic_defense = 1,
    speed = 64,
    luck = 6,

    back_damage_multiplier = 2,

    morph_item = Potion,

    reward_exp = 20,
    reward_ap = 2,
    reward_gil = 12,

    reward_items_drop = {
        Potion = 8,
    },

    elements = {},

    status_immunes = {},

    attacks = {
        Bite = {
            script_id = 3,
        },
        Tentacle = {
            script_id = 4,
        }
    },

    items_steal = {
        Potion = 32,
    },

    berserk_attack = Bite,

    manipulate_attacks = {
        Bite,
        Tentacle,
    },
},


-- Mono Drive (18)
Mono Drive = {
    max_hp = 28,
    max_mp = 28,

    level = 2,
    physical_power = 3,
    physical_defense = 3,
    physical_dodge = 6,
    magic_power = 3,
    magic_defense = 2,
    speed = 49,
    luck = 2,

    back_damage_multiplier = 2,

    morph_item = Ether,

    reward_exp = 18,
    reward_ap = 3,
    reward_gil = 8,

    reward_items_drop = {
        Potion = 8,
        Ether = 2,
    },

    elements = {
        Earth = "Nullify",
        Wind = "DoubleDamage",
    },

    status_immunes = {
        Stop,
        Frog,
        Paralysis,
    },

    attacks = {
        Drilldrive = {
            script_id = 3,
        },
        Fire = {
            script_id = 4,
            camera_movement = 261,
        }
    },

    items_steal = {},

    berserk_attack = Drilldrive,

    manipulate_attacks = {
        Drilldrive,
        Fire,
    },
},

