package dojo.fx;

extern class Toggler {
public function showFunc():Void;
public function hideFunc():Void;
public function new(args:Dynamic):Void;
public function show(?delay:Int):Void;
public function hide(?delay:Int):Void;
public var node:Dynamic;
public var showDuration:Dynamic;
public var hideDuration:Dynamic;

}
