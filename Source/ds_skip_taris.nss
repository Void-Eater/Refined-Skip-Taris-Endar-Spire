string SOLDIER_WEAPON = "g_w_blstrrfl001";
string SOLDIER_ITEM01 = "g_i_adrnaline003";
string SOLDIER_ITEM02 = "";

string SCOUT_WEAPON = "g_w_blstrpstl001";
string SCOUT_ITEM01 = "g_i_adrnaline002";
string SCOUT_ITEM02 = "g_i_implant101";

string SCOUNDREL_WEAPON = "g_w_blstrpstl001";
string SCOUNDREL_ITEM01 = "g_i_secspike01";
string SCOUNDREL_ITEM02 = "g_i_progspike01";

string STEALTH_UNIT = "g_i_belt010";

void GiveClassEquipment();
void GiveClassEquipment()
{
    object oLocker = GetFirstPC();
    int nClass = GetClassByPosition(1,GetFirstPC());
    if(nClass == CLASS_TYPE_SCOUNDREL)
    {
        CreateItemOnObject(SCOUNDREL_WEAPON,oLocker);
        CreateItemOnObject(SCOUNDREL_ITEM01,oLocker);
        CreateItemOnObject(SCOUNDREL_ITEM02,oLocker);
    }
    else if(nClass == CLASS_TYPE_SCOUT)
    {
        CreateItemOnObject(SCOUT_WEAPON,oLocker);
        CreateItemOnObject(SCOUT_ITEM01,oLocker);
        CreateItemOnObject(SCOUT_ITEM02,oLocker);
    }
    else if(nClass == CLASS_TYPE_SOLDIER)
    {
        CreateItemOnObject(SOLDIER_WEAPON,oLocker);
        CreateItemOnObject(SOLDIER_ITEM01,oLocker);
        CreateItemOnObject(SOLDIER_ITEM02,oLocker);
    }

    if(GetHasSkill(SKILL_STEALTH,GetFirstPC()))
    {
        CreateItemOnObject(STEALTH_UNIT,oLocker);
    }
}

void EquipTheBestWeapon(object oObject);

void EquipTheBestWeapon(object oObject)
{
if (GetAbilityScore(oObject, ABILITY_STRENGTH) < GetAbilityScore(oObject, ABILITY_DEXTERITY))
{
 AssignCommand(oObject, ActionEquipMostDamagingRanged());
}
else
{
 AssignCommand(oObject, ActionEquipMostDamagingMelee());
}
}


