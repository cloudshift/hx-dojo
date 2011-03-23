package dojox;

extern class analytics {
public function schedulePusher(interval:Int):Void;
public function addData(dataType:Dynamic,data:Dynamic):Void;
public function checkData():Void;
public function onPushComplete(results:Dynamic):Void;
public var sendInterval:Float;
public var inTransitRetry:Float;
public var dataUrl:Dynamic;
public var sendMethod:String;
public var maxRequestSize:Dynamic;

}
