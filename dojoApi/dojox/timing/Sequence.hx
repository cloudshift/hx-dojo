package dojox.timing;

extern class Sequence {
public function new():Void;
public function go(defs:Array<Dynamic>,?doneFunction:Dynamic):Void;
public function goOn():Void;
public function stop():Void;

}
