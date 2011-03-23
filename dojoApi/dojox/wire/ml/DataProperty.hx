package dojox.wire.ml;

extern class DataProperty extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function getValue():Dynamic;
public var isContainer:Bool;
public var name:Dynamic;
public var type:Dynamic;
public var value:Dynamic;

}
