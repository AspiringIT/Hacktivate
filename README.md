# Hactivate

This is a Godot project that includes a terminal emulator and a 2D game scene. The terminal emulator supports commands like `go`, `help`, `curl`, `clear`, `setuser`, and `whoami`. The 2D game scene includes a player character that can move around and change scenes when colliding with certain objects.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Godot 3.x
- Git

### Installing

1. Clone the repository
```bash
git clone https://github.com/AspiringIT/Hactivate.git

```

### Game Design Document

<h2>Hacktivate</h2>


<h2>DESIGN DOCUMENT</h2>


By Nicholas Weist


---


[TOC]


<h3>


![alt_text](images/image1.gif "image_tooltip")
</h3>


<h3>Introduction</h3>


<h4>Game Summary Pitch</h4>



		**Hacktivate** a 2D game where you can navigate your person to different locations to hack, buy and sell data, and to gain physical access to a site. When hacking a terminal will be primarily used.

<h4>
	Inspiration</h4>



	**<span style="text-decoration:underline;">Tron Legacy</span>**


	Tron Legacy is a futuristic movie based upon users trapped inside a computer program of their own creation and their mission to escape. In this movie it has “Identity Disk” which is pretty much the save file for every individual program and users. However they must also prevent the programs from escaping. \



	**<span style="text-decoration:underline;">Bitburner</span>**


	BitBurner is a Terminal based hacking game with it’s own **items/shop and commands** to attack systems. It also has a **difficulty setting** for the users choice of difficulty and if they want to use more realistic commands. 


	**Hack the Box**


	Hack the box is free to start learning hacking and is meant to teach the basics. This game is also to teach the basics and emulate systems to **teach hacking**.


	Player Experience


	In a Computer terminal for most of the **15 levels **(There will be a few levels that require traveling), the player will solve a short but perhaps complex puzzle **requiring planning and management of computer resources**. The player must learn and use their knowledge of the interactions between the player actions and various environmental items to understand how to pass through each level.

<h4>
	Platform</h4>



	The game is developed to be released on windows PC (and eventually mac) Currently no plan for linux

	

<h4>Development Software</h4>




* Godot Engine-net 4.2.1 for programming
* Aseprite for graphics and UI
* Fami Studio for all music and SFX (Maybe soundtrap or garageband)
<h4>
	Genre</h4>



	Singleplayer, puzzle, casual,Programming

<h4>
	Target Audience</h4>



	Without heavy or complicated ideas, and intuitive-to-grasp mechanics, this game is marketed to at least **intermediate game players and coders** who are up for puzzling challenges as well as more veteran players up for solving complicated problems


<h3>Concept</h3>


<h4>Gameplay overview</h4>



	The player controls a character (Black Hat Hacker) and his job is to not get caught and to successfully hack into systems and sell the data to improve their skills and items.

<h4>Theme Interpretation (Digital Dystopia)</h4>



	In "Hacktivate," players delve into a **digital underworld where data is currency and hacking is the key to survival.** The game's theme revolves around a dystopian future where the lines between reality and cyberspace blur, echoing the futuristic ambiance of "Tron Legacy."


	The concept of identity and control, reminiscent of the "Identity Disk" in "Tron Legacy," is central to the game. Players navigate their persona through a maze of terminals and networks, each representing a fragment of the digital world. The constant struggle to maintain control over one's identity while navigating through hostile systems reflects the dystopian theme of individuals trapped within their own creations.


	The gameplay mechanics draw inspiration from real-life hacking environments like "BitBurner" and "Hack the Box," grounding the experience in a sense of authenticity. As players progress through the levels, they encounter increasingly complex puzzles, mirroring the challenges of navigating through a fragmented and chaotic digital landscape.


	**<span style="text-decoration:underline;">The player's role as a "Black Hat Hacker" adds a moral ambiguity to the gameplay, forcing them to confront the consequences of their actions within the game world. The tension between personal gain and ethical responsibility mirrors the broader themes of power and corruption in a dystopian society.</span>**


	Overall, "Hacktivate" offers players a thought-provoking journey into a digital dystopia, where the boundaries between right and wrong are blurred, and the quest for control drives the narrative forward.



<h4>Primary Mechanics</h4>



<table>
  <tr>
   <td><strong>Mechanic</strong>
   </td>
   <td><strong>Animated Mockup </strong>
<p>
<strong><em>(Art not necessarily final)</em></strong>
   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        Digital Roads        a \
</span></strong>
<p>
A path that a player must follow to get to their destination otherwise leave the path too much and be “de-resolutioned” (die).
   </td>
   <td>

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image2.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        Computer        a \
</span></strong>
<p>
An in-game computer where you can access the terminal and hack systems.
   </td>
   <td>

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image3.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        Antivirus       a \
</span></strong>
<p>
This is a direct enemy of the hacker and is difficult to defeat. This is meant to fight back in higher levels and lower levels to be non-existent 
   </td>
   <td>

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image4.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        ID Badges       a \
</span></strong>
<p>
These are “disguises” a player can have when they must go to a site to hack and to avoid detection from security and employees and to gain an access level to the system.
   </td>
   <td>

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image5.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
</table>


	

