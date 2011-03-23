package dojox.geo.charting;

extern class Map {
public function new(container:Dynamic,shapeFile:String):Void;
public function setMarkerData(markerFile:String):Void;
public function setDataStore(dataStore:Dynamic,query:Dynamic):Void;
public function addSeries(series:Dynamic):Void;
public function onFeatureClick(feature:Dynamic):Void;
public function onFeatureOver(feature:Dynamic):Void;
public function onZoomEnd(feature:Dynamic):Void;
public var defaultColor:String;
public var highlightColor:String;
public var series:Array<Dynamic>;
public var dataStore:Dynamic;
public var containerSize:Dynamic;
public var surface:Dynamic;
public var container:Dynamic;

}
