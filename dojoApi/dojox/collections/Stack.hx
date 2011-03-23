package dojox.collections;

extern class Stack {
public function clear():Void;
public function clone():Void;
public function contains(o:Dynamic):Bool;
public function copyTo(arr:Array<Dynamic>,i:Int):Void;
public function forEach(fn:Dynamic,?scope:Dynamic):Void;
public function getIterator():Dynamic;
public function peek():Dynamic;
public function pop():Dynamic;
public function push(o:Dynamic):Void;
public function toArray():Array<Dynamic>;
public var count:Dynamic;

}
