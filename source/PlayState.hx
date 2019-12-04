package;

import flixel.FlxState;
import player.Player;
import enemy.EnemyMgr;

class PlayState extends FlxState
{
	private var mPlayer:Player;
	private var mEnemyMgr:EnemyMgr;
	//
	override public function create():Void
	{
		super.create();
		mPlayer = new Player();
		mEnemyMgr = new EnemyMgr();
		//
		mPlayer.Init();
		mEnemyMgr.Init();
		//
		add(mEnemyMgr);
		add(mPlayer);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
