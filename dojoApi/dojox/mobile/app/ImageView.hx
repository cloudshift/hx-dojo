package dojox.mobile.app;

extern class ImageView extends dojox.mobile.app._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function isAnimating():Void;
public function handleDragEnd():Void;
public function handleFlick(event:Dynamic):Void;
public function moveTo(direction:Dynamic):Void;
public function onChange(direction:Dynamic):Void;
public function zoomTo(centerX:Dynamic,centerY:Dynamic,zoom:Dynamic):Void;
public function render():Void;
public function onLoad(type:String,url:String,isSmall:Bool):Void;
public var zoom:Float;
public var zoomCenterX:Float;
public var zoomCenterY:Float;
public var maxZoom:Float;
public var autoZoomLevel:Float;
public var disableAutoZoom:Bool;
public var disableSwipe:Bool;
public var autoZoomEvent:String;
public var size:Dynamic;
public var downX:Dynamic;
public var downY:Dynamic;
public var panX:Float;
public var panY:Float;
public var dispWidth:Float;
public var dispHeight:Float;
public var handleLoad:Dynamic;

}
