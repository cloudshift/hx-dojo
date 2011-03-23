package dojox.data;

extern class HtmlTableStore {
public function new(args:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Dynamic;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Void;
public function loadItem(keywordArgs:Dynamic):Void;
public function getFeatures():Void;
public function close(request:Dynamic):Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function getIdentity(item:Dynamic):Int;
public function getIdentityAttributes(item:Dynamic):Void;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public var url:String;
public var tableId:String;

}
