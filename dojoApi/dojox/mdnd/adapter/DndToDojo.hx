package dojox.mdnd.adapter;

extern class DndToDojo {
public function new():Void;
public function _getIndexDojoArea(area:Dynamic):Void;
public function _initCoordinates(area:Dynamic):Dynamic;
public function register(area:Dynamic,type:String,dojoTarget:Bool):Void;
public function unregisterByNode(area:Dynamic):Void;
public function unregisterByType(type:String):Void;
public function unregister():Void;
public function refresh():Void;
public function refreshByType(type:String):Void;
public function _getHoverDojoArea(coords:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function isAccepted(draggedNode:Dynamic,target:Dynamic):Void;
public function onDragEnter(e:Dynamic):Void;
public function onDragExit(e:Dynamic):Void;
public function onDrop(e:Dynamic):Void;
public var cancelHandler:Dynamic;
public var dropHandler:Dynamic;
public var accept:Dynamic;

}
