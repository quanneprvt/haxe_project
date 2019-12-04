package enemy;

import object.ObjectMgr;
import enemy.Enemy;

class EnemyMgr extends ObjectMgr
{
    //State Define
	private static inline var INIT = 0;
	private static inline var NORMAL = 1;
	//
    private var isFirstInit:Bool = false;
    private var mEnemyArr:Array<Enemy> = [];
    private var mState:Int;

    public function new():Void
	{
        super();
		// super.create();
		//
	}

    public function Init():Void
	{
		_SetState(INIT);
	}

	public function Start():Void
	{
		_SetState(NORMAL);
	}

    override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		switch (mState)
		{
			case INIT: {}
			case NORMAL:
			{

			}
		}
		// js.Browser.console.log("updating");
	}

    //PRIVATE FUNCTION
    private function _SetState(s:Int):Void 
    {
        mState = s;
        switch (s)
		{
			case INIT:
			{
                if (!isFirstInit)
                {
                    isFirstInit = true;
                    _MakeObjectArr(mEnemyArr, Enemy, 15);
                    //
                    for (i in 0...15) add(mEnemyArr[i]);
                }
                _InitObjectArr(mEnemyArr);
				Start();
			}

			case NORMAL: 
            {
                _StartObjectArr(mEnemyArr);
            }
		}
    }
}