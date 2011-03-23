package dijit;

extern class Editor extends dijit._editor.RichText {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addPlugin(plugin:Dynamic,?index:Int):Void;
public function resize(size:Dynamic):Void;
public function layout():Void;
public function onBeforeActivate(e:Dynamic):Void;
public function _getBookmark():Void;
public var plugins:Dynamic;
public var extraPlugins:Dynamic;
public var setValueDeferred:Dynamic;
public var commands:Dynamic;
public var toolbar:Dynamic;
public var customUndo:Bool;
public var editActionInterval:Int;

}
