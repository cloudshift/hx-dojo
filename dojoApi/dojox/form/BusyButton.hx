package dojox.form;

extern class BusyButton extends dijit.form.Button {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function makeBusy():Void;
public function cancel():Void;
public function resetTimeout(timeout:Int):Void;
public var isBusy:Bool;
public var busyLabel:String;
public var timeout:Dynamic;
public var useIcon:Dynamic;

}
