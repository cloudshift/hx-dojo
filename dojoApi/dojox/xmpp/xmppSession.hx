package dojox.xmpp;

extern class xmppSession {
public function processProtocolResponse(msg:Dynamic):Void;
public function messageHandler(msg:Dynamic):Void;
public function iqHandler(msg:Dynamic):Void;
public function presenceHandler(msg:Dynamic):Void;
public function saslHandler(msg:Dynamic):Void;
public function sendRestart():Void;
public function simpleMessageHandler(msg:Dynamic):Void;
public function registerChatInstance(chatInstance:Dynamic,message:Dynamic):Void;
public function iqSetHandler(msg:Dynamic):Void;
public function sendIqResult(iqId:Dynamic,to:Dynamic):Void;
public function rosterSetHandler(elem:Dynamic):Void;
public function presenceUpdate(msg:Dynamic):Void;
public function retrieveRoster():Void;
public function getRosterIndex(jid:Dynamic):Void;
public function createRosterEntry(elem:Dynamic):Void;
public function bindResource(hasSession:Dynamic):Void;
public function getNextIqId():Void;
public function presenceSubscriptionRequest(msg:Dynamic):Void;
public function dispatchPacket(msg:Dynamic,type:Dynamic,matchId:Dynamic):Void;
public function search(searchString:Dynamic,service:Dynamic,searchAttribute:Dynamic):Void;
public function onLogin():Void;
public function onLoginFailure(msg:Dynamic):Void;
public function onBindSession(msg:Dynamic):Void;
public function onSearchResults(results:Dynamic):Void;
public function onRetrieveRoster(msg:Dynamic):Void;
public function onRosterUpdated():Void;
public function onSubscriptionRequest(req:Dynamic):Void;
public function onPresenceUpdate(p:Dynamic):Void;
public function onTransportTerminate(newState:Dynamic,oldState:Dynamic,message:Dynamic):Void;
public function onConnected():Void;
public function onTerminate(newState:Dynamic,oldState:Dynamic,message:Dynamic):Void;
public function onActive():Void;
public function onRegisterChatInstance(chatInstance:Dynamic,message:Dynamic):Void;
public function onRosterAdded(ri:Dynamic):Void;
public function onRosterRemoved(ri:Dynamic):Void;
public function onRosterChanged(ri:Dynamic,previousCopy:Dynamic):Void;
public function processXmppError(msg:Dynamic):Void;
public function sendStanzaError(stanzaType:Dynamic,to:Dynamic,id:Dynamic,errorType:Dynamic,condition:Dynamic,text:Dynamic):Void;
public function getBareJid(jid:Dynamic):Void;
public function getResourceFromJid(jid:Dynamic):Void;
public var roster:Array<Dynamic>;
public var chatRegister:Array<Dynamic>;
public var session:Dynamic;

}
