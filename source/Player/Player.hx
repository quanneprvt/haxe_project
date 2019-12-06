package player;

import object.BaseObject;
import flixel.FlxG;
import core.MouseInput;
import core.Utils;

class Player extends BaseObject
{
	//State Define
	private static inline var INIT = 0;
	private static inline var NORMAL = 1;
	//
	private var mDestination:Dynamic = {x: 0, y: 0};
	private var mStartPosition:Dynamic = {x: 0, y: 0};
	private var mIsArrived:Bool = false;
	private var mIsTap:Bool = false;
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
				this._MouseHandler(elapsed);
				this._UpdateSpeed(elapsed);
				this._UpdatePosition(elapsed);
			}
		}
		// js.Browser.console.log("updating");
	}

	//PRIVATE FUNCTION
	private function _MouseHandler(elapsed:Float):Void {
		//Mouse move handler
		if (FlxG.mouse.pressed)
			MouseInput.update(elapsed);
		//Mouse down handler
		if (FlxG.mouse.justPressed)
		{
			if (FlxG.mouse.overlaps(this))
			{
				mStartPosition.x = this.getPosition().x;
				mStartPosition.y = this.getPosition().y;
				mIsTap = true;
				mIsArrived = true;
			}
			else 
			{
				mDestination.x = FlxG.mouse.getPosition().x - 0.5*this.width;
				mDestination.y = FlxG.mouse.getPosition().y - 0.5*this.height;
				mIsArrived = false;
				mIsTap = false;
			}
		}
		//Mouse up handler
		if (FlxG.mouse.justReleased)
			mIsTap = false;
	}

	private function _UpdateSpeed(elapsed:Float):Void {
		var angle:Float = Utils.GetAngle(this.getPosition(), mDestination);
		mSpeed.x = GameDefine.PLAYER_SPEED*Math.cos(angle*Math.PI/180);
		mSpeed.y = GameDefine.PLAYER_SPEED*Math.sin(angle*Math.PI/180);
	}

	private function _UpdatePosition(elapsed:Float):Void {
		var x:Float;
		var y:Float;
		//
		if (mSpeed.x > 0)
           x = Math.min(this.getPosition().x + mSpeed.x*elapsed, mDestination.x);
        else
           x = Math.max(this.getPosition().x + mSpeed.x*elapsed, mDestination.x);
        
        if (mSpeed.y > 0)
            y = Math.min(this.getPosition().y + mSpeed.y*elapsed, mDestination.y);
        else
            y = Math.max(this.getPosition().y + mSpeed.y*elapsed, mDestination.y);

		if (this.getPosition().x == mDestination.x 
			&& this.getPosition().y == mDestination.y)
		{
			mIsArrived = true;
		}

		if (mIsTap)
		{
			this.setPosition(mStartPosition.x + MouseInput.dX, mStartPosition.y + MouseInput.dY);
		}
		else 
			if (!mIsArrived)
				this.setPosition(x, y);
		// js.Browser.console.log(elapsed);
	}

	private function _SetState(s:Int):Void
	{
		mState = s;
		switch (s)
		{
			case INIT:
			{
				// js.Browser.console.log(AssetPaths.mc__idle__png);
				this.loadGraphic("assets/images/Player/mc_idle.png", true, 512, 510);
				//
				this.animation.add("idle", [0,1,2,3,4,5,6,7,8], 5, true);
				this.animation.play("idle");
				//
				this.scale.set(0.25, 0.25);
				this.updateHitbox();
				//
				Start();
			}

			case NORMAL: {}
		}
	}
}