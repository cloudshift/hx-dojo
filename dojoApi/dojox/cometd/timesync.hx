package dojox.cometd;

extern class timesync {
public function getServerTime():Void;
public function getServerDate():Void;
public function setTimeout(call:Dynamic,atTimeOrDate:Dynamic):Void;
public var lag:Dynamic;
public var offset:Dynamic;
public var samples:Float;

}
