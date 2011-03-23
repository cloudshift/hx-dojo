package dijit;

extern class _Container {
public function buildRendering():Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function destroyDescendants(preserveDom:Bool):Void;
public function getIndexOfChild(child:Dynamic):Int;
public function startup():Void;
public var isContainer:Bool;
public var containerNode:Dynamic;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
