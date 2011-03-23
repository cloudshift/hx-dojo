package dojox.mdnd;

extern class Moveable {
public function new(params:Dynamic,node:Dynamic):Void;
public function isFormElement(e:Dynamic):Bool;
public function onMouseDown(e:Dynamic):Void;
public function onFirstMove(e:Dynamic):Void;
public function initOffsetDrag(e:Dynamic):Void;
public function onMove(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function onDragStart(node:Dynamic,coords:Dynamic,size:Dynamic):Void;
public function onDragEnd(node:Dynamic):Void;
public function onDrag(node:Dynamic,coords:Dynamic,size:Dynamic,mousePosition:Dynamic):Void;
public function destroy():Void;
public var handle:Dynamic;
public var skip:Bool;
public var dragDistance:Int;
public var size:Dynamic;
public var date:Dynamic;
public var events:Array<Dynamic>;
public var d:Dynamic;
public var autoScroll:Dynamic;

}
