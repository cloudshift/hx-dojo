package dojox.mobile.app;

extern class ListSelector extends dojox.mobile.app._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onChoose():Void;
public function show(fromNode:Dynamic):Void;
public function hide():Void;
public function render():Void;
public var data:Array<Dynamic>;
public var controller:Dynamic;
public var destroyOnHide:Bool;
public var mask:Dynamic;

}
