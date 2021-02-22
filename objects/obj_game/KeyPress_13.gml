/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 0C35CC0A
/// @DnDArgument : "expr" "room"
var l0C35CC0A_0 = room;
switch(l0C35CC0A_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 62E01398
	/// @DnDParent : 0C35CC0A
	/// @DnDArgument : "const" "rm_start "
	case rm_start :
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 466B49BF
		/// @DnDParent : 62E01398
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 530D1990
	/// @DnDParent : 0C35CC0A
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 343E8632
		/// @DnDParent : 530D1990
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 07698D45
	/// @DnDParent : 0C35CC0A
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2699BB7D
		/// @DnDParent : 07698D45
		game_restart();
		break;
}