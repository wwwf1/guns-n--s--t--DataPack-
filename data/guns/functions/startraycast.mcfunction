# Enter the function code here

#gives the ray entity tag ray
tag @s add ray
# shoots th ray for the eyes cuz minecraft is dumb and would shoot the ray at the feet
execute anchored eyes positioned ^ ^ ^ run function guns:raycast

#removes the tag 
tag @s remove ray
#resets score board after all the other functions are done
scoreboard players reset .distance tf_rc

# note: WHY IS THIS LANGUAGE SO FUCKING VERBOSE