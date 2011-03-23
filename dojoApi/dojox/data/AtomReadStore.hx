package dojox.data;

extern class AtomReadStore {
public function new(args:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):Void;
public function getValues(item:Dynamic,attribute:Dynamic):Void;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Bool;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function getFeatures():Array<Dynamic>;
public function getLabel(item:Dynamic):Dynamic;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function getFeedValue(attribute:Dynamic,defaultValue:Dynamic):Void;
public function getFeedValues(attribute:Dynamic,defaultValue:Dynamic):Void;
public function close(request:Dynamic):Void;
public var url:Dynamic;
public var label:Dynamic;
public var sendQuery:Dynamic;
public var unescapeHTML:Dynamic;
public var urlPreventCache:Bool;
public var rewriteUrl:Dynamic;

}
