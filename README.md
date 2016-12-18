# Ultimate Linux Mint 18 Cinnamon

Let us first take a screenshot of the initial look of Linux Mint 18 Cinnamon

![Screenshots](http://i.imgur.com/RFfsxm6.jpg)

##Download this github

You can run any of these scripts by downloading the zip file from github. Go to the download folder and right-click to **Extract here**.
Go inside the folder and right-click <b>in a blank space</b> to go to the terminal. Now your terminal is opened in this extracted folder.

Or you can use the terminal and the git command

	git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18-Cinnamon


##Update your system.

Choose if you like to download from local servers or not.


![Screenshots](http://i.imgur.com/LcMjMBG.png)


Ofcourse you can change the theme. I like the mint-y-dark theme which I will use in the later screenshots.


![Screenshots](http://i.imgur.com/TzllSMo.png)



## Kernel, cinnamon and nvidia

As described at http://erikdubois.be/ I try to get the latest of everything. This attitude tends to break things. You have been warned. But the best way to learn about linux.

The first time I suggest you follow the steps in the article.

I have written a script to automate my installations. 

###KERNEL

I choose to install the kernel via scipts.

	- ./update-to-the-last-stable-4.x-latest.sh 

Do not forget to type "./" in front of the name.


![Screenshots](http://i.imgur.com/46pHNmX.jpg)


###Cinnamon

I never install this on my working computer. You have been warned.

The very latest cinnamon version can be installed on your system.

These lines will add a resource and update your system.

	# sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
	# sudo apt-get update 
	# sudo apt-get install cinnamon -y



###Nvidia

The last months I have no issues with the drivers coming from Linux (i.e.nouveau). So I do NOT install the Nvidia drivers.

Nvidia drivers will <b>NOT</b> be installed as they are very specific to your hardware. But checkout the code.

You can normally install nvidia drivers without any other source.

Try typing this in the terminal


	# sudo apt install nvidia    and then press on TAB


If for some reason you want other sources for your drivers then check out these two.

Copy/paste these lines in a terminal to get the latest nvidia drivers.

	# sudo add-apt-repository -y ppa:graphics-drivers/ppa
	# sudo apt-get update
	# sudo apt-get install nvidia-340 -y (for example)

Check on Nvidia.com which driver you should use.

Wait for the installation and reboot.

More info when running into problems : http://erikdubois.be/install-latest-nvidia-driver-linux-mint-18/



##Software installation

We start the installation script of all the needed software in the same way as above. 

	- ./install-all-needed-software-at-once-vx.sh

Do not forget to type "./" in front of the name.

The best of them 

	Spotify
	Sublime Text
	Variety
	Inkscape
	Plank
	Screenfetch
	Numix Icons
	Google Chrome
	...

##Change the theme to Mint-Y-Dark

Ofcourse you can change the theme. I like the **mint-y-dark** theme which I will use in the later screenshots. I installed screenfetch to show you some technical information.

    sudo apt install screenfetch


![Screenshots](http://i.imgur.com/YO66kdK.png)

Sometimes you can change the present theme to its dark equivalent.
Follow these steps to check if a dark variant of your theme exist. Best to logoff or reboot to be sure.

![Screenshots](http://i.imgur.com/JkeB1Ek.gif)

This is an example of Sardi icons and dark theme on.


## Download the Arc themes

Using the scripts at https://github.com/erikdubois/Arc-Theme-Colora we can change the standard blue colour from Arc to any colour we like.

Check first at https://github.com/erikdubois/Arc-Theme-Colora-Collection if your colour has been created already.

We can install all the created themes with this script

	theme-arc-colora-collection-3.2-vx.sh

The version of cinnamon is important to have a nice theme or not. 
Linux Mint 18.1 > cinnamon version 3.2 

	cinnamon --version


**Arc-Dark-Orange**

![Screenshots](http://i.imgur.com/mNenIjf.jpg)

Read here for more info on ARC BASED THEMES : http://erikdubois.be/category/themes/arc-based-themes/



## Download the Mint-Y themes

Using the scripts at https://github.com/erikdubois/Mint-Y-Colora-Theme we can change the standard green colour from Mint-Y to any colour we like.

Check first at https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection if your colour has been created already.

We can install all the created themes with this script

	theme-mint-y-colora-collection-3.2-vx.sh

The version of cinnamon is important to have a nice theme or not. 
Linux Mint 18.1 > cinnamon version 3.2 

	cinnamon --version

**Mint-Y-Arc-Dark**

![Screenshots](http://i.imgur.com/f5116nb.jpg)

Read here for more info on MINT-Y BASED THEMES : http://erikdubois.be/category/themes/mint-y-based-themes/



# Themes

In the theme folder you can find also some themes. Just unpack them and copy them into the hidden folder

	.themes

Then select them with the themes manager.

# Mint-Y-Dark-Arc

Green accents of Mint-Y-Dark have been replaced with a blue accent.


![Screenshots](http://i.imgur.com/kTN6vmp.jpg)



![Screenshots](http://i.imgur.com/LWP9Zuz.jpg)


This is an exercise how to change the green accents to blue accents

	Green : #8fa876 or #8FA876
	Blue  : #6ba4e7 or #6BA4E7

Remember linux is capital sensitive.

You can get the Mint-y-dark on github. 

https://github.com/linuxmint/mint-y-theme

I used the script that is in the folder source but first changed the master svg's to have a blue colour.

To do so quickly I used Sublime Text to open the master svg and replaced the codes. Even then I had to go inside the svg to change some of them manually. Some do not have this exact colour but a derivative.

Installed the following packages to be able to run the scripts.

	- sudo apt install ruby-sass
	- sudo apt install optipng

Search for all the instances of this green (#8fa876) and changed it to blue (#6ba4e7). Not in the svg's this time but in everything else like e.g. css or rc.
The best tool for the job is catfish. 

	- sudo apt install catfish

Catfish can also search INSIDE the files. So the actual content of the file.

![Screenshots](http://i.imgur.com/fhAeJd6.png)

Change the name of the theme and try it out.

If you just want to explore the css codes, I can recommend you brackets as it will show you the colour when you hover over a code. Sublime-text will not do this.
There is a script to easily install brackets as it needs a dependancy on Linux Mint 18.


# Minty-transparent

Based on Minty-transparent I dived into the code to see how themes were made and changed some minor accents.

![Screenshots](http://i.imgur.com/NWfRtQD.jpg)

![Screenshots](http://i.imgur.com/GRFUeE7.jpg)



1. Sardi Icon Theme
-------------------

This icon theme can be downloaded at  sourceforge.

http://sourceforge.net/projects/sardi/

For ease of installation I use the script


	- icons-sardi-vx.sh



More documentation on http://erikdubois.be

Follow the collection on google+.

The most recent pictures can be found there.

https://plus.google.com/u/0/collection/YFP-LB


Some Examples!


Sardi Flexible has a script. Type a colour code and 3 seconds later all your icons have changed.

Colour codes can be figured out locally with gpick or online via http://www.colorpicker.com/.

![Screenshots](http://i.imgur.com/T9gN544.jpg)



This is the original colour of Sardi Flexible with Minty-transparent theme.



![Screenshots](http://i.imgur.com/iS6zFFU.jpg)

Sardi Arc

![Screenshots](http://i.imgur.com/IeZFWvs.jpg)


There is also a collection of **Sardi Extra** icons at 

https://github.com/erikdubois/Sardi-Extra

These icons can be downloaded but will not be maintained. Nor are they part of the core icons of Sardi. They are the result of ideas and scripts that are included in Sardi icons.




2. Surfn
--------------------------------- 

For ease of installation I use the script

	- icons-surfn-v2.sh




![Screenshots](http://i.imgur.com/i1FGsR9.jpg)



![Screenshots](http://i.imgur.com/EocrQ70.png)




3. Aureola Conky
---------------

This is an exercise in writing conky configurations in lua syntax.

At https://github.com/erikdubois/Aureola you can check out these conky's.

![Screenshots](http://i.imgur.com/y92Jrp4.png)


![Screenshots](http://i.imgur.com/97Q8RO1.jpg)


![Screenshots](http://i.imgur.com/VgD9SqN.png)




4. Aurora Conky
---------------
	

Aurora is a collection of conky's I like. 

Download it from http://sourceforge.net/projects/auroraconkytheme/.

Installation is described at 

http://erikdubois.be/category/linux/aurora-conky/

In this downloadfolder you will find an <b>installationscript</b> as well i.e. Auto_LinuxMint_Rebecca_cinnamon_aurora.sh


But basically unpack the zip file. Make the hidden folder .conky (if it does not exist yet) and place the folder aurora in there.

Install conky-manager that will make life easy.

	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get update
	sudo apt-get install conky-manager

Start up conky-manager and choose the conky to your liking.



You should arrive at something similar depending on theme and icons choices: 


![Screenshots](http://i.imgur.com/YAyQOjw.jpg)



![Screenshots](http://i.imgur.com/Yyfslr1.jpg)



![Screenshots](http://i.imgur.com/B5cPnMK.jpg)



Then you take the script apart and you write your own code.

This github script is explained more in depth on my website.

http://erikdubois.be/





5. ZSH and Oh-my-sh
-----------------------
I like bash but I prefer zsh with lots of different theme to spice things up. So let us install that in the script.

ZOOM IN to see that the colours and the look change in the terminal.
Everytime a surprise. Because of the 'random'. Read on. 

![Screenshots](http://i.imgur.com/NUc55XO.png)

./install-zsh-latest.sh

Normally you need to go and find that hidden file .zshrc (CTRL+H) and edit it. You should change it into ZSH_THEME="random".

<b>Latest script will take care of that automatically.</b>

[![Install zsh](http://i.imgur.com/vcTLjCT.jpg)](https://www.youtube.com/watch?v=5UOkIRhq7h8 "Install zsh - Click to Watch!")

Each time you start an other terminal you will get a different theme. It will surprise you every time.

[![Showing zsh](http://i.imgur.com/gzK6c7j.jpg)](https://www.youtube.com/watch?v=T2Y_dp1STos "Showing zsh - Click to Watch!")





6. Plank
------------------

Plank is installed through this script

	install-all-needed-software-at-once-vx.sh

Find plank in the menu and start it. <b>CTRL + Right-click</b> on the plank and choose preferences
and put in on top. Standard you will have only 3 themes.

![Screenshots](http://i.imgur.com/arie1IY.jpg)

If you want to install 100+ plank themes, you need to run this script : 

	plank-themes-vx.sh

Surfn icons and all plank themes

![Screenshots](http://i.imgur.com/CRfb4Qo.gif)

Sardi icons and all plank themes

![Screenshots](http://i.imgur.com/dnmq1g0.gif)


Read more on plank e.g. how to autostart plank on boot : http://erikdubois.be/category/linux/plank/


7. Folder nemo-scripts
---------------------------

Check out in Nemo (filemanager or explorer in windows)

	Edit/Plugins

There you can post actions and plugins in the hidden folders.

Move the content of the folder config_apps/nemo-scripts-plugins to the hidden folder 

	~/.local/share/nemo/scripts

and change to your liking. These are quick fixes and one backup script to a Backup folder.

Or just follow the youtube movie to get more details about 3 scripts I have kept over the years.

![Screenshots](http://i.imgur.com/ody9WJO.jpg)


[![How to add scripts to nemo](http://i.imgur.com/8lFcYuP.jpg)](https://www.youtube.com/watch?v=JCxxs7IzUbs "How to add scripts to nemo - Click to Watch!")




# Extra info on Youtube

Content Playlist of 60+ short movies to make your desktop eye-candy
Sardi icon set playing its part therein.

About 60 short movies to completely change your desktop experience for linux.
Updating, kernel installation, applications installation, variety settings, firefox and google search, lastpass and xmarks, sardi icon theme, fixing icons that never change, theme installation of vertex and arc, applets, dropbox, zsh, printer, aureola conky, surfn icons, plank, personal settings of cinnamon, gimp scripts added, dropbox fix, keyboard fix for music, ...

Customisation : https://github.com/erikdubois/Ultimate-Linux-Mint-18-Cinnamon

Sardi icons: https://sourceforge.net/projects/sardi/files/

Surfn icons : https://github.com/erikdubois/Surfn

Aureola conky : https://github.com/erikdubois/Aureola

This was the endresult after executing all the movies.


![Screenshots](http://i.imgur.com/42Mzix2.jpg)

![Screenshots](http://i.imgur.com/kTN6vmp.jpg)


Check out the movies by clicking here

<a target="_blank" href="https://www.youtube.com/watch?v=mymzR-4hafQ&list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB">
<img style="max-width:100%;" src="http://i.imgur.com/UMpseyy.png">
</a> 




# Youtube Resources 

Content Playlist of 100+ short movies to make your desktop eye-candy.
Sardi icon collection playing its part.

https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB

About 100+ short movies to completely change your desktop experience for linux.
They are made on Linux Mint 18 and still apply on 18.1.
Updating, kernel installation, applications installation, variety settings, firefox and google search, lastpass and xmarks, sardi icon theme, fixing icons that never change, theme installation of vertex and arc, applets, dropbox, zsh, printer, aureola conky, surfn icons, plank, personal settings of cinnamon, gimp scripts added, dropbox fix, keyboard fix for music, ...

Check out the movies by clicking here

<a target="_blank" href="https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB">
<img style="max-width:100%;" src="http://i.imgur.com/UMpseyy.png">
</a>



# Resources


**Sardi icons**

http://erikdubois.be/category/sardi-icons/

https://sourceforge.net/projects/sardi/files/

**Surfn icons**

https://github.com/erikdubois/Surfn

**Aureola conky**
	
http://erikdubois.be/category/linux/aureola/

https://github.com/erikdubois/Aureola

**Arc Colora**

http://erikdubois.be/category/themes/arc-based-themes/	

https://github.com/erikdubois/Arc-Theme-Colora

**Mint-Y Colora**

https://github.com/erikdubois/Mint-Y-Colora-Theme

https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection

**Plank and 100+ Plank Themes**

http://erikdubois.be/category/linux/plank/

https://github.com/erikdubois/Plank-Themes.



# F  A  Q
--------------------

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.
------------------------------------



