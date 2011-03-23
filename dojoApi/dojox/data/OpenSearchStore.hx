package dojox.data;

extern class OpenSearchStore {
public function new(args:Dynamic):Void;
public function getFeatures():Void;
public function getValue(item:Dynamic,attribute:Dynamic,defaultValue:Dynamic):Void;
public function getAttributes(item:Dynamic):Void;
public function hasAttribute(item:Dynamic,attribute:Dynamic):Void;
public function isItemLoaded(item:Dynamic):Void;
public function loadItem(keywordArgs:Dynamic):Void;
public function getLabel(item:Dynamic):Void;
public function getLabelAttributes(item:Dynamic):Void;
public function containsValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Void;
public function getValues(item:Dynamic,attribute:Dynamic):Void;
public function isItem(item:Dynamic):Void;
public function close(request:Dynamic):Void;
public function process(data:Dynamic):Void;
public function processItem(item:Dynamic,attribute:Dynamic):Void;
public var url:String;
public var itemPath:String;
public var iframeElement:Dynamic;
public var urlPreventCache:Bool;
public var ATOM_CONTENT_TYPE:Float;
public var ATOM_CONTENT_TYPE_STRING:String;
public var RSS_CONTENT_TYPE:Float;
public var RSS_CONTENT_TYPE_STRING:String;
public var XML_CONTENT_TYPE:Float;
public var XML_CONTENT_TYPE_STRING:String;
public var contentType:Dynamic;
public var label:Dynamic;

}
