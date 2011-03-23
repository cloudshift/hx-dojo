package dojox.xmpp;

extern class UserService {
public function new(xmppService:Dynamic):Void;
public function getPersonalProfile():Void;
public function setPersonalProfile(props:Dynamic):Void;
public function onSetPersonalProfile(id:Dynamic):Void;
public function onSetPersonalProfileFailure(err:Dynamic):Void;
public function onGetPersonalProfile(profile:Dynamic):Void;
public function onGetPersonalProfileFailure(err:Dynamic):Void;
public var session:Dynamic;

}
