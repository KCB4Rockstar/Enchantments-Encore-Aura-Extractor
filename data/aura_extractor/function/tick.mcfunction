scoreboard players enable @a extract_aura

execute as @a[scores={extract_aura=1..}] run function aura_extractor:extract

# Reset the score so it can be used again
scoreboard players set @a[scores={extract_aura=1..}] extract_aura 0