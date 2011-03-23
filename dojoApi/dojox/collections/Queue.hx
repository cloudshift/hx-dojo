package dojox.collections;

extern class Queue {
public function clear():Void;
public function clone():Dynamic;
public function contains(o:Dynamic):Bool;
public function copyTo(arr:Array<Dynamic>,i:Int):Void;
public function dequeue():Dynamic;
public function enqueue(o:Dynamic):Void;
public function forEach(fn:Dynamic,?scope:Dynamic):Void;
public function getIterator():Dynamic;
public function peek():Void;
public function toArray():Void;
public var count:Dynamic;

}