void main()
{
//Endar Spire's items start, how will I do Taris items if Spire's ones took 5 minutes of my life???
	GiveClassEquipment();

//	Ah na nah! You will get Taris items that includes items from Endar Spire!
//	CreateItemOnObject("g_a_clothes01", GetFirstPC(), 2);
//	CreateItemOnObject("g_i_adrnaline001", GetFirstPC());
//	CreateItemOnObject("g_i_adrnaline002", GetFirstPC());
//	CreateItemOnObject("g_i_cmbtshot001", GetFirstPC());
//	CreateItemOnObject("g_i_drdrepeqp001", GetFirstPC(), 4);
//	CreateItemOnObject("g_i_medeqpmnt01", GetFirstPC(), 8);
//	CreateItemOnObject("g_i_medeqpmnt02", GetFirstPC());
//	CreateItemOnObject("g_i_upgrade007", GetFirstPC());
//	CreateItemOnObject("g_w_blstrpstl001", GetFirstPC(), 3);
//	CreateItemOnObject("g_w_fraggren01", GetFirstPC(), 6);
//	CreateItemOnObject("g_w_ionblstr01", GetFirstPC());
//	CreateItemOnObject("g_w_lngswrd01", GetFirstPC());
//	CreateItemOnObject("g_w_swortswrd01", GetFirstPC());
//	CreateItemOnObject("g_w_vbroshort01", GetFirstPC(), 2);
//	CreateItemOnObject("g_w_vbroshort09", GetFirstPC());
//	CreateItemOnObject("k_computer_spike", GetFirstPC());
//	CreateItemOnObject("k_repair_part", GetFirstPC(), 8);
//	CreateItemOnObject("g_a_class4001", GetFirstPC());
	
//Endar Spire globals, that was easy...
	SetGlobalNumber( "END_CARTH_DLG", 6 );
	SetGlobalNumber( "END_ROOM3_DEAD", 2 );
	SetGlobalNumber( "END_ROOM5_DEAD", 3 );
	SetGlobalNumber( "END_ROOM7_DEAD", 2 );
	SetGlobalNumber( "END_ROOM8_DEAD", 2 );
	SetGlobalNumber( "END_SITH_DEAD", 5 );
	SetGlobalNumber( "END_TRASK_DLG", 32 );
//That is amount gained for both Endar Spire & Taris
	GiveXPToCreature(GetFirstPC(), 35420); //Experience... I gave you 6 extra points!
		
	//Taris booleans start here
	RemoveAvailableNPC(0); //Removes Trask from your party, either script will not work
	
	GiveGoldToCreature(GetFirstPC(), 4784); //Money
	
	AddAvailableNPCByTemplate(0, "p_bastilla");
	AddAvailableNPCByTemplate(1, "p_cand");
	AddAvailableNPCByTemplate(2, "p_carth");
	AddAvailableNPCByTemplate(6, "p_mission");
	AddAvailableNPCByTemplate(7, "p_t3m4");
	AddAvailableNPCByTemplate(8, "p_zaalbar");
	
	SetGlobalBoolean( "END_BRIDGE_SEALED", TRUE );
	SetGlobalBoolean( "G_PazzakDeck", TRUE );
	SetGlobalBoolean( "K_AT_EBON_HAWK", TRUE );
	SetGlobalBoolean( "K_TAR_SWOOP_POINT_01", TRUE );
	SetGlobalBoolean( "K_TAR_SWOOP_POINT_02", TRUE );
	SetGlobalBoolean( "K_TAR_SWOOP_POINT_05", TRUE );
	SetGlobalBoolean( "K_TAR_SWOOP_POINT_06", TRUE );
	SetGlobalBoolean( "TAR_BEKBASEOPEN", TRUE );
	SetGlobalBoolean( "TAR_CANDSPAWN", TRUE );
	SetGlobalBoolean( "TAR_DISGUISEXP", TRUE );
	SetGlobalBoolean( "TAR_ESTATEEXPLOSIONS", TRUE );
	SetGlobalBoolean( "TAR_FIRST_SWOOP_USE", TRUE );
	SetGlobalBoolean( "TAR_GENDAR_TALK", TRUE );
	SetGlobalBoolean( "TAR_HENDARHELP", TRUE );
	SetGlobalBoolean( "TAR_HOMEINTRUDER", TRUE );
	SetGlobalBoolean( "TAR_OUTCAST_ELEV", TRUE );
	SetGlobalBoolean( "TAR_PAPERSSHOWN", TRUE );
	SetGlobalBoolean( "TAR_SITHDROIDSHACKED", TRUE );
	SetGlobalBoolean( "TAR_STARTED", TRUE );
	SetGlobalBoolean( "TAR_VULKARBASE_OPEN", TRUE );
	SetGlobalBoolean( "Tar_BastVulk", TRUE );
	SetGlobalBoolean( "Tar_BenReward", TRUE );
	SetGlobalBoolean( "Tar_Cand_T3", TRUE );
	SetGlobalBoolean( "Tar_DavSlaveInfo", TRUE );
	SetGlobalBoolean( "Tar_DiaBounty", TRUE );
	SetGlobalBoolean( "Tar_DuelOrg", TRUE );
	SetGlobalBoolean( "Tar_DuelOver", TRUE );
	SetGlobalBoolean( "Tar_DuelPrep", TRUE );
	SetGlobalBoolean( "Tar_GadonMission", TRUE );
	SetGlobalBoolean( "Tar_Gadon_Eyes", TRUE );
	SetGlobalBoolean( "Tar_GerlonTk", TRUE );
	SetGlobalBoolean( "Tar_Gurney_Talk", TRUE );
	SetGlobalBoolean( "Tar_HawkSec", TRUE );
	SetGlobalBoolean( "Tar_HudrowFree", TRUE );
	SetGlobalBoolean( "Tar_IceTk", TRUE );
	SetGlobalBoolean( "Tar_JaniceDl1", TRUE );
	SetGlobalBoolean( "Tar_JaniceDl2", TRUE );
	SetGlobalBoolean( "Tar_KeblaDl1", TRUE );
	SetGlobalBoolean( "Tar_KeblaDl2", TRUE );
	SetGlobalBoolean( "Tar_KeblaInv", TRUE );
	SetGlobalBoolean( "Tar_MarlTk", TRUE );
	SetGlobalBoolean( "Tar_NeedUniform", TRUE );
	SetGlobalBoolean( "Tar_SithDroid", TRUE );
	SetGlobalBoolean( "Tar_Sith_XP", TRUE );
	SetGlobalBoolean( "Tar_SwoopDouble", TRUE );
	SetGlobalBoolean( "Tar_SwoopEng", TRUE );
	SetGlobalBoolean( "Tar_SwoopNew", TRUE );
	SetGlobalBoolean( "Tar_SwoopRace", TRUE );
	SetGlobalBoolean( "Tar_T3_Mention", TRUE );
	SetGlobalBoolean( "Tar_TwitchPay", TRUE );
	SetGlobalBoolean( "Tar_ZaxBounty", TRUE );
	SetGlobalBoolean( "Tar_ZaxQuestion", TRUE );
	SetGlobalBoolean( "Tar_out_gate", TRUE );
	SetGlobalBoolean( "tar_durosfree", TRUE );
	SetGlobalBoolean( "tar_upelev", TRUE );
//Taris numerics start here
	SetGlobalNumber( "DUEL_TIMER", 1 );
	SetGlobalNumber( "K_KOTOR_MASTER", 10 );
	SetGlobalNumber( "K_LastPlanet", 10 );
	SetGlobalNumber( "K_SWG_BASTILA", 1 );
	SetGlobalNumber( "K_SWG_CARTH", 5 );
	SetGlobalNumber( "MIN_RACE_GEAR", 6 );
	SetGlobalNumber( "MIN_TIME_MIL", 3 );
	SetGlobalNumber( "MIN_TIME_SEC", 5 );
	SetGlobalNumber( "Mis_MissionTalk", 3 );
	SetGlobalNumber( "TAR_ARENANPC1", 2 );
	SetGlobalNumber( "TAR_ARENANPCS", 3 );
	SetGlobalNumber( "TAR_CANDMEET", 2 );
	SetGlobalNumber( "TAR_DAVGAS", 1 );
	SetGlobalNumber( "TAR_GHOULSPAWNS", 7 );
	SetGlobalNumber( "TAR_HENDAR", 99 );
	SetGlobalNumber( "TAR_OUT_DISEASE", 99 );
	SetGlobalNumber( "TAR_SITHARMORPLOT", 2 );
	SetGlobalNumber( "TAR_SWOOP_ACCEL", 11 );
	SetGlobalNumber( "TAR_SWOOP_MSEC", 78 );
	SetGlobalNumber( "TAR_SWOOP_MSEC_BEAT", 53 );
	SetGlobalNumber( "TAR_SWOOP_SEC", 26 );
	SetGlobalNumber( "TAR_SWOOP_SEC_BEAT", 26 );
	SetGlobalNumber( "Tar_BenBount", 99 );
	SetGlobalNumber( "Tar_BenChall", 20 );
	SetGlobalNumber( "Tar_BullMerc", 2 );
	SetGlobalNumber( "Tar_Canderous", 2 );
	SetGlobalNumber( "Tar_Carth", 2 );
	SetGlobalNumber( "Tar_Dia", 98 );
	SetGlobalNumber( "Tar_Duel", 7 );
	SetGlobalNumber( "Tar_DuelAnTk", 2 );
	SetGlobalNumber( "Tar_Gana", 30 );
	SetGlobalNumber( "Tar_Holdan", 20 );
	SetGlobalNumber( "Tar_JaniceDro", 30 );
	SetGlobalNumber( "Tar_LargoBoun", 20 );
	SetGlobalNumber( "Tar_LastHolo", 6 );
	SetGlobalNumber( "Tar_Matrik", 99 );
	SetGlobalNumber( "Tar_MissLook", 1 );
	SetGlobalNumber( "Tar_Mission", 30 );
	SetGlobalNumber( "Tar_RakSerum", 1 );
	SetGlobalNumber( "Tar_Rukil", 40 );
	SetGlobalNumber( "Tar_Sarna", 99 );
	SetGlobalNumber( "Tar_SelBoun", 99 );
	SetGlobalNumber( "Tar_StrongBox", 3 );
	SetGlobalNumber( "Tar_SwoopRaceCounter", 2 );
	SetGlobalNumber( "Tar_SwoopStatus", 2 );
	SetGlobalNumber( "Tar_VulkarElevator", 1 );
	SetGlobalNumber( "Tar_YunGend", 99 );
	SetGlobalNumber( "Tar_ZelkaRm", 99 );
	SetGlobalNumber( "Tar_ZelkaStor", 3 );
	SetGlobalNumber( "Tar_ZelkaTk", 3 );
	SetGlobalNumber( "ZaalbarTalk", 1 );
	SetGlobalNumber( "tar_droid", 15 );
    
    SetGlobalBoolean( "Min1HP", 0 ); //Prevents the invincibility bug that has been plaguing people's games for ten years
		
	SetGlobalNumber("K_CURRENT_PLANET", 15); //Sets Dantooine as the currnet planet
	SetGlobalBoolean("Tar_Destroyed", 1);
		
	AdjustAlignment(GetFirstPC(), ALIGNMENT_DARK_SIDE, 25); //Actually KSE says that I have 75 LS points, but as I know it, it would be good to do 75-50
	
	AddJournalQuestEntry("tar_bastsearch", 99); //Don't ask me why Taris's quest is here...
	AddJournalQuestEntry("end_attack", 99);
	
//Taris quests, they may be bugged for 0.0000001% from 100, so report me if bugs are founds
//To prevent some bugs I used RemoveJournalQuestEntry to be sure that even if I used wrong IDs it will work
	AddJournalQuestEntry("tar_bastsearch", 99); RemoveJournalQuestEntry("tar_bastsearch");
	AddJournalQuestEntry("k_rapidtransit", 99); RemoveJournalQuestEntry("k_rapidtransit");
	AddJournalQuestEntry("Tar_rancor", 99); RemoveJournalQuestEntry("Tar_rancor");
	AddJournalQuestEntry("tar_bendakbounty", 99); RemoveJournalQuestEntry("tar_bendakbounty");
	AddJournalQuestEntry("tar_diabounty", 98); RemoveJournalQuestEntry("tar_diabounty");
	AddJournalQuestEntry("tar_infectedoutcasts", 98); RemoveJournalQuestEntry("tar_infectedoutcasts");
	AddJournalQuestEntry("tar_vulkarbase", 99); RemoveJournalQuestEntry("tar_vulkarbase");
	AddJournalQuestEntry("tar_largobounty", 99); RemoveJournalQuestEntry("tar_largobounty");
	AddJournalQuestEntry("tar_matrik", 66);	RemoveJournalQuestEntry("tar_matrik");
	AddJournalQuestEntry("tar_rakghoulserum", 20); RemoveJournalQuestEntry("tar_rakghoulserum");
	AddJournalQuestEntry("tar_rukilapprentice", 99); RemoveJournalQuestEntry("tar_rukilapprentice");
	AddJournalQuestEntry("tar_selvenbounty", 99); RemoveJournalQuestEntry("tar_selvenbounty");
	AddJournalQuestEntry("tar_duelring", 99); RemoveJournalQuestEntry("tar_duelring");
	AddJournalQuestEntry("tar_promisedland", 30);	RemoveJournalQuestEntry("tar_promisedland");
	AddJournalQuestEntry("tar_buydroid", 99);	RemoveJournalQuestEntry("tar_buydroid");
	AddJournalQuestEntry("tar_escape", 99);
	AddJournalQuestEntry("tar_planetinfo", 99);
		
	StartNewModule("STUNT_06", "", "05", "", "", "", "", ""); //That is the best location that can be found be me...
	
//Oh my!!! Keep me!!! Items! Oh no! There are hundreds of items!

CreateItemOnObject("g_a_class4009", GetFirstPC());
CreateItemOnObject("g_a_class5001", GetFirstPC(), 3);
CreateItemOnObject("g_a_class5010", GetFirstPC());
CreateItemOnObject("g_a_class6001", GetFirstPC(), 3);
CreateItemOnObject("g_a_class6007", GetFirstPC());
CreateItemOnObject("g_a_class7001", GetFirstPC());
CreateItemOnObject("g_a_clothes01", GetFirstPC(), 3);
CreateItemOnObject("g_i_adrnaline001", GetFirstPC(), 4);
CreateItemOnObject("g_i_adrnaline002", GetFirstPC(), 3);
CreateItemOnObject("g_i_adrnaline003", GetFirstPC(), 3);
CreateItemOnObject("g_i_belt003", GetFirstPC(), 2);
CreateItemOnObject("g_i_belt006", GetFirstPC());
CreateItemOnObject("g_i_belt010", GetFirstPC(), 2);
CreateItemOnObject("g_i_cmbtshot002", GetFirstPC(), 2);
CreateItemOnObject("g_i_drdltplat001", GetFirstPC(), 2);
CreateItemOnObject("g_i_drdrepeqp001", GetFirstPC(), 9);
CreateItemOnObject("g_i_drdrepeqp002", GetFirstPC(), 3);
CreateItemOnObject("g_i_drdshld002", GetFirstPC());
CreateItemOnObject("g_i_drdutldev003", GetFirstPC(), 2);
CreateItemOnObject("g_i_drdutldev001", GetFirstPC());
CreateItemOnObject("g_i_drdutldev006", GetFirstPC());
CreateItemOnObject("g_i_frarmbnds01", GetFirstPC(), 7);
CreateItemOnObject("g_i_frarmbnds03", GetFirstPC());
CreateItemOnObject("g_i_gauntlet01", GetFirstPC());
CreateItemOnObject("g_i_implant101", GetFirstPC());
CreateItemOnObject("g_i_implant202", GetFirstPC());
CreateItemOnObject("g_i_mask08", GetFirstPC());
CreateItemOnObject("g_i_mask10", GetFirstPC());
CreateItemOnObject("g_i_mask11", GetFirstPC());
CreateItemOnObject("g_i_medeqpmnt01", GetFirstPC(), 6);
CreateItemOnObject("g_i_medeqpmnt02", GetFirstPC(), 5);
CreateItemOnObject("g_i_medeqpmnt03", GetFirstPC(), 3);
CreateItemOnObject("g_i_pazdeck", GetFirstPC());
CreateItemOnObject("g_i_pazsidebd001", GetFirstPC());
CreateItemOnObject("g_i_secspike01", GetFirstPC(), 4);
CreateItemOnObject("g_i_trapkit004", GetFirstPC(), 6);
CreateItemOnObject("g_i_trapkit005", GetFirstPC(), 2);
CreateItemOnObject("g_i_trapkit010", GetFirstPC(), 4);
CreateItemOnObject("g_i_upgrade001", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade002", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade003", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade004", GetFirstPC(), 3);
CreateItemOnObject("g_i_upgrade005", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade006", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade007", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade008", GetFirstPC(), 2);
CreateItemOnObject("g_i_upgrade009", GetFirstPC(), 2);
CreateItemOnObject("g_w_blstrpstl001", GetFirstPC(), 3);
CreateItemOnObject("g_w_blstrpstl010", GetFirstPC());
CreateItemOnObject("g_w_blstrrfl001", GetFirstPC());
CreateItemOnObject("g_w_dsrptpstl001", GetFirstPC());
CreateItemOnObject("g_w_dsrptrfl001", GetFirstPC(), 2);
CreateItemOnObject("g_w_firegren001", GetFirstPC(), 5);
CreateItemOnObject("g_w_fraggren01", GetFirstPC(), 24);
CreateItemOnObject("g_w_blstrpstl003", GetFirstPC());
CreateItemOnObject("g_w_blstrpstl005", GetFirstPC());
CreateItemOnObject("g_w_hvrptbltr002", GetFirstPC());
CreateItemOnObject("g_w_hvrptbltr01", GetFirstPC(), 6);
CreateItemOnObject("g_w_ionblstr01", GetFirstPC(), 2);
CreateItemOnObject("g_w_iongren01", GetFirstPC(), 4);
CreateItemOnObject("g_w_ionrfl01", GetFirstPC(), 2);
CreateItemOnObject("g_w_qtrstaff01", GetFirstPC());
CreateItemOnObject("g_w_sonicgren01", GetFirstPC(), 12);
CreateItemOnObject("g_w_stunbaton01", GetFirstPC());
CreateItemOnObject("g_w_stungren01", GetFirstPC(), 19);
CreateItemOnObject("g_w_vbroshort08", GetFirstPC());
CreateItemOnObject("g_w_vbroshort09", GetFirstPC());
CreateItemOnObject("g_w_vbroswrd01", GetFirstPC());
CreateItemOnObject("k_computer_spike", GetFirstPC(), 6);
CreateItemOnObject("k_repair_parts", GetFirstPC(), 11);
CreateItemOnObject("ptar_shieldcodes", GetFirstPC());
CreateItemOnObject("ptar_sithpapers", GetFirstPC());
CreateItemOnObject("tar03_datapad", GetFirstPC());
CreateItemOnObject("tar03_bekplan", GetFirstPC());
CreateItemOnObject("tar05_synthodor", GetFirstPC(), 2);
CreateItemOnObject("tar08_comppass", GetFirstPC());
CreateItemOnObject("tar08_davikmask", GetFirstPC());
CreateItemOnObject("tar09_techlog", GetFirstPC());
CreateItemOnObject("tar10_garagekey", GetFirstPC());
CreateItemOnObject("tar10_mechid", GetFirstPC(), 2);
CreateItemOnObject("tar_calojournal", GetFirstPC());
CreateItemOnObject("g_i_implant102", GetFirstPC());
CreateItemOnObject("g_i_mask02", GetFirstPC());
CreateItemOnObject("g_w_bowcstr003", GetFirstPC());
CreateItemOnObject("g_w_hvyblstr02", GetFirstPC());
CreateItemOnObject("tar03_brejikband", GetFirstPC());
CreateItemOnObject("tar03_brejikbelt", GetFirstPC());
CreateItemOnObject("tar03_brejikglove", GetFirstPC());
CreateItemOnObject("g_w_dblsbr006", GetFirstPC());
CreateItemOnObject("g_w_dblswrd002", GetFirstPC());
//Huh! That's done!!!
	EquipTheBestWeapon(GetFirstPC());
}
