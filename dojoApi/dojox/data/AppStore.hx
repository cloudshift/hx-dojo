package dojox.data;

extern class AppStore {
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
public function getIdentity(item:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Void;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public function newItem(?keywordArgs:Dynamic):Void;
public function deleteItem(item:Dynamic):Void;
public function setValue(item:Dynamic,attribute:String,value:Dynamic):Void;
public function setValues(item:Dynamic,attribute:String,values:Array<Dynamic>):Void;
public function unsetAttribute(item:Dynamic,attribute:String):Bool;
public function save(keywordArgs:Dynamic):Void;
public function revert():Void;
public function isDirty(?item:Dynamic):Bool;
public var url:Dynamic;
public var urlPreventCache:Dynamic;
public var xmethod:Bool;

}
