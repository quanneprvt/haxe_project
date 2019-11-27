package;

import openfl.Lib;

class GameDefine
{
    //APP
    public static var APP_W                     :Float;
    public static var APP_H                     :Float;

    //ENEMY BOARD
    public static var ENEMY_BOARD_OFFSET_LEFT   :Float;
    public static var ENEMY_BOARD_OFFSET_RIGHT  :Float;
    public static var ENEMY_BOARD_OFFSET_TOP    :Float;
    public static var ENEMY_BOARD_OFFSET_DOWN   :Float;
    public static var ENEMY_BOARD_WIDTH         :Float;
    public static var ENEMY_BOARD_HEIGHT        :Float;

    //PLAYER
    public static var PLAYER_SPEED              :Float;

    public function new():Void
	{
        //APP
        APP_W = Lib.current.stage.width;
        APP_H = Lib.current.stage.height;

        //ENEMY BOARD
        ENEMY_BOARD_OFFSET_LEFT       = 150;
        ENEMY_BOARD_OFFSET_RIGHT      = 150;
        ENEMY_BOARD_OFFSET_TOP        = 150;
        ENEMY_BOARD_OFFSET_DOWN       = 300;
        ENEMY_BOARD_WIDTH             = APP_W - ENEMY_BOARD_OFFSET_LEFT - ENEMY_BOARD_OFFSET_RIGHT;
        ENEMY_BOARD_HEIGHT            = APP_H - ENEMY_BOARD_OFFSET_TOP - ENEMY_BOARD_OFFSET_DOWN;

        //PLAYER
        PLAYER_SPEED = 500;
    }
}