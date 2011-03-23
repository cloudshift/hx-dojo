package dojox.timing;

extern class Streamer {
public function inputFunction():Void;
public function outputFunction():Void;
public function setInterval(ms:Int):Void;
public function onTick(obj:Dynamic):Void;
public function start():Void;
public function onStart():Void;
public function stop():Void;
public function onStop():Void;
public var interval:Dynamic;
public var minimumSize:Float;

}
