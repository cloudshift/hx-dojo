package dojox.drawing.ui;

extern class Toolbar {
public function new(props:Dynamic,node:Dynamic):Void;
public function makeButtons():Void;
public function onRenderStencil(stencil:Dynamic):Void;
public function addTool():Void;
public function addPlugin():Void;
public function addBack():Void;
public function onToolClick(button:Dynamic):Void;
public function onPlugClick(button:Dynamic):Void;
public var padding:Float;
public var margin:Float;
public var size:Float;
public var radius:Float;
public var toolPlugGap:Float;
public var strSelected:Dynamic;
public var strTools:Dynamic;
public var strPlugs:Dynamic;
public var buttons:Array<Dynamic>;
public var plugins:Array<Dynamic>;
public var selected:Dynamic;
public var util:Dynamic;
public var toolDrawing:Dynamic;
public var drawing:Dynamic;
public var width:Dynamic;
public var height:Dynamic;
public var horizontal:Bool;

}
