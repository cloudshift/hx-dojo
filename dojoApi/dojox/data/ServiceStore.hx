package dojox.data;

extern class ServiceStore {
public function new(options:Dynamic):Void;
public function getSchema():Void;
public function getValue(item:Dynamic,property:String,?defaultValue:Dynamic):Dynamic;
public function getValues(item:Dynamic,property:String):Void;
public function getAttributes(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:String):Void;
public function containsValue(item:Dynamic,attribute:String,value:Dynamic):Void;
public function isItem(item:Dynamic):Void;
public function isItemLoaded(item:Dynamic):Void;
public function loadItem(args:Dynamic):Void;
public function close(request:Dynamic):Void;
public function fetch(args:Dynamic):Void;
public function getFeatures():Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function getIdentity(item:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Void;
public function fetchItemByIdentity(args:Dynamic):Void;
public var service:Dynamic;
public var schema:Dynamic;
public var idAttribute:Dynamic;
public var labelAttribute:String;
public var syncMode:Bool;
public var estimateCountFactor:Float;
public var loadLazyValues:Dynamic;
public var byId:Dynamic;

}
