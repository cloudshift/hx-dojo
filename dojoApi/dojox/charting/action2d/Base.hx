package dojox.charting.action2d;

extern class Base {
public function new(chart:Dynamic,?plot:String,?kwargs:Dynamic):Void;
public function connect():Void;
public function disconnect():Void;
public function reset():Void;
public function destroy():Void;
public var handle:Dynamic;
public var anim:Dynamic;
public var chart:Dynamic;
public var plot:String;
public var duration:Dynamic;
public var easing:Dynamic;

}
