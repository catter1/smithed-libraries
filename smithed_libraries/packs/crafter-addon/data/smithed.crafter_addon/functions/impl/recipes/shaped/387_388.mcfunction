execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{id:"minecraft:prismarine",Slot:0b},{id:"minecraft:prismarine",Slot:1b},{id:"minecraft:prismarine",Slot:2b}],1:[{id:"minecraft:prismarine",Slot:0b},{id:"minecraft:prismarine",Slot:1b},{id:"minecraft:prismarine",Slot:2b}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run item replace block ~ ~ ~ container.16 with minecraft:prismarine_wall 6
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{id:"minecraft:purple_wool",Slot:0b},{id:"minecraft:purple_wool",Slot:1b},{id:"minecraft:purple_wool",Slot:2b}],1:[{id:"minecraft:purple_wool",Slot:0b},{id:"minecraft:purple_wool",Slot:1b},{id:"minecraft:purple_wool",Slot:2b}],2:[{id:"minecraft:air",Slot:0b},{id:"minecraft:stick",Slot:1b},{id:"minecraft:air",Slot:2b}]}} run item replace block ~ ~ ~ container.16 with minecraft:purple_banner 1