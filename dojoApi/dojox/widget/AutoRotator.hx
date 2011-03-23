package dojox.widget;

extern class AutoRotator extends dojox.widget.Rotator {
public function new():Void;
public function play(?skipCycleDecrement:Bool,?skipDuration:Bool):Void;
public function pause():Void;
public var suspendOnHover:Bool;
public var duration:Int;
public var autoStart:Bool;
public var pauseOnManualChange:Bool;
public var cycles:Int;
public var random:Bool;
public var reverse:Bool;
public var playing:Bool;

}
