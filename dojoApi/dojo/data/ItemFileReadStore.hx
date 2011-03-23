package dojo.data;

extern class ItemFileReadStore {
public function new(keywordParameters:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Dynamic;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function getFeatures():Dynamic;
public function getLabel(item:Dynamic):String;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function close(request:Dynamic):Void;
public function getIdentity(item:Dynamic):Float;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Dynamic;
public var url:String;
public var data:Dynamic;
public var typeMap:Dynamic;
public var clearOnClose:Dynamic;
public var urlPreventCache:Bool;
public var failOk:Bool;
public var hierarchical:Dynamic;

}
