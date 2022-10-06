INCLUDE Scene1
INCLUDE Scene2
INCLUDE Scene3
INCLUDE Scene4

The sound of my alarm beeping woke me up from my dream, it was the start of a torturous Monday. I have two classes today, one from 10:40-11:55 and another from 4:00-5:05.
->MainLoop

VAR Scene = 0
VAR Time = 9
VAR Happiness = 0
VAR PlayedGame = false
VAR DoneHomework = false
VAR HomeworkDue = false
VAR TakenNap = false


=== MainLoop ===
~ Scene = RANDOM(1, 4)

{ 
- ! Scene_1 && Scene <= 1 :
    -> Scene_1
- ! Scene_2 && Scene <= 2 :
    -> Scene_2
- ! Scene_3 && Scene <= 3 :
    -> Scene_3
- ! Scene_4 && Scene <= 4 :
    -> Scene_4    
}

{ Scene_1 && Scene_2 && Scene_3 && Scene_4 :
    -> Conclusion
- else:
    -> MainLoop
}



=== Conclusion == 
It's {Time >  12: {Time - 12} pm| {Time} am} right now.
{
- Time >= 23:
I should go to sleep now so I can go to my class tomorrow.
- Scene_1 and Scene_2 and Scene_3 and Scene_4:
There's nothing else to do, mind aswell head to bed.
}
    -> END
