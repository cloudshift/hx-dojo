package dojo;

extern class Deferred {
public function addCallback(callBack:Dynamic):Void;
public function addErrback(errback:Dynamic):Void;
public function addBoth(callBack:Dynamic):Void;
public function resolve():Void;
// public function callback(value:Dynamic):Void;
public function reject():Void;
public function errback(error:Dynamic):Void;
public function progress(update:Dynamic):Void;
public function addCallbacks(?callBack:Dynamic,?errback:Dynamic):Void;
public function then():Void;
public function cancel():Void;
public var fired:Float;
public var promise:Dynamic;
public var results:Array<Dynamic>;

}
