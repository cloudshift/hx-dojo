package dojox.mdnd;

extern class AreaManager {
public function new():Void;
public function init():Void;
public function registerByNode(area:Dynamic,notInitAreas:Bool):Void;
public function registerByClass():Void;
public function unregister(area:Dynamic):Bool;
public function _addMoveableItem(node:Dynamic):Dynamic;
public function _deleteMoveableItem(objItem:Dynamic):Void;
public function _getIndexArea(area:Dynamic):Int;
public function _searchDragHandle(node:Dynamic):Dynamic;
public function addDragItem(area:Dynamic,node:Dynamic,index:Int,notCheckParent:Bool):Bool;
public function removeDragItem(area:Dynamic,node:Dynamic):Dynamic;
public function _getChildren(area:Dynamic):Array<Dynamic>;
public function _setMarginArea(area:Dynamic,node:Dynamic):Void;
public function findCurrentIndexArea(coords:Dynamic,size:Dynamic):Int;
public function onDragStart(node:Dynamic,coords:Dynamic,size:Dynamic):Void;
public function onDragEnter(coords:Dynamic,size:Dynamic):Void;
public function onDragExit(coords:Dynamic,size:Dynamic):Void;
public function onDrag(node:Dynamic,coords:Dynamic,size:Dynamic,mousePosition:Dynamic):Void;
public function placeDropIndicator(coords:Dynamic,size:Dynamic):Int;
public function _placeDropIndicator(size:Dynamic):Void;
public function onDropCancel():Void;
public function onDrop(node:Dynamic):Void;
public function _resetAfterDrop():Void;
public function destroy():Void;
public var autoRefresh:Bool;
public var areaClass:String;
public var dragHandleClass:String;
public var resizeHandler:Dynamic;

}
