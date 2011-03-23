package dojox.wire;

extern class Wire {
public function new(args:Dynamic):Void;
public function getValue(defaultObject:Dynamic):Dynamic;
public function setValue(value:Dynamic,defaultObject:Dynamic):Void;
public var converter:Dynamic;

}
