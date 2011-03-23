package dojox.layout;

extern class FloatingPane extends dojox.layout.ContentPane {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setTitle(title:String):Void;
public function close():Void;
public function hide(?callBack:Dynamic):Void;
public function show(?callBack:Dynamic):Void;
public function minimize():Void;
public function maximize():Void;
public function bringToTop():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var dockable:Bool;
public var resizable:Bool;
public var maxable:Bool;
public var resizeAxis:String;
public var dockTo:Dynamic;
public var duration:Int;
public var iconSrc:String;
public var contentClass:String;
public var bgIframe:Dynamic;

}
