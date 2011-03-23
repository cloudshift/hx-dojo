package dojox.data;

extern class CsvStore {
public function new(keywordParameters:Dynamic):Void;
public function getValue(item:Dynamic,attribute:Dynamic,?defaultValue:Dynamic):String;
public function getValues(item:Dynamic,attribute:Dynamic):Array<Dynamic>;
public function getAttributes(item:Dynamic):Array<Dynamic>;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Bool;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function isItem(something:Dynamic):Bool;
public function isItemLoaded(something:Dynamic):Bool;
public function loadItem(item:Dynamic):Void;
public function getFeatures():Dynamic;
public function getLabel(item:Dynamic):String;
public function getLabelAttributes(item:Dynamic):Array<Dynamic>;
public function _fetchItems(keywordArgs:Dynamic,findCallback:Dynamic,errorCallback:Dynamic):Void;
public function close(request:Dynamic):Void;
public function getIdentity(item:Dynamic):String;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;
public function getIdentityAttributes(item:Dynamic):Void;
public var url:String;
public var label:String;
public var identifier:String;
public var separator:String;
public var urlPreventCache:Bool;
public var _getArrayOfArraysFromCsvFileContents:Dynamic;

}
