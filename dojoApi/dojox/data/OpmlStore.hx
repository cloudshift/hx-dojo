package dojox.data;

extern class OpmlStore {
public function new(keywordParameters:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Dynamic;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Bool;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Void;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(item:Dynamic):Void;
public function getLabel(item:Dynamic):String;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function getFeatures():Dynamic;
public function getIdentity(item:Dynamic):Dynamic;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Void;
public function close(request:Dynamic):Void;
public var label:String;
public var url:String;
public var urlPreventCache:Bool;

}
