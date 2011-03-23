package dojox.data;

extern class KeyValueStore {
public function new(keywordParameters:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Void;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function getAttributes(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function getFeatures():Dynamic;
public function close(request:Dynamic):Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function getIdentity(item:Dynamic):String;
public function getIdentityAttributes(item:Dynamic):Void;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public var url:String;
public var data:String;
public var urlPreventCache:Bool;

}
