package dojox.data;

extern class CdfStore {
public function new(args:Dynamic):Void;
public function getValue(item:Dynamic,property:String,?defaultValue:Dynamic):Dynamic;
public function getValues(item:Dynamic,property:String):Void;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,property:String):Bool;
public function hasProperty(item:Dynamic,property:String):Void;
public function containsValue(item:Dynamic,property:String,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(keywordArgs:Dynamic):Void;
public function getFeatures():Void;
public function getLabel(item:Dynamic):Dynamic;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function fetch(?request:Dynamic):Dynamic;
public function close(request:Dynamic):Void;
public function newItem(?keywordArgs:Dynamic,?parentInfo:Dynamic):Dynamic;
public function deleteItem(item:Dynamic):Bool;
public function setValue(item:Dynamic,property:String,value:Dynamic):Bool;
public function setValues(item:Dynamic,property:String,values:Array<Dynamic>):Void;
public function unsetAttribute(item:Dynamic,property:String):Bool;
public function revert():Bool;
public function isDirty(item:Dynamic):Bool;
public function getIdentity(item:Dynamic):String;
public function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
public function fetchItemByIdentity(args:Dynamic):Dynamic;
public function byId(args:Dynamic):Void;
public var identity:String;
public var url:String;
public var xmlStr:String;
public var data:Dynamic;
public var label:String;
public var mode:Dynamic;
public var cdfDoc:Dynamic;

}
