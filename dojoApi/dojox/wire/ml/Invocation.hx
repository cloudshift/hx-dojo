package dojox.wire.ml;

extern class Invocation extends dojox.wire.ml.Action {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onComplete(result:Dynamic):Void;
public function onError(error:Dynamic):Void;
public var object:Dynamic;
public var method:Dynamic;
public var topic:Dynamic;
public var parameters:Dynamic;
public var result:Dynamic;
public var error:Dynamic;

}
