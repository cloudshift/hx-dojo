package dojox.mobile.app;

extern class List extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function handleDrag(event:Dynamic):Void;
public function handleDragCancel():Void;
public function preDelete(currentLeftPos:Dynamic):Void;
public function createDeleteButtons(aroundNode:Dynamic):Void;
public function onDelete(data:Dynamic,index:Dynamic,array:Dynamic):Void;
public function cancelDelete():Void;
public function applyClass(node:Dynamic,idx:Dynamic,array:Dynamic):Void;
public function onSelect(data:Dynamic,index:Dynamic,rowNode:Dynamic):Void;
public function render():Void;
public var items:Array<Dynamic>;
public var itemTemplate:String;
public var emptyTemplate:String;
public var labelDelete:String;
public var labelCancel:String;
public var controller:Dynamic;
public var autoDelete:Bool;
public var enableDelete:Bool;
public var buttons:Dynamic;

}
