package dojox.storage;

extern class Provider {
public function new():Void;
public function onHideSettingsUI():Void;
public function initialize():Void;
public function isAvailable():Void;
public function put(key:String,value:Dynamic,resultsHandler:Dynamic,?namespace:String):Void;
public function get(key:String,?namespace:String):Void;
public function hasKey(key:String,?namespace:String):Bool;
public function getKeys(?namespace:String):Void;
public function clear(?namespace:String):Void;
public function remove(key:String,?namespace:String):Void;
public function getNamespaces():Void;
public function isPermanent():Void;
public function getMaximumSize():Void;
public function putMultiple(keys:Array<Dynamic>,values:Array<Dynamic>,resultsHandler:Dynamic,?namespace:String):Void;
public function getMultiple(keys:Array<Dynamic>,?namespace:String):Void;
public function removeMultiple(keys:Array<Dynamic>,?namespace:String):Void;
public function isValidKeyArray(keys:Dynamic):Void;
public function hasSettingsUI():Void;
public function showSettingsUI():Void;
public function hideSettingsUI():Void;
public function isValidKey(keyName:String):Void;
public function getResourceList():Void;
public var SUCCESS:String;
public var FAILED:String;
public var PENDING:String;
public var SIZE_NOT_AVAILABLE:String;
public var SIZE_NO_LIMIT:String;
public var DEFAULT_NAMESPACE:String;

}
