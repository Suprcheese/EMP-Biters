EMP Biters 1.0.1
================

Version 1.0.1 was released March 27, 2016, was tested using Factorio v0.12.29, and was authored by Supercheese.

Many mods give the player a whole host of new weapons and defenses to play with, but the poor biters are left behind. It's time they received an upgrade!
Now, large biters have a chance to give off an EMP blast when they die, temporarily disabling nearby turrets, radars, and logistic & construction robots. Large spitters also have a chance to EMP with their spit.
The larger the enemy and the higher the evolution factor, the bigger the chance of EMP is.

Gun turrets are only disabled by EMP for half as long as laser turrets, to encourage using mixed defenses.
Big Worms have a 100% chance to cause a large EMP blast with their spit, to make turret creep more challenging.

This mod also supports Bob's Enemies, Dytech War, and Natural Evolution Enemies.

The area of effect, minimum & maximum durations, etc. are stored in config.lua. Feel free to edit these values to increase or decrease the difficulty.


FAQs:
-----

Q) How are biters/spitters able to generate an EMP anyway?
A) Magic. The same magic that lets FactorioGuy carry around 20 Tanks, Locomotives, and Steam Engines in his pocket.

Q) Jeez, this mod really makes things a lot harder. How do I defend my base now?
A) Landmines. Lots of landmines. Or spread your turrets out more. Maybe even make a secondary defensive line. I'm sure you'll come up with something!
EMP attacks won't become a threat until you reach Big Biters anyway, and by that time you might already have construction robots to automatically repair damage and replace destroyed structures.

Q) Is there any way I can fix my structures when they've been hit with an EMP attack?
A) Yes, you can pick them up and replace them. You can use bots to deconstruct/reconstruct them too, but this is risky because the bots themselves are vulnerable to EMP. Other than this, you must wait for the EMP effect to wear off.

Q) Will this mod hurt my FPS/UPS?
A) I have benchmarked this mod under very heavy biter attacks, and even then it still had performance comparable to the popular YARM mod. So if your game runs fine while monitoring several sites with YARM, it should run fine with this.
Of note, when no entities are affected by EMP, the mod shuts down its on_tick function to improve performance.

Q) What happens if, after I load the mod, later I chicken out and decide I want to remove it?
A) Well, if you remove this mod from a running game where some entities are disabled by EMP, those entities will not be automatically re-enabled; you'll have to manually pick them up and replace them to re-enable them.
Other than that everything else should be fine.


Credits:
--------

The EMP blast graphics were obtained from: http://opengameart.org/content/animated-blue-ring-explosion
They were uploaded by the user "Grahhhhh" under the CC-0 (Creative Commons 0) license. (See: http://creativecommons.org/publicdomain/zero/1.0/)

The clouds of sparks that appear above disabled turrets are modified from Factorio base graphics.

Thanks to the forum and #factorio IRC denizens for advice & bugtesting.


See also the associated forum thread to give feedback, view screenshots, etc.:

https://forums.factorio.com/viewtopic.php?f=93&t=22294
