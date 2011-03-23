package dojox.collections;

extern class ArrayList {
public function add(obj:Dynamic):Void;
public function addRange(a:Array<Dynamic>):Void;
public function clear():Void;
public function clone():Dynamic;
public function contains(obj:Dynamic):Bool;
public function forEach(fn:Dynamic,?scope:Dynamic):Void;
public function getIterator():Dynamic;
public function indexOf(obj:Dynamic):Int;
public function insert(i:Int,obj:Dynamic):Void;
public function item(i:Int):Dynamic;
public function remove(obj:Dynamic):Void;
public function removeAt(i:Int):Void;
public function reverse():Void;
public function sort(?fn:Dynamic):Void;
public function setByIndex(i:Int,obj:Dynamic):Void;
public function toArray():Void;
public function toString(delim:String):Void;
public var count:Float;

}
