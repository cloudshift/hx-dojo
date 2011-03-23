package dojox.data;

extern class CssRuleStore {
public function new(keywordParameters:Dynamic):Void;
public function setContext(context:Array<Dynamic>):Void;
public function getFeatures():Void;
public function isItem(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function getAttributes(item:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,defaultValue:Dynamic):Void;
public function getValues(item:Dynamic,attribute:Dynamic):Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function fetch(request:Dynamic):Void;
public function close():Void;
public var context:Dynamic;
public var gatherHandle:Dynamic;

}
