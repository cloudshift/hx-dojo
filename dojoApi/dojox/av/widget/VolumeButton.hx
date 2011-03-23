package dojox.av.widget;

extern class VolumeButton extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setMedia(med:Dynamic):Void;
public function updateIcon(vol:Float):Void;
public function onShowVolume(evt:Dynamic):Void;
public function onDocClick(evt:Dynamic):Void;
public function onHideVolume():Void;
public function onDrag(evt:Dynamic):Void;
public function startDrag():Void;
public function endDrag():Void;
public function handleOver():Void;
public function handleOut():Void;
public function onResize(playerDimensions:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var handleWidth:Dynamic;
public var width:Dynamic;
public var slotWidth:Float;
public var volumeSlider:Dynamic;
public var media:Dynamic;
public var showing:Bool;
public var x:Float;
public var clickOff:Dynamic;
public var isDragging:Bool;
public var cmove:Dynamic;
public var cup:Dynamic;

}
