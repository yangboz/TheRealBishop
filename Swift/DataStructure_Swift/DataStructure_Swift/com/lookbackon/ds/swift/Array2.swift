//
//  Array2.swift
//  DataStructure_Swift
//
//  Created by yangboz on 14-7-23.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//@see https://github.com/yangboz/godpaper/blob/master/TheKnightErrant/src/de/polygonal/ds/Array2.as

import Foundation

class Array2{
    //
    var _w:Int = 0;
    var _h:Int = 0;
    var _celled:Boolean = 0;
    var _a:Array<AnyObject> = [];
    //
    var width:Int {
        get{
            return _w;
        }
        set{
            //
        }
    };
    var height:Int {
        get{
            return _h;
        }
        set{
            //
        }
    };
    /**
    * Writes a given value into each cell of the two-dimensional array. If
    * the obj parameter if of type Class, the method creates individual
    * instances of this class for all array cells.
    *
    * @param item The item to be written into each cell.
    */
    func fill(obj:AnyObject){
        var k:Int = _w * _h;
        var i:Int = 0;
        //TODO:class instance fill;
        for i in 0...k
        {
            _a[i] = obj;
        }
    };
    /**
    * Reads a value from a given x/y index. No boundary check is done, so
    * you have to make sure that the input coordinates do not exceed the
    * width or height of the two-dimensional array.
    *
    * @param x The x index (column).
    * @param y The y index (row).
    *
    * @return The value at the given x/y index.
    */
    func get(x:Int,y:Int)->AnyObject{
        return _a[Int(y*_w+x)];
    };
    /**
    * Writes a value into a cell at the given x/y index. Because of
    * performance reasons no boundary check is done, so you have to make
    * sure that the input coordinates do not exceed the width or height of
    * the two-dimensional array.
    *
    * @param x   The x index (column).
    * @param y   The y index (row).
    * @param obj The item to be written into the cell.
    */
    func set(x:Int,y:Int,obj:AnyObject){
        _a[Int(y*_w+x)] = obj;
    };
    /**
    * Writes values horiztontally.
    * @param y The y index (row).
    * @param objs The items to be writtten into the cell.
    *
    */
    func setXs(y:Int,objs:Array<AnyObject>){
        for i in 0...objs.count
        {
            set(i, y: y, obj: objs[i]);
        }
    };
    /**
    * Writes values vertically.
    * @param The x index (column).
    * @param objs The items to be writtten into the cell.
    *
    */
    func setYs(x:Int,objs:Array<AnyObject>){
        for i in 0...objs.count
        {
            set(x,y: i,obj: objs[i]);
        }
    };
    /**
    * Resizes the array to match the given width and height. If the new
    * size is smaller than the existing size, values are lost because of
    * truncation, otherwise all values are preserved. The minimum size
    * is a 1x1 matrix.
    *
    * @param w The new width (cols).
    * @param h The new height (rows).
    */
    func resize(w:Int,h:Int){
        var error: NSError?;
        if w < 1 || h < 1 {
            println("An error occurred \(error)");//("illegal size");
        }
        
        var copy:Array = [];
        for index in 0..._a.count
        {
            copy.append(_a[index]);
        }
        
//        _a.count = 0;
//        _a.count = w * h;
        
        var minx:Int = w < _w ? w : _w;
        var miny:Int = h < _h ? h : _h;
        
        var x:Int, y:Int, t1:Int, t2:Int;
        for y in 0...miny
        {
            t1 = y *  w;
            t2 = y * _w;
            
            for x in 0...minx
            {
                _a[Int(t1 + x)] = copy[Int(t2 + x)];
            }
        }
        
        _w = w;
        _h = h;
    };
    /**
    * Extracts a row from a given index.
    *
    * @param y The row index.
    *
    * @return An array storing the values of the row.
    */
    func getRow(y:Int)->Array<AnyObject>{
        var offset:Int = y * _w;
        return _a[offset ... (offset + _w)];
    };
//    -(void)setRow:(int)y arrayValue:(NSMutableArray *)rowArray;
    func setRow(y:Int,rowArray:Array<AnyObject>){};
    
//    -(NSMutableArray *)getCol:(int)x;
    func getCol(x:Int)->Array<AnyObject>{};
//    -(void)setCol:(int)x arrayValue:(NSMutableArray *)rolArray;
    func setCol(x:Int,rolArray:Array<AnyObject>){};
    
//    -(void)shiftLeft;
    func shiftLeft(){};
//    -(void)shiftRight;
    func shiftRight(){};
//    -(void)shiftUp;
    func shiftUp(){};
//    -(void)shiftDown;
    func shiftDown(){};
    
//    -(void)appendRow:(NSMutableArray *)a;
    func appendRow(a:Array<AnyObject>){};
//    -(void)prependRow:(NSMutableArray *)a;
    func prependrow(a:Array<AnyObject>){};
    
//    -(void)appendCol:(NSMutableArray *)a;
    func appendCol(a:Array<AnyObject>){};
//    -(void)prependCol:(NSMutableArray *)a;
    func prependCol(a:Array<AnyObject>){};
    
//    -(void)transpose;
    func transpose(){};
    
//    -(NSMutableArray *)getArray;
    func getArray()->Array<AnyObject>{};
    
//    -(NSString *)toString;
    func toString()->String{};
//    -(NSString *)dump;
    func dump()->String{};
    
//    @property(readonly) NSInteger celled;
    var celled:Int{
        get{
            
        }
    }
    //Constructor
//    -(id)Array2:(int)w intValue:(int)h;
    func Array2(w:Int,h:Int)->AnyObject{};
}