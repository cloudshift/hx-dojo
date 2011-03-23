package dojox.uuid;

extern class Uuid {
public function compare(uuidOne:Dynamic,uuidTwo:Dynamic,otherUuid:Dynamic):Int;
public function setGenerator(?generator:Dynamic):Void;
public function getGenerator():Dynamic;
public function toString():String;
public function isEqual(otherUuid:Dynamic):Bool;
public function isValid():Void;
public function getVariant():Void;

}
