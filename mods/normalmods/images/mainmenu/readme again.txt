In case you want the "mainmenu" assets to go to the right side and not to the left side, just select one of the .XML files of the "mainmenu" assets and modify them, for this I will give you an example:

<SubTexture name="story_mode basic0000" x="4" y="133" width="615" height="122" frameX="290" frameY="0" frameWidth="617" frameHeight="124"/>

see that code, (by the way there are many of them) if you want to pass this to the right side... write the following in the text "frameX" in it there is a = with some numbers, to pass it to the right side just put it at the beginning of the number the sign (-) example:

frameX="-290"

that way now it will pass to the right :)

do the same with all the codes, they should be something like this:

<SubTexture name="story_mode basic0000" x="1377" y="4" width="615" height="122" pivotX="8.4" pivotY="9.8" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0001" x="1377" y="4" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0002" x="1377" y="4" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0003" x="4" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0004" x="4" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0005" x="4" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0006" x="619" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0007" x="619" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode basic0008" x="619" y="133" width="615" height="122" frameX="-290" frameY="0" frameWidth="617" frameHeight="124"/>

<SubTexture name="story_mode white0000" x="1234" y="133" width="796" height="173" pivotX="11.05" pivotY="17.15" frameX="-180" frameY="0" frameWidth="796" frameHeight="181"/>

<SubTexture name="story_mode white0001" x="4" y="306" width="794" height="174" frameX="-180" frameY="0" frameWidth="796" frameHeight="181"/>

<SubTexture name="story_mode white0002" x="798" y="306" width="794" height="181" frameX="-180" frameY="0" frameWidth="796" frameHeight="181"/>

</TextureAtlas>


that way it will now go to the right side, do the same with all the assets of the "mainmenu" thanks for reading :D

mecanic made by: Oxim