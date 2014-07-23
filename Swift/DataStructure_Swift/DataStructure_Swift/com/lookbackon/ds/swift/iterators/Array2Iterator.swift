//
//  Array2Iterator.swift
//  DataStructure_Swift
//
//  Created by yangboz on 14-7-23.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

import Foundation

class Array2Iterator :Iterator {
    
//    private var _a2:Array2;
    var _a2:Array2;
//    private var _xCursor:int;
    var _xCursor:Int;
//    private var _yCursor:int;
    var _yCursor:Int;
    
//    public function Array2Iterator(a2:Array2)
    func Array2Iterator(a2:Array2)
    {
        _a2 = a2;
//        _xCursor = _yCursor = 0;
        _xCursor =  0;
        _yCursor = 0;
    }
    /*
    public function get data():*
    {
    return _a2.gett(_xCursor, _yCursor);
    }
    
    public function set data(obj:*):void
    {
    _a2.sett(_xCursor, _yCursor, obj);
    }
    */
    var _data:AnyObject{
        get{
            return _a2.get(_xCursor, _yCursor);
        }
        set{
            _a2.set(_xCursor, _yCursor, obj);
        }
    }
    
//    public function start():void
    func start()
    {
//        _xCursor = _yCursor = 0;
        _xCursor = 0;
        _yCursor = 0;
    }
    
//    public function hasNext():Boolean
    func hasNext()->Boolean
    {
        return (_yCursor * _a2.width + _xCursor < _a2.size);
    }
    
//    public function next():*
    func next()->func next() -> AnyObject
    {
//        var item:* = data;
        var item:AnyObject = data;
    
        if (++_xCursor == _a2.width)
        {
            _yCursor++;
            _xCursor = 0;
        }
    
        return item;
    }
}