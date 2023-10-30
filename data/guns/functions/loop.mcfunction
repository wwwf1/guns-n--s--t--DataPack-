# something here
# scoreboard time
scoreboard objectives add gonPew minecraft.used:minecraft.carrot_on_a_stick

#runs startraycast when a carrot on a stick with the tag 'gon' has been right clicked
execute as @a[scores={gonPew=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{gon:1b}}}] at @s run function guns:startraycast 
