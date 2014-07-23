//
//  ICollection.swift
//  DataStructure_Swift
//
//  Created by yangboz on 14-7-23.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

import Foundation
import UIKit
/**
* A 'java-style' collection interface.
*/
protocol Collection
{
    /**
    * Determines if the collection contains a given item.
    *
    * @param obj The item to search for.
    *
    * @return True if the item exists, otherwise false.
    */
//    function contains(obj:*):Boolean
    func contains(obj:AnyObject)->Boolean;
    
    /**
    * Clears all items.
    */
//    function clear():void
    func clear();
    
    /**
    * Initializes an iterator object pointing to the first item in the
    * collection.
    *
    * @return An iterator object.
    */
//    function getIterator():Iterator
    func getIterator()->Iterator;
    
    /**
    * The total number of items.
    *
    * @return The size.
    */
//    function get size():int;
    var size:Int{get};
    
    /**
    * Checks if the collection is empty.
    *
    * @return True if empty, otherwise false.
    */
//    function isEmpty():Boolean
    func isEmpty()->Boolean;
    
    /**
    * Converts the collection into an array.
    *
    * @return An array.
    */
//    function toArray():Array
    func toArray()->Array<AnyObject>;
}