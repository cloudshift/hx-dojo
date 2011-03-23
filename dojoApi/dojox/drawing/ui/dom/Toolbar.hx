package dojox.drawing.ui.dom;

extern class Toolbar {
public function new(props:Dynamic,node:Dynamic):Void;
public function createIcon(node:Dynamic,constr:Dynamic):Void;
public function createTool(node:Dynamic):Void;
public function parse():Void;
public function onClick(type:String):Void;
public function onSetTool(type:String):Void;
public var baseClass:String;
public var buttonClass:String;
public var iconClass:String;
public var drawing:Dynamic;
public var toolNodes:Dynamic;

}
