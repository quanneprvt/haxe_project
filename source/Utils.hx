package;

class Utils
{
    public static function GetDistance(p1:Dynamic, p2:Dynamic):Float 
    {
        var dx:Float = p2.x - p1.x;
        var dy:Float = p2.y - p1.y;
        var dz:Float = p2.z - p1.z;
		return Math.sqrt(dx*dx + dy*dy + dz*dz);
    }

    public static function Collision2Rect(r1:Dynamic, r2:Dynamic):Bool {
        if (r1.x + r1.width < r2.x ||
            r1.y + r1.height < r2.y ||
            r2.x + r2.width < r1.x ||
            r2.y + r2.height < r1.y)
        {
            return false;
        }

        return true;
    }
}