package dojox.cometd;

extern class callbackPollTransport {
public function check(types:Dynamic,version:Dynamic,xdomain:Dynamic):Void;
public function tunnelInit():Void;
public function openTunnelWith(content:Dynamic,url:Dynamic):Void;
public function sendMessages(messages:Array<Dynamic>):Void;
public function startup(handshakeData:Dynamic):Void;
public function disconnect():Void;
public function cancelConnect():Void;
public var tunnelCollapse:Dynamic;
public var deliver:Dynamic;

}
