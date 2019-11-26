package;

import flixel.FlxState;
import Player;

class PlayState extends FlxState
{
	private var mPlayer:Player;
	//
	override public function create():Void
	{
		super.create();
		mPlayer = new Player();
		//
		add(mPlayer);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
