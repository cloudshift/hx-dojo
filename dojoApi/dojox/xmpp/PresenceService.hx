package dojox.xmpp;

extern class PresenceService {
public function new(xmppService:Dynamic):Void;
public function publish(presence:Dynamic):Void;
public function sendAvatarHash(avatarHash:Dynamic):Void;
public function toggleBlockContact(jid:Dynamic):Void;
public function toggleContactInvisiblity(jid:Dynamic):Void;
public function subscribe(contact:Dynamic):Void;
public function approveSubscription(contact:Dynamic):Void;
public function unsubscribe(contact:Dynamic):Void;
public function declineSubscription(contact:Dynamic):Void;
public function cancelSubscription(contact:Dynamic):Void;
public var avatarHash:Dynamic;
public var isInvisible:Bool;
public var session:Dynamic;
public var restrictedContactjids:Dynamic;

}
