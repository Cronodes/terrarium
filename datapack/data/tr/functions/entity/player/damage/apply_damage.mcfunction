############################################################
# Description: Damages a player for one heart
# Made by and credits to: CreeperMagnet_
############################################################

attribute @s[scores={tr.dummy=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 damage_128 -12.8 add
scoreboard players remove @s[scores={tr.dummy=128..}] tr.dummy 128
attribute @s[scores={tr.dummy=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 damage_64 -6.4 add
scoreboard players remove @s[scores={tr.dummy=64..}] tr.dummy 64
attribute @s[scores={tr.dummy=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 damage_32 -3.2 add
scoreboard players remove @s[scores={tr.dummy=32..}] tr.dummy 32
attribute @s[scores={tr.dummy=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 damage_16 -1.6 add
scoreboard players remove @s[scores={tr.dummy=16..}] tr.dummy 16
attribute @s[scores={tr.dummy=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 damage_8 -0.8 add
scoreboard players remove @s[scores={tr.dummy=8..}] tr.dummy 8
attribute @s[scores={tr.dummy=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 damage_4 -0.4 add
scoreboard players remove @s[scores={tr.dummy=4..}] tr.dummy 4
attribute @s[scores={tr.dummy=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 damage_2 -0.2 add
scoreboard players remove @s[scores={tr.dummy=2..}] tr.dummy 2
attribute @s[scores={tr.dummy=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 damage_1 -0.1 add
scoreboard players remove @s[scores={tr.dummy=1..}] tr.dummy 1
scoreboard players set @s tr.dummy2 0
scoreboard players set @s tr.dummy 0
execute store result score @s[nbt={ActiveEffects:[{Id:11b}]}] tr.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if entity @s[nbt={ActiveEffects:[{Id:11b}]},scores={tr.dummy=..3}] run data modify storage tr:storage root.temp.resistance_storage insert 0 from entity @s ActiveEffects[{Id:11b}]
effect give @s[scores={tr.dummy=0..3}] resistance 1 255 true
effect give @s instant_damage 1 0 true
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-7
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-6
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-5
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-4
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-3
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-2
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-1
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-0
tag @s[scores={tr.dummy=0..3}] add tr.scheduled.resistance
execute if entity @s[scores={tr.dummy=0..3}] run schedule function tr:entity/player/damage/scheduled_resistance 2t append
