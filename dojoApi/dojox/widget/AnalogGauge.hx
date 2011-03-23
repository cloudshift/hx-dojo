package dojox.widget;

extern class AnalogGauge extends dojox.widget.gauge._Gauge {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function draw():Void;
public function drawRange(range:Dynamic):Void;
public function getRangeUnderMouse(event:Dynamic):Void;
public var startAngle:Float;
public var endAngle:Float;
public var cx:Float;
public var cy:Float;
public var radius:Float;

}
