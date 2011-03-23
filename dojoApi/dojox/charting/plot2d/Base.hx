package dojox.charting.plot2d;

extern class Base extends dojox.charting.Element {
public function new():Void;
public function plotEvent(o:Dynamic):Void;
public function raiseEvent(o:Dynamic):Void;
public function connect(object:Dynamic,method:Dynamic):Array<Dynamic>;
public function events():Void;
public function resetEvents():Void;
public function fireEvent(seriesName:String,eventName:String,index:Float,?eventObject:Dynamic):Void;
public function clear():Dynamic;
public function setAxis(axis:Dynamic):Dynamic;
public function addSeries(run:Dynamic):Dynamic;
public function getSeriesStats():Void;
public function calculateAxes(dim:Dynamic):Dynamic;
public function isDirty():Bool;
public function isDataDirty():Bool;
public function performZoom(dim:Dynamic,offsets:Dynamic):Dynamic;
public function render(dim:Dynamic,offsets:Dynamic):Dynamic;
public function getRequiredColors():Float;
public function initializeScalers(dim:Dynamic,stats:Dynamic):Dynamic;
public var series:Array<Dynamic>;
public var zoom:Dynamic;
public var zoomQueue:Array<Dynamic>;
public var lastWindow:Dynamic;

}
