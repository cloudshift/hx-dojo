package dojox.analytics ;

typedef NAnalytics = {
function schedulePusher(interval:Int):Void;
function addData(dataType:Dynamic,data:Dynamic):Void;
function checkData():Void;
function onPushComplete(results:Dynamic):Void;
var sendInterval:Float;
var inTransitRetry:Float;
var dataUrl:Dynamic;
var sendMethod:String;
var maxRequestSize:Dynamic;

}
