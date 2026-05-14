# ============================================================
# Aura Extractor - Main entry point
# Usage: /function aura_extractor:extract
#
# Checks the player's helmet for any Enchantments Encore Aura
# enchantment, removes it, and gives back an enchanted book.
# If inventory is full the book drops at the player's feet.
# ============================================================

# Create the tracking objective if it doesn't already exist
scoreboard objectives add aura_found dummy

# Reset the found-flag for this player
scoreboard players set @s aura_found 0

# Check the helmet slot (armor.head) for each Aura enchantment.
# The ~ predicate operator matches even if other enchantments are also present.
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:angry_aura"}]] run function aura_extractor:check/angry_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:aquatic_aura"}]] run function aura_extractor:check/aquatic_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:echoing_aura"}]] run function aura_extractor:check/echoing_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:enchanted_aura"}]] run function aura_extractor:check/enchanted_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:ender_aura"}]] run function aura_extractor:check/ender_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:flaming_aura"}]] run function aura_extractor:check/flaming_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:heavenly_aura"}]] run function aura_extractor:check/heavenly_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:lovely_aura"}]] run function aura_extractor:check/lovely_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:lush_aura"}]] run function aura_extractor:check/lush_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:muddy_aura"}]] run function aura_extractor:check/muddy_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:ominous_aura"}]] run function aura_extractor:check/ominous_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:pale_aura"}]] run function aura_extractor:check/pale_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:sparking_aura"}]] run function aura_extractor:check/sparking_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:sticky_aura"}]] run function aura_extractor:check/sticky_aura
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"enchantencore:trial_aura"}]] run function aura_extractor:check/trial_aura

# Inform the player if no Aura enchantment was found on the helmet
execute if score @s aura_found matches 0 run tellraw @s [{"text":"[Aura Extractor] ","color":"gold","bold":true},{"text":"Your helmet has no Aura enchantment.","color":"red"}]
