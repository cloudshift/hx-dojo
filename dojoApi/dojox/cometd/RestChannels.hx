package dojox.cometd;

extern class RestChannels {
public function new(options:Dynamic):Void;
public function absoluteUrl(baseUrl:Dynamic,relativeUrl:Dynamic):Void;
public function open():Dynamic;
public function subscribe(channel:String,?args:Dynamic):Dynamic;
public function publish(channel:Dynamic,data:Dynamic):Void;
public function onprogress(xhr:Dynamic,data:Dynamic,contentType:Dynamic):Void;
public function get(channel:String,?args:Dynamic):Void;
public function receive(message:Dynamic):Void;
public function disconnected():Void;
public function unsubscribe(channel:String,?args:Dynamic):Void;
public function disconnect():Void;
public var acceptType:String;
public var subscriptions:Dynamic;
public var subCallbacks:Dynamic;
public var autoReconnectTime:Float;
public var reloadDataOnReconnect:Dynamic;
public var sendAsJson:Bool;
public var url:String;
public var autoSubscribeRoot:String;
public var started:Bool;
public var connectionId:Dynamic;
public var createdClientId:Dynamic;
public var lastIndex:Float;
public var connected:Bool;
public var defaultInstance:Dynamic;

}
