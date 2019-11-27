package core;

import flixel.FlxG;

class MouseInput
{
    public static var dX:Float = 0;
    public static var dY:Float = 0;
    private static var mStartPosition:Dynamic = {x: 0, y: 0};
    //
	public static function update(elapsed:Float):Void
	{
        // js.Browser.console.log("updating");
        if (FlxG.mouse.justPressed)
        {
            mStartPosition.x = FlxG.mouse.getPosition().x;
            mStartPosition.y = FlxG.mouse.getPosition().y;
        }
        if (FlxG.mouse.pressed)
        {
            dX = FlxG.mouse.getPosition().x - mStartPosition.x;
            dY = FlxG.mouse.getPosition().y - mStartPosition.y;
        }
	}
}