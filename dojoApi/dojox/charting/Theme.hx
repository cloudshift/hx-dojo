package dojox.charting;

extern class Theme {
public function defineColors(kwArgs:Dynamic):Dynamic;
public function generateGradient(fillPattern:Dynamic,colorFrom:Dynamic,colorTo:Dynamic):Void;
public function generateHslColor(color:Dynamic,luminance:Dynamic):Void;
public function generateHslGradient(color:Dynamic,fillPattern:Dynamic,lumFrom:Dynamic,lumTo:Dynamic):Dynamic;
public function new(kwArgs:Dynamic):Void;
public function clone():Dynamic;
public function clear():Void;
public function next(?elementType:String,?mixin:Dynamic,?doPost:Bool):Dynamic;
public function skip():Void;
public function addMixin(theme:Dynamic,elementType:String,mixin:Dynamic,doPost:Bool):Dynamic;
public function post(theme:Dynamic,elementType:String):Dynamic;
public function getTick(name:String,?mixin:Dynamic):Dynamic;
public function inspectObjects(f:Dynamic):Void;
public function reverseFills():Void;
public function addMarker(name:String,segment:String):Void;
public function setMarkers(obj:Dynamic):Void;
public var defaultColors:Array<Dynamic>;
public var markers:Dynamic;
public var colors:Dynamic;
public var seriesThemes:Dynamic;
public var markerThemes:Dynamic;
public var noGradConv:Dynamic;
public var noRadialConv:Dynamic;

}
