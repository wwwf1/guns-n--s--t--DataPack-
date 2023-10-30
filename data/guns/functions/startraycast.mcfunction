# Enter the function code here

#gives the raycaster this tag
tag @s add raycasting
# shoots th ray for the eyes cuz minecraft is dumb and would shoot the ray at the feet
execute anchored eyes positioned ^ ^ ^ run function guns:raycast

#removes the tag 
tag @s remove raycasting
#resets score board after all the other functions are done
scoreboard players reset .distance tf_rc

# note: WHY IS THIS LANGUAGE SO FUCKING VERBOSE