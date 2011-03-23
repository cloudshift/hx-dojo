package dojox.charting;

extern class DataSeries {
public function new(store:Dynamic,kwArgs:Dynamic,value:Dynamic):Void;
public function destroy():Void;
public function setSeriesObject(series:Dynamic):Void;
public function fetch():Void;
public function onFetchError(errorData:Dynamic,request:Dynamic):Void;
public var series:Dynamic;
public var items:Dynamic;
public var data:Array<Dynamic>;
public var itemMap:Dynamic;
public var store:Dynamic;
public var kwArgs:Dynamic;
public var value:Dynamic;

}
