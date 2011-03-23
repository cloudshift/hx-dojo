package dojox.form.manager;

extern class _FormMixin {
public function startup():Void;
public function onReset():Bool;
public function reset():Void;
public function onSubmit():Bool;
public function submit():Void;
public function isValid():Void;
public var name:String;
public var action:String;
public var method:String;
public var encType:String;
// public var accept-charset:String;
public var accept:String;
public var target:String;
public var isForm:Bool;

}
