package dojox.embed;

extern class Flash {
public function onInitialize():Void;
public function proxy(obj:Dynamic,methods:Dynamic):Void;
public function onReady(movie:Dynamic):Void;
public function onLoad(movie:Dynamic):Void;
public function onError(msg:Dynamic):Void;
public function destroy():Void;
public function byId(movieName:String,doc:Dynamic):Void;
public function place(kwArgs:Dynamic,node:Dynamic):Void;
public var minSupported:Float;
public var available:Float;
public var supported:Bool;
public var minimumRequired:Dynamic;
public var version:Dynamic;
public var initialized:Bool;
public var minimumVersion:Dynamic;
public var id:Dynamic;
public var movie:Dynamic;
public var domNode:Dynamic;

}
