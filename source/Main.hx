package;

import flixel.FlxGame;
import openfl.display.Sprite;
// import Player;

class Main extends Sprite
{
	public static var GameDefine:GameDefine;
	public function new()
	{
		super();
		GameDefine = new GameDefine();
		addChild(new FlxGame(0, 0, PlayState));
		// addChild(Input);
	}
}
