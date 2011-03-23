package dojox.image;

extern class ThumbnailPicker extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function init():Void;
public function getClickTopicName():String;
public function getShowTopicName():String;
public function setDataStore(dataStore:Dynamic,request:Dynamic,paramNames:Dynamic):Void;
public function reset():Void;
public function isVisible(index:Dynamic):Void;
public function resize(dim:Dynamic):Void;
public function markImageLoaded(index:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var imageStore:Dynamic;
public var size:Float;
public var thumbHeight:Float;
public var thumbWidth:Float;
public var useLoadNotifier:Bool;
public var useHyperlink:Bool;
public var hyperlinkTarget:String;
public var isClickable:Bool;
public var isScrollable:Bool;
public var isHorizontal:Bool;
public var autoLoad:Bool;
public var linkAttr:String;
public var imageThumbAttr:String;
public var imageLargeAttr:String;
public var pageSize:Float;
public var titleAttr:String;
public var widgetid:Dynamic;
public var isInitialized:Bool;

}
