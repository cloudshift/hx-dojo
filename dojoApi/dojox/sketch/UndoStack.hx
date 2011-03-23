package dojox.sketch;

extern class UndoStack {
public function new(figure:Dynamic):Void;
public function apply(state:Dynamic,from:Dynamic,to:Dynamic):Void;
public function add(cmd:String,?ann:Dynamic,?before:String):Void;
public function destroy():Void;
public function undo():Void;
public function redo():Void;
public var figure:Dynamic;

}
