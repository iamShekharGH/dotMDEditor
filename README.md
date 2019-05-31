# dotMDEditor

## Description
The idea here is to edit .MD files. This plugin aims to make doing that easier. Its a very bare bones basic version of the plugin now. What this will allow you to do is :~

###    1. **Lists** 
*  **USE**
 Here there are two modes, Normal and Automatic. You can change it in dotmdEditor.vim file.
 In normal mode use command for the next bullet. Simply Type {number}{.}{space} and then text. When you press  command it'll add the next bullet for you.
 In automatic (this is still work in progress) but you can simply press enter and it should work insted of command and o.
 Set g:automaticOrNot 0 for not automatic and 1 for automatic.
*  **COMMAND**
 LocalLeader + o
*  **DESCRIPTION**
This bascally works in Insert mode. Once you start typing bullets it will continue doing it ordered(1. ) or unordered(\* ,- ). Once done you can exit into normal mode and then continue.

###    2. **Italics**
*  **USE**
 Visually selected text can be converted to Italics. 
*  **COMMAND**
LocalLeader + I in visual mode.
* **DESCRIPTION**
While editing a file if you need to make text italics visually select it and while in visual mode press the command.

###    3. **Bold**
* **USE**
 Visually selected text can be converted to Italics. 
* **COMMAND**
 LocalLeader + B in visual mode
* **DESCRIPTION**
While editing a file if you need to make text bold visually select it and while in visual mode press the command.

###    4. **Link**
* **USE**
 Surround text with the md format for link. It is easier if you have link copied before doing this.
* **COMMAND**
 LocalLeader + L in visual mode
* **DESCRIPTION**
What this wud do is put you in a place where you can do Ctrl+v,Cms+v. It'll put your cursor there.

###    5. **Header**
* **USE**
 Make a Line The Heading
* **COMMAND**
 H1,H2,H3,H4
* **DESCRIPTION**
This simply make a line the heading baesed on levels.

###    6. **Images**
* **USE**
 Add the markdown formatting to the file.
 How this wud work is in a new line you write AltText,ImageURL and then press command.
* **COMMAND**
 LocalLeader + i
* **DESCRIPTION**
 It simply adds the markdown formatting to text writen in this format. Once it is in the finger memory it becomes faster along the way.

###    7. **Blockquotes**
* **USE**
 Make a Line have Blockquotes.
* **COMMAND**
 LocalLeader + b
* **DESCRIPTION**
This will simply make a line have blockquotes.

  
