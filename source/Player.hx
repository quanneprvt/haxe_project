import flixel.FlxSprite;

class Player extends FlxSprite
{
	public function new():Void
	{
        super();
		// super.create();
        js.Browser.console.log("created");
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}