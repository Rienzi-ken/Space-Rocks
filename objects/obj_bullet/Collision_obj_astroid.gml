/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 58F81161
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 214F03FA
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1CBBDDB5
	/// @DnDParent : 214F03FA
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 634EEE2E
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 27287508
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 14455FC4
	/// @DnDParent : 27287508
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45AD28CA
	/// @DnDParent : 27287508
	/// @DnDArgument : "var" " sprite_index "
	/// @DnDArgument : "value" "spr_astroid_large "
	if( sprite_index  == spr_astroid_large )
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3133071D
		/// @DnDParent : 45AD28CA
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 26CBBE25
			/// @DnDParent : 3133071D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid "
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_astroid"
			/// @DnDSaveInfo : "objectid" "obj_astroid"
			var newAstroid  = instance_create_layer(x + 0, y + 0, "Instances", obj_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17A47E25
			/// @DnDParent : 3133071D
			/// @DnDArgument : "expr" "spr_astroid_medium "
			/// @DnDArgument : "var" "newAstroid.sprite_index "
			newAstroid.sprite_index  = spr_astroid_medium ;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48BFFCF6
	/// @DnDParent : 27287508
	/// @DnDArgument : "var" " sprite_index "
	/// @DnDArgument : "value" "spr_astroid_medium"
	if( sprite_index  == spr_astroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 553F2A74
		/// @DnDParent : 48BFFCF6
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 43AE460A
			/// @DnDParent : 553F2A74
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid "
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_astroid"
			/// @DnDSaveInfo : "objectid" "obj_astroid"
			var newAstroid  = instance_create_layer(x + 0, y + 0, "Instances", obj_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F97C295
			/// @DnDParent : 553F2A74
			/// @DnDArgument : "expr" "spr_astroid_small  "
			/// @DnDArgument : "var" "newAstroid.sprite_index "
			newAstroid.sprite_index  = spr_astroid_small  ;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 37E543DF
	/// @DnDParent : 27287508
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 449CECD2
		/// @DnDParent : 37E543DF
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}