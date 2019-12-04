package enemy;

import object.BaseObject;
class Enemy extends BaseObject
{
	//State Define
	private static inline var INIT = 0;
	private static inline var NORMAL = 1;
	//

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
        switch (mState)
		{
			case INIT:
			{
				this.loadGraphic("assets/images/Enemy/enemy_1_idle.png", true, 512, 510);
				this.animation.add("idle", [0,1,2,3,4,5,6,7,8], 5, true);
				this.animation.play("idle");
				this.scale.set(0.1, 0.1);
				this.updateHitbox();
				Start();
			}

			case NORMAL: {}
		}
    }
}