package dojox.xmpp;

extern class ChatService {
public function new():Void;
public function recieveMessage(msg:Dynamic,initial:Dynamic):Void;
public function setSession(session:Dynamic):Void;
public function setState(state:Dynamic):Void;
public function invite(contact:Dynamic):Void;
public function sendMessage(msg:Dynamic):Void;
public function sendChatState(state:Dynamic):Void;
public function onNewMessage(msg:Dynamic):Void;
public function onInvite(contact:Dynamic):Void;
public var state:String;
public var session:Dynamic;
public var uid:Dynamic;
public var chatid:Dynamic;

}
