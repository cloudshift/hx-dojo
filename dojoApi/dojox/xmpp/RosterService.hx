package dojox.xmpp;

extern class RosterService {
public function new(xmppSession:Dynamic):Void;
public function addRosterItem(jid:Dynamic,name:Dynamic,groups:Dynamic):Void;
public function updateRosterItem(jid:Dynamic,name:Dynamic,groups:Dynamic):Void;
public function verifyRoster(res:Dynamic):Void;
public function addRosterItemToGroup(jid:Dynamic,group:Dynamic):Void;
public function removeRosterGroup(group:Dynamic):Void;
public function renameRosterGroup(group:Dynamic,newGroup:Dynamic):Void;
public function removeRosterItemFromGroup(jid:Dynamic,group:Dynamic):Void;
public function rosterItemRenameGroup(jid:Dynamic,oldGroup:Dynamic,newGroup:Dynamic):Void;
public function renameRosterItem(jid:Dynamic,newName:Dynamic):Void;
public function removeRosterItem(jid:Dynamic):Void;
public function getAvatar(jid:Dynamic):Void;
public function publishAvatar(type:Dynamic,binval:Dynamic):Void;
public function onVerifyRoster(id:Dynamic):Void;
public function onVerifyRosterFailed(err:Dynamic):Void;

}
