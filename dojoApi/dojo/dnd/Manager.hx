package dojo.dnd;

extern class Manager {
public function new():Void;
public function overSource(source:Dynamic):Void;
public function outSource(source:Dynamic):Void;
public function startDrag(source:Dynamic,nodes:Array<Dynamic>,copy:Bool):Void;
public function stopDrag():Void;
public function makeAvatar():Void;
public function updateAvatar():Void;
public function onMouseMove(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function onKeyDown(e:Dynamic):Void;
public function onKeyUp(e:Dynamic):Void;
public var OFFSET_X:Float;
public var OFFSET_Y:Float;
public var target:Dynamic;
public var canDropFlag:Bool;
public var source:Dynamic;
public var nodes:Array<Dynamic>;
public var copy:Dynamic;
public var avatar:Dynamic;
public var events:Array<Dynamic>;

}
