package dojox.sketch;

extern class Figure {
public function hasSelections():Void;
public function isSelected(obj:Dynamic):Void;
public function select(obj:Dynamic):Void;
public function deselect(obj:Dynamic):Void;
public function clearSelections():Void;
public function replaceSelection(n:Dynamic,o:Dynamic):Void;
public function onDblClickShape(shape:Dynamic,e:Dynamic):Void;
public function onCreateShape(shape:Dynamic):Void;
public function onBeforeCreateShape(shape:Dynamic):Void;
public function nextKey():Void;
public function draw():Void;
public function getFit():Void;
public function add(annotation:Dynamic):Void;
public function remove(annotation:Dynamic):Void;
public function getAnnotator(id:Dynamic):Void;
public function convert(ann:Dynamic,t:Dynamic):Void;
public function onLoad():Void;
public function onClick():Void;
public function onUndo():Void;
public function onBeforeUndo():Void;
public function onRedo():Void;
public function onBeforeRedo():Void;
public function undo():Void;
public function redo():Void;
public function serialize():Void;
public var annCounter:Float;
public var shapes:Array<Dynamic>;
public var image:Dynamic;
public var imageSrc:Dynamic;
public var size:Dynamic;
public var surface:Dynamic;
public var group:Dynamic;
public var node:Dynamic;
public var zoomFactor:Float;
public var tools:Dynamic;
public var obj:Dynamic;
public var selected:Array<Dynamic>;
public var gridSize:Float;
public var getValue:Dynamic;

}