<h4>Secondary Mechanics</h4>



<table>
  <tr>
   <td><strong>Mechanic</strong>
   </td>
   <td><strong>Animated Mockup </strong>
<p>
<strong><em>(Art not necessarily final)</em></strong>
   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        Shops        a \
</span></strong>
<p>
A player can access a shop either online with a time delay (Shipping) if it is a physical item or they may go to a “Shady Shopkeeper” who has limited items that change after a set amount of time but their is no delay in receiving any item/data
   </td>
   <td>

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image6.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td><strong><span style="text-decoration:underline;">        Clock        a \
</span></strong>
<p>
There is to be a real time clock based upon the users selection of timezone. (However the clock may not be set manually for cheating)
   </td>
   <td>

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image7.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
</table>


<h3>Art</h3>


<h4>Theme Interpretation</h4>



	There will be a very wide range of colors throughout the game and in the terminal the background is to be black or white with colored text that can be changed by the user

<h4>Design</h4>



	A very **minimalistic **approach will go into the design of the game, heavily relying on the contrast of colors to provide depth. Though, the design still is clean and smooth in the sense that, the use of many shades of a color will be as present to confront the **techy style** and pixel art.


	

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.jpg "image_tooltip")


<h3>Audio</h3>


<h4>Music</h4>



	In crafting the musical backdrop for the game, the focus will be on capturing the essence of techno music. Embracing minimalism, the tracks will utilize reverb and effects to create a sense of space, even with a limited number of instruments. Expect basslines and rhythmic drum patterns to dominate, complemented by subtler synthesized elements. This approach not only enhances the retro aesthetic but also immerses players in the energetic and pulsating world of techno.

<h4>Sound Effects</h4>



	To add more flare and polish to the experience, a multitude of environmental sound effects will give weight and feedback to the player’s actions. Rather than foley, or otherwise realistic sounds, synthesized blips, bloops,whooshes, errors sounds are used.

<h3>Game Experience</h3>


<h4>UI</h4>



	On top of the rigid pixel art constituting the rest of the art, a more smooth, higher definition style will be incorporated in the UI. Utilizing many shades of the RGB spectrum allowed in the art restriction, anti-aliasing is used to further emphasize the UI.

<h4>Controls</h4>



	**<span style="text-decoration:underline;">Keyboard</span>**


		Arrow keys / WASD \
**<span style="text-decoration:underline;">Gamepad</span>**


		Partial support for traveling and shop(Eventually)

<h3>Development Timeline</h3>


**<span style="text-decoration:underline;">MINIMUM VIABLE PRODUCT</span>**


<table>
  <tr>
   <td><strong>#</strong>
   </td>
   <td><strong>Assignment</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Status</strong>
   </td>
   <td><strong>Finish By</strong>
   </td>
   <td><strong>Notes</strong>
   </td>
  </tr>
  <tr>
   <td>1
   </td>
   <td>Design Document
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>2
   </td>
   <td>Create player and wall assets
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>3
   </td>
   <td>Main menu theme
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Can be really short, player won’t be on main menu for long
   </td>
  </tr>
  <tr>
   <td>4
   </td>
   <td>UI / Main menu
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Button UI, screen transition, title screen
   </td>
  </tr>
  <tr>
   <td>5
   </td>
   <td>Level theme
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>6
   </td>
   <td>Simple player movement
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Move single cells around and collide with walls
   </td>
  </tr>
  <tr>
   <td>7
   </td>
   <td>Complex player movement
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Multi cell masses act together to collide with walls
   </td>
  </tr>
  <tr>
   <td>8
   </td>
   <td>Computer environment
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Implement spike and holes mechanics
   </td>
  </tr>
  <tr>
   <td>9
   </td>
   <td>Shop interaction
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>10
   </td>
   <td>Special effects
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Dust particles during movement
   </td>
  </tr>
  <tr>
   <td>11
   </td>
   <td>Player animation
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Idle blinks, movement polish
   </td>
  </tr>
  <tr>
   <td>12
   </td>
   <td>Sound effects
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Player movement, UI interaction
   </td>
  </tr>
  <tr>
   <td>13
   </td>
   <td>Pause menu
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Access to the main menu or resetting the level
   </td>
  </tr>
  <tr>
   <td>14
   </td>
   <td>Level select menu
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>15
   </td>
   <td>Level design (1-7)
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Create levels 1 through 7
   </td>
  </tr>
  <tr>
   <td>16
   </td>
   <td>Level design (8-15)
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Create levels 7 through 15
   </td>
  </tr>
  <tr>
   <td>17
   </td>
   <td>Any extra polish
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>18
   </td>
   <td>SUBMIT
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Create Itch Page and upload
   </td>
  </tr>
</table>


**<span style="text-decoration:underline;">BEYOND (if ahead of schedule / extra time)</span>**


<table>
  <tr>
   <td>Undo
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>At any point, the player may undo their move, any movement, creation, or destruction of a player cell is reversed
   </td>
  </tr>
  <tr>
   <td>Extra levels
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Settings Menu
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>Volume slider, fullscreen toggle
   </td>
  </tr>
</table>
