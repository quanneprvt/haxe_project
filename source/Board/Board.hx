package board;

class Board
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

    //PRIVATE FUNCTION
    private function _SetState(s:Int) 
    {
        mState = s;
        switch (s)
        {
            case INIT:
            {

            }

            case NORMAL:
            {
                
            }
        }
    }
}