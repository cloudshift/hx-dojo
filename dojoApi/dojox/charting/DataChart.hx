package dojox.charting;

extern class DataChart extends dojox.charting.Chart2D {
public function new(node:Dynamic,kwArgs:Dynamic):Void;
public function setStore(store:Dynamic,query:Dynamic,fieldName:Dynamic,queryOptions:Dynamic):Void;
public function show():Void;
public function hide():Void;
public function onSet(item:Dynamic):Void;
public function onError(err:Dynamic):Void;
public function onDataReceived(items:Array<Dynamic>):Void;
public function getProperty(item:Dynamic,prop:Dynamic):Void;
public function onData(items:Array<Dynamic>):Void;
public function fetch():Void;
public function convertLabels(axis:Dynamic):Dynamic;
public function seriesLabels(val:Float):String;
public function resizeChart(dim:Dynamic):Void;
public var scroll:Bool;
public var comparative:Bool;
public var query:String;
public var queryOptions:String;
public var fieldName:String;
public var chartTheme:Dynamic;
public var displayRange:Float;
public var stretchToFit:Bool;
public var minWidth:Float;
public var minHeight:Float;
public var showing:Bool;
public var label:String;
public var firstRun:Dynamic;
public var store:Dynamic;
public var onSetInterval:Float;
public var items:Dynamic;
public var dataOffset:Float;
public var dataLength:Float;
public var domNode:Dynamic;
public var onSetItems:Dynamic;
public var seriesData:Dynamic;
public var seriesDataBk:Dynamic;

}
