package dojox.widget;

extern class DataPresentation {
public function new(node:Dynamic,args:Dynamic):Void;
public function setURL(?url:String,?urlContent:Dynamic,?refreshInterval:Float):Void;
public function setData(?data:Dynamic,?refreshInterval:Float):Void;
public function refresh():Void;
public function cancelRefresh():Void;
public function setStore(?store:Dynamic,?query:String,?queryOptions:Dynamic):Void;
public function setPreparedStore(?store:Dynamic,?query:String,?queryOptions:Dynamic):Void;
public function renderChartWidget():Void;
public function renderGridWidget():Void;
public function getChartWidget():Void;
public function getGridWidget():Void;
public function destroy():Void;
public var type:String;
public var chartType:String;
public var reverse:Bool;
public var animate:Dynamic;
public var labelMod:Int;
public var legendHorizontal:Bool;
public var url:Dynamic;
public var urlContent:Dynamic;
public var refreshInterval:Dynamic;
public var refreshIntervalPending:Dynamic;
public var data:Dynamic;
public var preparedstore:Dynamic;
public var query:Dynamic;
public var queryOptions:Dynamic;
public var chartWidget:Dynamic;
public var legendWidget:Dynamic;
public var gridWidget:Dynamic;
public var domNode:Dynamic;
public var theme:Dynamic;

}
