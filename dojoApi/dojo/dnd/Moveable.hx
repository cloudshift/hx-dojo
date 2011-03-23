package dojo.dnd;

extern class Moveable {
public function new(node:Dynamic,?params:Dynamic):Void;
public function markupFactory(params:Dynamic,node:Dynamic):Void;
public function destroy():Void;
public function onMouseDown(e:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function onSelectStart(e:Dynamic):Void;
public function onDragDetected(e:Dynamic):Void;
public function onMoveStart(mover:Dynamic):Void;
public function onMoveStop(mover:Dynamic):Void;
public function onFirstMove(mover:Dynamic,e:Dynamic):Void;
public function onMove(mover:Dynamic,leftTop:Dynamic,e:Dynamic):Void;
public function onMoving(mover:Dynamic,leftTop:Dynamic):Void;
public function onMoved(mover:Dynamic,leftTop:Dynamic):Void;
public var handle:Dynamic;
public var delay:Float;
public var skip:Bool;
public var events:Array<Dynamic>;
public var node:Dynamic;
public var mover:Dynamic;

}
