package dojox.gfx;

extern class Mover {
public function new(shape:Dynamic,e:Dynamic,?host:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function onFirstMove():Void;
public function destroy():Void;
public var lastX:Dynamic;
public var lastY:Dynamic;
public var host:Dynamic;
public var events:Array<Dynamic>;
public var shape:Dynamic;

}
