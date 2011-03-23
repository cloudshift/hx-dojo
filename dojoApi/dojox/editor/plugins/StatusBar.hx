package dojox.editor.plugins;

extern class StatusBar extends dijit._editor._Plugin {
public function _getValueAttr():Void;
public function _setValueAttr(str:String):Void;
public function set(attr:Dynamic,val:Dynamic):Void;
public function get(attr:Dynamic):Void;
public var statusBar:Dynamic;
public var resizer:Bool;
public var resizeHandle:Dynamic;

}
