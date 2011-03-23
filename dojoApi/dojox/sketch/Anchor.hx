package dojox.sketch;

extern class Anchor {
public function type():Void;
public function beginEdit():Void;
public function endEdit():Void;
public function zoom(pct:Dynamic):Void;
public function setBinding(pt:Dynamic):Void;
public function setUndo():Void;
public function enable():Void;
public function disable():Void;
public var annotation:Dynamic;
public var id:Dynamic;
public var shape:Dynamic;
public var isControl:Dynamic;
public var count:Float;

}
