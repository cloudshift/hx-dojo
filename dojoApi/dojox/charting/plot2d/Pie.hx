package dojox.charting.plot2d;

extern class Pie extends dojox.charting.Element {
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
public function initializeScalers():Void;
public function getRequiredColors():Void;
public function render(dim:Dynamic,offsets:Dynamic):Dynamic;
public var dyn:Array<Dynamic>;

}
