package dojox.analytics ;

typedef Analytics = {
function schedulePusher(interval:Int):Void;
function addData(dataType:Dynamic,data:Dynamic):Void;
function checkData():Void;
function pushData():Void;
function getQueryPacket():Void;
function onPushComplete(results:Dynamic):Void;

}
