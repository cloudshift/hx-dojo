package dojox.charting.plot2d;

extern class _PlotEvents {
public function new():Void;
public function destroy():Void;
public function plotEvent(o:Dynamic):Void;
public function raiseEvent(o:Dynamic):Void;
public function connect(object:Dynamic,method:Dynamic):Array<Dynamic>;
public function events():Void;
public function resetEvents():Void;
public function fireEvent(seriesName:String,eventName:String,index:Float,?eventObject:Dynamic):Void;
public var dirty:Dynamic;

}
