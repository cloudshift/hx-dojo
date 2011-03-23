package dojox.data;

extern class QueryReadStore {
public function new(params:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Void;
public function getValues(item:Dynamic,attribute:Dynamic):Void;
public function getAttributes(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Void;
public function isItem(something:Dynamic):Void;
public function isItemLoaded(something:Dynamic):Void;
public function loadItem(args:Dynamic):Void;
public function fetch(?request:Dynamic):Dynamic;
public function getFeatures():Void;
public function close(request:Dynamic):Void;
public function getLabel(item:Dynamic):String;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public function getIdentity(item:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Void;
public var url:String;
public var requestMethod:String;
public var lastRequestHash:String;
public var doClientPaging:Bool;
public var doClientSorting:Bool;

}
