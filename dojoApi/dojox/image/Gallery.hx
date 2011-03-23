package dojox.image;

extern class Gallery extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setDataStore(dataStore:Dynamic,request:Dynamic,paramNames:Dynamic):Void;
public function reset():Void;
public function showNextImage(inTimer:Bool):Void;
public function toggleSlideshow():Void;
public function toggleSlideShow():Void;
public function showImage(index:Dynamic,callBack:Dynamic):Void;
public function resize(dim:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var imageHeight:Float;
public var imageWidth:Float;
public var pageSize:Float;
public var autoLoad:Bool;
public var linkAttr:String;
public var imageThumbAttr:String;
public var imageLargeAttr:String;
public var titleAttr:String;
public var slideshowInterval:Int;
public var widgetid:Dynamic;
public var thumbPicker:Dynamic;
public var slideShow:Dynamic;

}
