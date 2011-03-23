package dojox.charting.plot3d;

extern class Base {
public function new(width:Dynamic,height:Dynamic,kwArgs:Dynamic):Void;
public function setData(data:Dynamic):Void;
public function getDepth():Void;
public function generate(chart:Dynamic,creator:Dynamic):Void;
public var data:Array<Dynamic>;
public var width:Dynamic;
public var height:Dynamic;

}
