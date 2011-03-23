package dojox.xmpp;

extern class TransportSession {
public function processScriptSrc(msg:Dynamic,rid:Dynamic):Void;
public function close(protocolMsg:Dynamic):Void;
public function redispatchPacket(rid:Dynamic):Void;
public function addToOutboundQueue(msg:Dynamic,rid:Dynamic):Void;
public function removeFromOutboundQueue(rid:Dynamic):Void;
public function processInboundQueue():Void;
public function addToInboundQueue(doc:Dynamic,rid:Dynamic):Void;
public function processProtocolResponse(msg:Dynamic,rid:Dynamic):Void;
public function isTerminated():Void;
public function onTerminate(newState:Dynamic,oldState:Dynamic,message:Dynamic):Void;
public function onProcessProtocolResponse(msg:Dynamic):Void;
public function onReady(newState:Dynamic,oldState:Dynamic):Void;
public var rid:Float;
public var hold:Float;
public var polling:Float;
public var secure:Bool;
public var wait:Float;
public var lang:String;
public var submitContentType:String;
public var serviceUrl:String;
public var defaultResource:String;
public var domain:String;
public var sendTimeout:Float;
public var useScriptSrcTransport:Bool;
public var keepAliveTimer:Dynamic;
public var state:String;
public var transmitState:String;
public var protocolPacketQueue:Array<Dynamic>;
public var outboundQueue:Array<Dynamic>;
public var outboundRequests:Dynamic;
public var inboundQueue:Array<Dynamic>;
public var deferredRequests:Dynamic;
public var matchTypeIdAttribute:Dynamic;
public var transportIframes:Array<Dynamic>;

}
