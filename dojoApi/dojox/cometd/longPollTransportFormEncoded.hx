package dojox.cometd;

extern class longPollTransportFormEncoded {
public function check(types:Dynamic,version:Dynamic,xdomain:Dynamic):Void;
public function tunnelInit():Void;
public function tunnelCollapse():Void;
public function deliver(message:Dynamic):Void;
public function openTunnelWith(content:Dynamic,url:Dynamic):Void;
public function sendMessages(messages:Dynamic):Void;
public function startup(handshakeData:Dynamic):Void;
public function disconnect():Void;
public function cancelConnect():Void;

}
