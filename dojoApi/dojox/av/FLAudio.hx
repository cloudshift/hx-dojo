package dojox.av;

extern class FLAudio {
public function new(options:Dynamic):Void;
public function init():Void;
public function load(options:Dynamic):String;
public function doPlay(options:Dynamic):Void;
public function pause(options:Dynamic):Void;
public function stop(options:Dynamic):Void;
public function setVolume(options:Dynamic):Void;
public function setPan(options:Dynamic):Void;
public function getVolume(options:Dynamic):Void;
public function getPan(options:Dynamic):Void;
public function getPosition(options:Dynamic):Void;
public function onError(msg:Dynamic):Void;
public function onLoadStatus(events:Array<Dynamic>):Void;
public function onAllLoaded():Void;
public function onPlayStatus(events:Array<Dynamic>):Void;
public function onComplete(events:Array<Dynamic>):Void;
public function onLoad():Void;
public function onID3(evt:Dynamic):Void;
public function destroy():Void;
public var id:String;
public var initialVolume:Float;
public var initialPan:Float;
public var isDebug:Bool;
public var statusInterval:Float;
public var domNode:Dynamic;

}
