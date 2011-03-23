package dojox.gfx;

extern class Surface {
public function new():Void;
public function getEventSource():Dynamic;
public function onLoad(surface:Dynamic):Void;
public function whenLoaded(?context:Dynamic,method:Dynamic):Void;
public function setDimensions(width:String,height:String):Dynamic;
public function getDimensions():Dynamic;
public function makeDirty():Void;
public function downloadImage(img:Dynamic,url:String):Void;
public function onImageLoad():Void;
public function connect():Void;
public function disconnect():Void;
public function destroy():Void;
public function createViewport():Void;
public var rawNode:Dynamic;
public var isLoaded:Dynamic;
public var width:Dynamic;
public var height:Dynamic;
public var pendingRender:Dynamic;
public var pendingImageCount:Float;
public var defNode:Dynamic;

}
