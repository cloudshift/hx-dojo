package dojox.sketch;

extern class Toolbar extends dijit.Toolbar {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setFigure(f:Dynamic):Void;
public function addGroupItem(item:Dynamic,group:Dynamic):Void;
public function reset():Void;
public var figure:Dynamic;
public var plugins:Array<Dynamic>;
public var shapeGroup:Dynamic;

}
