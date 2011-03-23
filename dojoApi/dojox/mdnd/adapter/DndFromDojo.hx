package dojox.mdnd.adapter;

extern class DndFromDojo {
public function new():Void;
public function subscribeDnd():Void;
public function unsubscribeDnd():Void;
public function _getHoverArea(coords:Dynamic):Void;
public function onDragStart(source:Dynamic,nodes:Array<Dynamic>,copy:Bool):Void;
public function onMouseMove(e:Dynamic):Void;
public function onDragEnter():Void;
public function onDragExit():Void;
public function isAccepted(node:Dynamic,accept:Dynamic):Bool;
public function onDndSource(source:Dynamic):Void;
public function _resetAvatar():Void;
public function onDropCancel():Void;
public function onDrop(source:Dynamic,nodes:Array<Dynamic>,copy:Bool):Void;

}
