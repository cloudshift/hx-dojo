package dojox.collections;

extern class SortedList {
public function add(k:String,v:Dynamic):Void;
public function clear():Void;
public function clone():Dynamic;
public function contains():Void;
public function containsKey(k:String):Bool;
public function containsValue(o:Dynamic):Bool;
public function copyTo(arr:Array<Dynamic>,i:Int):Void;
public function entry(k:String):Dynamic;
public function forEach(fn:Dynamic,?scope:Dynamic):Void;
public function getByIndex(i:Int):Dynamic;
public function getIterator():Dynamic;
public function getKey(i:Int):Void;
public function getKeyList():Array<Dynamic>;
public function getValueList():Array<Dynamic>;
public function indexOfKey(k:String):Int;
public function indexOfValue(o:Dynamic):Int;
public function item(k:String):Dynamic;
public function remove(k:String):Void;
public function removeAt(i:Int):Void;
public function replace(k:String,v:Dynamic):Bool;
public function setByIndex(i:Int,o:Dynamic):Void;
public var count:Dynamic;

}
