
// ===========================================================
//   <><><><><><><><>  INSTRUCTIONS & RULES  <><><><><><><><>
//  ----------------------------------------------------------
//   [] There are two things you should know:
//   
//     (1) <<Required>>
//         > This means that it is **essential** and must be added.
//         > If ignored, the script may not work correctly.
//   
//     (2) <<Optional>>
//         > This is **not mandatory**.
//         > You may choose to use it or leave it out.
// 		
//     (/) note!
// 	   > First of all, you must provide an image of the dance in ".png" format in the "materials/actmod/cumact" directory, and the dimensions of the image must be "250x250".
//         > The "Custom animation ID name" Must be in English, numbers (and underscores are allowed), and must not already exist, otherwise it will be ignored or registration will fail.
// 
//  ----------------------------------------------------------
//   [] Tips:
//     > Keep your formatting clean.
//     > Use comments like this for future reference.
// ===========================================================


return{
	["test_01__c_c_s_m"] = {   // <<Required>> Custom animation ID name ( Custom animation ID = image name (excluding extension) for Emotes/Dances  ( like: "abcde_d12"-> Good  "abcde_d12.png"-> bad  "abcde d12"-> bad )  )
		Config = {   // <<Required>>
			Anim = "Amod_Fortnite_A1Dance"   // <<Required>>  Name of the (Emote/Dance) animation, It should already be included in the players' animations.
			,Name = "Test 01 +(csm)"   // <<Required>>  Must be in English, numbers and underscores are allowed.
			,class = 1   // <<Optional>>  Select the category number you want it to appear in.  ( -1 means hidden for use in other things, and from 1 to 8 to display in the list )  < Default: 1 >
			-- ,Duration = 25.5   // <<Optional>> Set the time to repeat  < Default: The duration is automatically determined by the animation. >
			-- ,Cycle = 0   // <<Optional>>  Set Cycle when starting for the first time ( min: 0  / max: 1 )   < Default: 0 >
			-- ,Rate = 0.1   // <<Optional>>  animation speed ( min: 0  / max: 1 )   < Default: 1 >
			,Repeat = false   // <<Optional>>  Allow repetition after timeout **This function will be ignored if a table "Custom" is added.**  < Default: false >
			,isNew = true   // <<Optional>>  It appears to be new.  < Default: true >
		}

		,About = {   // <<Optional>>  Do not use any information about AhmedMake400 (if his name or address is used, it will be ignored, as he does not want to be held responsible for any misuse of ActMod).
			Author = ""   // <<Required>>  Write your name or the name of the author of this dance (The name will be updated automatically if SteamID64 is verified.)  < Default: nothing >
			,S64 = ""   // <<Optional>>  If you want, you can enter your SteamID64 so they can access your Steam page.  < Default: nothing >
			,Version = "1"   // <<Optional>>  Write a version for this dance (must be numbers only)  < Default: nothing >
		}
		
		,Camera = {   // <<Optional>>
			Follow = false   // <<Optional>>  Enable the camera to track the body.  < Default: false >
			,Transition = 1.5   // <<Optional>>  Time to move between the default location and the camera location  < Default: 5 >
		}
		
		,Custom = {   // <<Optional>>  Customize to reset animation and sound
			Anim = {   // <<Optional>>  Disable animation with VR   < Default: false >
				Time1 = 6.26667   // <<Optional>>  Duration at first time   < Default: Will be used from Config>Duration >
				-- ,Time2 = 3.7   // <<Optional>>  Duration when repeating   < Default: Will be used from Config>Duration >
				,Cycle = 0   // <<Optional>>  Cycle is set on repeat ( min: 0  / max: 1 )  < Default: 0 >
			}
			,Sound = {   // <<Optional>>  Set the duration of the audio to repeat.
				Time1 = 40.87   // <<Optional>>  Duration at first time   < Default: Will be used from Config>Duration >
				-- ,Time2 = 61.02   // <<Optional>>  Duration when repeating   < Default: Will be used from Config>Duration >
			}
		}
		
		-- ,Movement = {   // <<Optional>>  Allow walking (optional or mandatory)
			-- Type = 1   // <<Required>>  Type of movement ( min: 1  / max: 3 ) ( 1- Forced forward walking  | 2- Forced backward walking  | 3- Controlled forward walking or standing )
			-- ,Speed = 50   // <<Required>>  speed of movement
			-- ,Motion = {   // <<Optional>>  Motion control  <<Movement type 3 required>> 
				-- Static = "idle_suitcase"    // <<Required>>  Change to standing animation
				-- ,Walk = "walk_suitcase"    // <<Required>>  Change to walking animation
			-- }
		-- }
		
		,Coop = {   // <<Optional>>  Allow others to join your emote/dance
			//-- ,Reverse = true   // <<Optional>>  Make the join turn 180 degrees for direction  < Default: false >
			Sync = true   // <<Optional>>  Make other animations in sync with you.  < Default: false >
			-- YourAnim = "amod_fortnite_a1dance"    // <<Optional>>  Replace your animation   < Default: Will not be replaced >
			-- ,OtherAnim = "amod_fortnite_a1dance"   // <<Optional>>  Replace other player's animation   < Default: Uses basic(in Config>Anim) >
			-- ,ReplaySelf = true   // <<Optional>>  Replay animation for you   < Default: false >
			-- ,MaxPlayers = 2   // <<Optional>>  Allow a certain number ( 0 = Unlimited )  < Default: 0 >
			,MaxDist = 400   // <<Optional>>  Adding extra space beyond the allowed space  < Default: nil >
		}
		
		,Sounds = {   // <<Optional>>
			Start = {   // <<Required>>  Sound on first start (used on repeat if "Repeat" is not set)
				Sound = "actmod/AB/loop_music02.mp3"   // <<Required>>  Sound start delay time
				,Delay = 0   // <<Optional>>  Sound start delay time  < Default: 0 >
			}
			-- ,StartExtra = {   // <<Optional>>  Only used when starting for the first time.
				-- Sound = "music/hl2_song20_submix4.mp3"   // <<Required>>  Sound start delay time
				-- ,Delay = 0.7   // <<Optional>>  Sound start delay time  < Default: 0 >
			-- }
			,Repeat = {   // <<Optional>>  Only used when repeated.
				Sound = "actmod/AB/loop_music02.mp3"   // <<Required>>  Sound start delay time
				,Delay = 0   // <<Optional>>  Sound start delay time  < Default: 0 >
			}
		}
		
		,Models = {   // <<Optional>> Must be arranged in numbers, maximum 4 models allowed
			[1] = {   // Start from 1 to 4 (depending on the number of models you want to add)
				Model = "models/props_interiors/pot02a.mdl"   // <<Required>>  Model path
				,Bone = "ValveBiped.Bip01_Head1"  // <<Required>>  Model will track it with the bone name of the player.
				,Vector = {0,7,-7}   // <<Optional>>  "( number Forward , number Right , number Up )"  < Default: {0,0,0} >
				,Angle = {180,90,0}   // <<Optional>>  "( number pitch , number yaw , number roll )"  < Default: {0,0,0} >
				,Material = "phoenix_storms/wood"   // <<Optional>>  Add Material  < Default: "" >
				,Size = 1.2   // <<Optional>>  Resize Model  < Default: 1 >
			}
		}
	}
	
	,["test_01__c_s_m"] = {
		Config = {
			Anim = "amod_fortnite_a1dance"
			,Name = "Test 01 +(ccsm)"
			,class = 1
			,isNew = true
		}
		,About = {
			Author = "[AhmedMake400]"
			,S64 = ""
			,Version = "11.201"
		}
		,Camera = {
			Follow = false
			,Transition = 1.5
		}
		,Custom = {
			Anim = {
				Time1 = 6.26667
				,Cycle = 0
			}
			,Sound = {
				Time1 = 40.87
			}
		}
		,Sounds = {
			Start = {
				Sound = "actmod/AB/loop_music02.mp3"
				,Delay = 0
			}
		}
		,Models = {
			[1] = {
				Model = "models/props_interiors/pot02a.mdl"
				,Bone = "ValveBiped.Bip01_Head1"
				,Vector = {0,7,-7}
				,Angle = {180,90,0}
				,Material = "phoenix_storms/wood"
				,Size = 1.2
			}
		}
	}
	
	,["test_01__c_s"] = {
		Config = {
			Anim = "amod_fortnite_a1dance"
			,Name = "Test 01 +(cs)"
			,class = 1
			,isNew = true
		}
		,Camera = {
			Follow = false
			,Transition = 1.5
		}
		,Custom = {
			Anim = {
				Time1 = 6.26667
				,Cycle = 0
			}
			,Sound = {
				Time1 = 40.87
			}
		}
		,Sounds = {
			Start = {
				Sound = "actmod/AB/loop_music02.mp3"
				,Delay = 0
			}
		}
	}
	
	
	,["test_02__c_m_c_s_m"] = {
		Config = {
			Anim = "amod_mixamo_gesture_4"
			,Name = "Test 02 +(cmcsm)"
			,class = 3
			,isNew = true
		}
		,About = {
			Author = "Ahmedg00"
			,S64 = "076561199185837385"
			,Version = 101.43
		}
		,Camera = {
			Follow = false
			,Transition = 1.5
		}
		,Custom = {
			Sound = {
				Time1 = 68.602
				,Time2 = 68.602 - 7.641
			}
		}
		,Movement = {
			Type = 3
			,Speed = 90
			,Motion = {
				Static = "amod_mixamo_idle_3"
				,Walk = "amod_mixamo_run_4_forward"
			}
		}
		,Coop = {
			Sync = true
			,MaxDist = 400
		}
		,Sounds = {
			Start = {
				Sound = "actmod/AB/MusicDance_01_a.mp3"
				,Delay = 0
			}
			,StartExtra = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 7.641
			}
			,Repeat = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 0
			}
		}
		,Models = {
			[1] = {
				Model = "models/props_borealis/door_wheel001a.mdl"
				,Bone = "ValveBiped.Bip01_R_Hand"
				,Vector = {1.5,1,0}
				,Angle = {0,0,90}
				,Material = "phoenix_storms/wood"
				,Size = 0.7
			}
			,[2] = {
				Model = "models/props_junk/wood_crate002a.mdl"
				,Bone = "ValveBiped.Bip01_Spine2"
				,Vector = {0,3,5}
				,Angle = {90,0,90}
				,Material = "models/XQM/LightLinesRed_tool"
				,Size = 0.17
			}
		}
	}
	
	,["test_02__c_m_s_m"] = {
		Config = {
			Anim = "amod_mixamo_gesture_4"
			,Name = "Test 02 +(cmsm)"
			,class = 3
			,isNew = true
		}
		,About = {
			Author = "Ahmed Make 400"
			,Version = 1.5
		}
		,Camera = {
			Follow = true
			,Transition = "1.5"
		}
		,Custom = {
			Sound = {
				Time1 = 68.602
				,Time2 = 68.602 - 7.641
			}
		}
		,Movement = {
			Type = 3
			,Speed = 90
			,Motion = {
				Static = "amod_mixamo_idle_3"
				,Walk = "amod_mixamo_run_4_forward"
			}
		}
		,Sounds = {
			Start = {
				Sound = "actmod/AB/MusicDance_01_a.mp3"
				,Delay = 0
			}
			,StartExtra = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 7.641
			}
			,Repeat = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 0
			}
		}
		,Models = {
			[1] = {
				Model = "models/props_borealis/door_wheel001a.mdl"
				,Bone = "ValveBiped.Bip01_R_Hand"
				,Vector = {1.5,1,0}
				,Angle = {0,0,90}
				,Material = "phoenix_storms/wood"
				,Size = 0.7
			}
			,[2] = {
				Model = "models/props_junk/wood_crate002a.mdl"
				,Bone = "ValveBiped.Bip01_Spine2"
				,Vector = {0,3,5}
				,Angle = {90,0,90}
				,Material = "models/XQM/LightLinesRed_tool"
				,Size = 0.17
			}
		}
	}
	
	,["test_02__c_s_m"] = {
		Config = {
			Anim = "amod_mixamo_gesture_4"
			,Name = "Test 02 +(csm)"
			,class = 3
			,isNew = true
		}
		,Camera = {
			Follow = true
			,Transition = 1.5
		}
		,Custom = {
			Sound = {
				Time1 = 68.602
				,Time2 = 68.602 - 7.641
			}
		}
		,Sounds = {
			Start = {
				Sound = "actmod/AB/MusicDance_01_a.mp3"
				,Delay = 0
			}
			,StartExtra = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 7.641
			}
			,Repeat = {
				Sound = "actmod/AB/MusicDance_01_b.mp3"
				,Delay = 0
			}
		}
		,Models = {
			[1] = {
				Model = "models/props_borealis/door_wheel001a.mdl"
				,Bone = "ValveBiped.Bip01_R_Hand"
				,Vector = {1.5,1,0}
				,Angle = {0,0,90}
				,Material = "phoenix_storms/wood"
				,Size = 0.7
			}
			,[2] = {
				Model = "models/props_junk/wood_crate002a.mdl"
				,Bone = "ValveBiped.Bip01_Spine2"
				,Vector = {0,3,5}
				,Angle = {90,0,90}
				,Material = "models/XQM/LightLinesRed_tool"
				,Size = 0.17
			}
		}
	}
}