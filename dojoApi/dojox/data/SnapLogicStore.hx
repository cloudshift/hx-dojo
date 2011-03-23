package dojox.data;

extern class SnapLogicStore {
public function new(args:Dynamic):Void;
public function getFeatures():Void;
public function getValue(item:Dynamic,attribute:Dynamic,defaultValue:Dynamic):Void;
public function getAttributes(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function isItemLoaded(item:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function isItem(item:Dynamic):Void;
public function close(request:Dynamic):Void;
public function fetch(request:Dynamic):Dynamic;
public var url:Dynamic;

}
