# ModuleTimer
an attempt at making myself a timer i can use to remind myself to reposition the meatbag at varied yet recurring intervals. 

the readme is temporarily my braindump docs for myself until im deeper into this project and move docs to a more sane location than the project's readme

### terms

Loop Bar = a bar of Timer Blocks that loops the Blocks inside, one by one, starting leftmost and continuing to the right

Timer Block = a block containing the data for a single timer

### data

Loop Bar needs
- var: name, such as "Studying", "Raiding", "D&D night"
- array, i think?:which timer block children it has (and their order)
- func+UI: start button
- func+UI: stop button

Timer Block needs
- var: name, such as "Read", "Stretch", "Break", "Flesh prison maintenance"
- var: duration (inputted in HH:MM:SS by user, mathed as seconds by program, outputted as HH:MM:SS in UI)
- func: start function that just. starts it. by spawning the timer scene
- boolean var: auto-continue?
  - if true it should automatically start the next timer on timeout
  - if false, on timeout it should make a button that starts the next timer + start showing time since timeout instead of countdown (example: -00:00:09 )

