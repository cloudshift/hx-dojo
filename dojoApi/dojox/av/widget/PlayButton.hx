package dojox.av.widget;

extern class PlayButton extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setMedia(med:Dynamic):Void;
public function onPlay():Void;
public function onPause():Void;
public function showPlay():Void;
public function showPause():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var media:Dynamic;

}
