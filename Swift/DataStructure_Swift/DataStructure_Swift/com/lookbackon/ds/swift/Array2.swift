//
//  Array2.swift
//  DataStructure_Swift
//
//  Created by yangboz on 14-7-23.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

import Foundation

class Array2{
//    int _w,_h;
    var _w:Int = 0;var _h:Int = 0;
//    BOOL _celled;
    var _celled:Boolean = 0;
    
//    @private
//    NSMutableArray *_a;
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
    //
//    -(void)fill:(id)obj;
    func fill(obj:AnyObject){};
    
//    -(id)gett:(int)x intValue:(int)y;
    func get(x:Int,y:Int)->AnyObject{};
//    -(void)sett:(int)x intValue:(int)y idValue:(id)obj;
    func set(x:Int,y:Int,obj:AnyObject){};
    
//    -(void)setXs:(int)y arrayValue:(NSMutableArray *)objs;
    func setXs(y:Int,objs:Array<AnyObject>){};
//    -(void)setYs:(int)x arrayValue:(NSMutableArray *)objs;
    func setYs(y:Int,objs:Array<AnyObject>){};
    
//    -(void)resize:(int)w intValue:(int)h;
    func resize(w:Int,h:Int){};
    
//    -(NSMutableArray *)getRow:(int)y;
    func getRow(y:Int)->Array<AnyObject>{};
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