package dojox.mobile.app;

extern class AlertDialog extends dijit._Widget {
public function onChoose():Void;
public function new():Void;
public function show():Void;
public function hide():Void;
public var text:String;
public var controller:Dynamic;
public var buttons:Array<Dynamic>;
public var defaultButtonLabel:String;
public var mask:Dynamic;
public var onClick:Dynamic;

}
