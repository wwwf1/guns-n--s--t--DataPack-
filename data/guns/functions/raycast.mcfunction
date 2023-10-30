# Enter the function code here
#runs startraycast when a carrot on a stick with the tag 'gon' has been right clicked
execute as @a[scores={gonPew=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{gon:1b}}}] at @s run function guns:raycast 
# this will run the collide functon if an entity that isnt on not_mobs.json and not been hit before 
execute as @e[type=!#guns:not_mob, tag=!raycasting, dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function guns:collide

scoreboard players add .distance tf_rc 1
particle minecraft:smoke ~ ~ ~ 0 0 0 0 0

execute if score .distance tf_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #guns:raycast_pass run function guns:raycast