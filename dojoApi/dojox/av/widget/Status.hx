package dojox.av.widget;

extern class Status extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setMedia(med:Dynamic):Void;
public function onMetaData(data:Dynamic):Void;
public function onBuffer(isBuffering:Dynamic):Void;
public function onPosition(time:Dynamic):Void;
public function onStart():Void;
public function onPlay():Void;
public function onPause():Void;
public function onStop():Void;
public function onEnd():Void;
public function onError(evt:Dynamic):Void;
public function onLoad():Void;
public function setStatus(str:Dynamic,isError:Dynamic):Void;
public function toSeconds(time:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var timeNode:Dynamic;
public var media:Dynamic;
public var duration:Dynamic;
public var isBuffering:Dynamic;

}
