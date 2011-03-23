package dojox.collections;

extern class Dictionary {
public function add(k:String,v:Dynamic):Void;
public function clear():Void;
public function clone():Dynamic;
public function contains():Void;
public function containsKey(k:String):Bool;
public function containsValue(v:Dynamic):Bool;
public function entry(k:String):Dynamic;
public function forEach(fn:Dynamic,?scope:Dynamic):Void;
public function getKeyList():Void;
public function getValueList():Void;
public function item(k:String):Dynamic;
public function getIterator():Dynamic;
public function remove(k:String):Bool;
public var count:Float;

}
