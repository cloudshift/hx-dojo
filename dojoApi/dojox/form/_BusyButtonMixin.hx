package dojox.form;

extern class _BusyButtonMixin {
public function postMixInProperties():Void;
public function postCreate():Void;
public function makeBusy():Void;
public function cancel():Void;
public function resetTimeout(timeout:Int):Void;
public function setLabel(content:String,timeout:Int):Void;
public var isBusy:Bool;
public var busyLabel:String;
public var timeout:Dynamic;
public var useIcon:Dynamic;
public var label:Dynamic;

}
