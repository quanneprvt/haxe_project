package object;

import flixel.group.FlxGroup;

class ObjectMgr extends FlxGroup
{
    private function _MakeObjectArr<T>(arr, constructor:Class<T>, length:Int):Void
    {
        // js.Browser.console.log(constructor);
        for (i in 0...length)
        {
            // var object = new constructor();
            var object = Type.createInstance(constructor, []);
            arr.push(object);
        }
    }

    private function _InitObjectArr(arr:Array<Dynamic>):Void
    {
        for (i in 0...arr.length)
        {
            arr[i].Init();
        }
    }

    private function _StartObjectArr(arr:Array<Dynamic>):Void
    {
        for (i in 0...arr.length)
        {
            arr[i].Start();
        }
    }

    // _StartTutorialArr(arr)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i].StartTutorial();
    //     }
    // }

    // _UpdateObjectArr(arr, dt)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i].Update(dt);
    //     }
    // }

    // _InactiveObjectArr(arr)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i].SetInactive();
    //     }
    // }

    // _SetObjectInfor(arr, infor = null)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i].SetInfor(infor[i]);
    //     }
    // }

    // _SetObjectParent(arr, parent)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i].SetParent(parent);
    //     }
    // }

    // _SetArrObjectInforAttr(arr, attr)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         for (let j = 0; j< attr.length; j++)
    //             arr[i].GetInfor()[attr[j]] = arr[i][attr[j]];
    //     }
    // }

    // _SetArrObjectAttr(arr, attr, value)
    // {
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i][attr] = value;
    //     }
    // }

    // _ShuffleObjectArray(arr)
    // {
    //     let tArr = arr.map(a => [Math.random(), a])
    //                 .sort((a, b) => a[0] - b[0])
    //                 .map(a => a[1]);
    //     for (let i = 0; i< arr.length; i++)
    //     {
    //         arr[i] = tArr[i];
    //     }
    // }
}