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
}