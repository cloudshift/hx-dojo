package dojox.charting;

extern class Chart3D {
public function new(node:Dynamic,lights:Dynamic,camera:Dynamic,theme:Dynamic):Void;
public function generate():Void;
public function invalidate():Void;
public function render():Void;
public function addPlot(plot:Dynamic):Void;
public function removePlot(plot:Dynamic):Void;
public function addWall(wall:Dynamic):Void;
public function removeWall(wall:Dynamic):Void;
public var node:Dynamic;
public var surface:Dynamic;
public var view:Dynamic;
public var theme:Dynamic;
public var walls:Array<Dynamic>;
public var plots:Array<Dynamic>;

}
