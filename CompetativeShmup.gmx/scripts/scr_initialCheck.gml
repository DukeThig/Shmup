if (file_exists("playerProfile.ini"))
{
   
}
else
{
     ini_open("playerProfile.ini"); // Opens ini file for writeing.
        
        /*******************************************************
         shipUnlockArray documentation (holds locked/unlocked)
            [0]- Swift
            [1]- Guardian
            [2]- Royal
        *********************************************************/
        ini_write_string("Ship", "Sprint", "Locked");
        ini_write_string("Ship", "Guardian", "Locked");
        ini_write_string("Ship", "Royal", "Locked");
        
        /*******************************************************
         shipExpArray documentation (holds amt of exp per ship)
            [0]- Swift
            [1]- Guardian
            [2]- Royal
        *********************************************************/
        ini_write_real("ShipExp", "Sprint", 0);
        ini_write_real("ShipExp", "Guardian", 0);
        ini_write_real("ShipExp", "Royal", 0);
        
        /*******************************************************
         itemArray documentation (holds locked/unlocked)
            [0]- Warp
            [1]- Slow Time
            [2]- Guard Bomb
        *********************************************************/
        ini_write_string("Item", "Warp", "Locked");
        ini_write_string("Item", "SlowTime", "Locked");
        ini_write_string("Item", "GuardBomb", "Locked");
        
        /*******************************************************
        Singleplayer save game documentation
            gameLoop: keeps track of what loop of the SP game you"re on
            spStageProgress: keeps track of furthest reached stage in
            the current game loop.
        *********************************************************/
        ini_write_real("SingleplayerData", "gameLoop", 1);
        ini_write_real("SingleplayerData", "stageProgress", 1);
        
        show_message ("Initial File Setup Complete!");
        
        ini_close();
}
