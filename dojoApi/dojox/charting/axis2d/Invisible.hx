package dojox.charting.axis2d;

extern class Invisible extends dojox.charting.axis2d.Base {
public function new(chart:Dynamic,?kwArgs:Dynamic):Void;
public function dependOnData():Bool;
public function setWindow(scale:Float,offset:Float):Dynamic;
public function getWindowScale():Float;
public function getWindowOffset():Float;
public var scale:Dynamic;
public var offset:Float;
public var labels:Dynamic;
public var ticks:Dynamic;

}
