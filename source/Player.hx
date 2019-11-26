import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite
{
	private var mDestination:Dynamic = {x: 0, y: 0};
	private var mStartPosition:Dynamic = {x: 0, y: 0};
	private var mIsArrived:Bool = false;

	public function new():Void
	{
        super();
		// super.create();
        // js.Browser.console.log("created");
		this.loadGraphic(AssetPaths.idle__png, true, 512, 510);
		this.animation.add("idle", [0,1,2,3,4,5,6,7,8], 5, true);
		this.animation.play("idle");
		this.scale.set(0.25, 0.25);
		this.updateHitbox();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (FlxG.mouse.overlaps(this))
		{
			if (FlxG.mouse.justPressed)
			{

			}
			if (FlxG.mouse.pressed)
			{
				this.setPosition(FlxG.mouse.getPosition().x - 0.5*this.width,
								FlxG.mouse.getPosition().y - 0.5*this.height);
			}
		}
		// js.Browser.console.log("updating");
	}

	private function _SetState(s):Void {
		
	}
}