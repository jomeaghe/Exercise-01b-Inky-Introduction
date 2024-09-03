/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
  +Basic Choices
 +Knot structure
 + Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth == 
you are at the entrance to a cave in the woods. {not flashlight_pickup: There is a flashlight on the floor, of the front entrance}. The cave extends to the east and the west.
+ [take the east tunnel] -> east_tunnel
you go east
+ [take the west tunnel] -> west_tunnel
you go west
*[pick up the flashlight] -> flashlight_pickup 
==east_tunnel==
you are in the east tunnel. its to dark for you to see anything.
+[use light] -> east_tunnel_lit
+[return to the entrance] -> cave_mouth
->END

== west_tunnel==
you are in the west
+[return to the entrance] -> cave_mouth
*[pick up a strange key]->key_pickup
->END

=== flashlight_pickup ===
you now have a light, allows you to see in the dark
* [go back] -> cave_mouth
-> END
==east_tunnel_lit==
the light illuminates a passage in the wall
+approach passage in the wall.->passage
+return to entrance->cave_mouth
-> END
==passage==
the passage appears to be endless in length and is to far to see the end even with a light.
+[return back]->east_tunnel_lit
*[go into the passage]->passage_deep
=== key_pickup ===
you now have a key, this may be useful.->west_tunnel
-> END
==passage_deep==
you have been walking for what seems like forever its to late to go back when the cave behinds you collapses.
*[continue onward]->passage_end
+[look around]->passage_deep_look
==passage_end==
you finally get to the end and find a large wooden door that is has a padlock
+[inspect door]->door_inspect
==passage_deep_look==
you find there is nothing around you only the direction you were going.
+[keep walking]->passage_deep
==door_inspect==
the door appears to have a large lock on it but light peers through the bottom crack.
*[kick door]->door_kick
+[try and open it] {not key_pickup: checking the door and }->door_lock
+[use a rock on the padlock]->lock_break
==lock_break==
the lock shatters off as it is not as strong as it looks
*[open door]->otherside
==door_kick==
the door was to solid and now you have broken your leg rendering you unable to move as you lay in the tunnel the flashlight dies leaving you in the dark.
->END
==door_lock==
the padlock appears to be unbreakable
+[look again]->door_inspect
==otherside==
you find the hidden treasure it is the answer key to all future FA24 assignments with a exit staircase on the other side as you climb to victory.
->END

