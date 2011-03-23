package dojox.charting.plot2d;

extern class Grid extends dojox.charting.Element {
public function new(chart:Dynamic,?kwArgs:Dynamic):Void;
public function clear():Dynamic;
public function setAxis(axis:Dynamic):Dynamic;
public function addSeries(run:Dynamic):Dynamic;
public function getSeriesStats():Void;
public function initializeScalers():Void;
public function isDirty():Bool;
public function performZoom(dim:Dynamic,offsets:Dynamic):Dynamic;
public function getRequiredColors():Float;
public function render(dim:Dynamic,offsets:Dynamic):Dynamic;
public var optionalParams:Dynamic;
public var opt:Dynamic;
public var hAxis:Dynamic;
public var vAxis:Dynamic;
public var animate:Dynamic;
public var zoom:Dynamic;
public var zoomQueue:Array<Dynamic>;
public var lastWindow:Dynamic;

}
