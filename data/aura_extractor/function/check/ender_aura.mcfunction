# Ender Aura - mark found, remove from helmet, give book
scoreboard players set @s aura_found 1
item modify entity @s armor.head aura_extractor:remove_ender_aura
function aura_extractor:give/ender_aura
execute if score @s aura_found matches 1 run function aura_extractor:output_aura