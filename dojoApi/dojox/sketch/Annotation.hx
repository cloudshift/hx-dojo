package dojox.sketch;

extern class Annotation {
public function type():Void;
public function getType():Void;
public function onRemove(noundo:Dynamic):Void;
public function property(name:Dynamic,value:Dynamic):Void;
public function onPropertyChange(name:Dynamic,oldvalue:Dynamic):Void;
public function onCreate():Void;
public function onDblClick(e:Dynamic):Void;
public function initialize():Void;
public function destroy():Void;
public function draw():Void;
public function apply(obj:Dynamic):Void;
public function serialize():Void;
public function getBBox():Void;
public function setBinding(pt:Dynamic):Void;
public function getTextBox(zoomfactor:Dynamic):Void;
public function zoom(pct:Dynamic):Void;
public function writeCommonAttrs():Void;
public function register(name:Dynamic,toolclass:Dynamic):Void;
public var id:Dynamic;
public var figure:Dynamic;
public var mode:Dynamic;
public var shape:Dynamic;
public var boundingBox:Dynamic;
public var hasAnchors:Dynamic;
public var anchors:Dynamic;
public var constructor:Dynamic;

}
