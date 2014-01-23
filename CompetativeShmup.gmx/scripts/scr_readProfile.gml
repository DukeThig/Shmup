
        ini_open("playerProfile.ini"); // Opens ini file for reading.
        
        /*******************************************************
         shipUnlockArray documentation (holds locked/unlocked)
            [0]- Swift
            [1]- Guardian
            [2]- Royal
        *********************************************************/
        shipUnlockArray[0] = ini_read_string("Ship", "Sprint", "Locked");
        shipUnlockArray[1] = ini_read_string("Ship", "Guardian", "Locked");
        shipUnlockArray[2] = ini_read_string("Ship", "Royal", "Locked");
        
        /*******************************************************
         shipExpArray documentation (holds amt of exp per ship)
            [0]- Swift
            [1]- Guardian
            [2]- Royal
        *********************************************************/
        shipExpArray[0] = ini_read_real("ShipExp", "Sprint", 0);
        shipExpArray[1] = ini_read_real("ShipExp", "Guardian", 0);
        shipExpArray[2] = ini_read_real("ShipExp", "Royal", 0);
        
        /*******************************************************
         itemArray documentation (holds locked/unlocked)
            [0]- Warp
            [1]- Slow Time
            [2]- Guard Bomb
        *********************************************************/
        itemArray[0] = ini_read_string("Item", "Warp", "Locked");
        itemArray[1] = ini_read_string("Item", "SlowTime", "Locked");
        itemArray[2] = ini_read_string("Item", "GuardBomb", "Locked");
        
        /*******************************************************
        Singleplayer save game documentation
            gameLoop: keeps track of what loop of the SP game you"re on
            spStageProgress: keeps track of furthest reached stage in
            the current game loop.
        *********************************************************/
        gameLoop = ini_read_real("SingleplayerData", "gameLoop", 1);
        spStageProgress = ini_read_real("SingleplayerData", "stageProgress", 1);
        ini_close();
