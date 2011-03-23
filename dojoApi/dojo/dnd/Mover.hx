package dojo.dnd;

extern class Mover {
public function new(node:Dynamic,e:Dynamic,?host:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function onFirstMove(e:Dynamic):Void;
public function destroy():Void;
public var host:Dynamic;
public var events:Array<Dynamic>;
public var mouseButton:Dynamic;

}
