package dojox.string;

extern class Builder {
public function append(s:String):Dynamic;
public function concat(s:String):Dynamic;
public function appendArray(strings:Array<Dynamic>):Dynamic;
public function clear():Dynamic;
public function replace(oldStr:String,newStr:String):Dynamic;
public function remove(start:Float,?len:Float):Dynamic;
public function insert(index:Float,str:String):Dynamic;
public function toString():String;
public var length:Float;

}
