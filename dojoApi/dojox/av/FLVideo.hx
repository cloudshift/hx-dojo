package dojox.av;

extern class FLVideo extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function getTime():Float;
public function onLoad(mov:Dynamic):Void;
public function onDownloaded(percent:Float):Void;
public function onSwfSized(data:Dynamic):Void;
public function onMetaData(data:Dynamic,evt:Dynamic):Void;
public function onPosition(time:Float):Void;
public function onStart(data:Dynamic):Void;
public function onPlay(data:Dynamic):Void;
public function onPause(data:Dynamic):Void;
public function onEnd(data:Dynamic):Void;
public function onStop():Void;
public function onBuffer(isBuffering:Bool):Void;
public function onError(data:Dynamic,url:String):Void;
public function onStatus(data:Dynamic):Void;
public function onPlayerStatus(data:Dynamic):Void;
public function onResize():Void;
public function play(?newUrl:String):Void;
public function pause():Void;
public function seek(time:Float):Void;
public function volume(vol:Float):Float;
public var mediaUrl:String;
public var initialVolume:Float;
public var autoPlay:Bool;
public var bufferTime:Float;
public var minBufferTime:Float;
public var updateTime:Float;
public var isDebug:Bool;
public var percentDownloaded:Dynamic;
public var flashMedia:Dynamic;
public var status:String;
public var duration:Dynamic;
public var isBuffering:Dynamic;
public var isPlaying:Bool;
public var isStopped:Bool;

}
