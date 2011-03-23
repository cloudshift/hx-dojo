package dojox.editor.plugins;

extern class EditorModifyTableDialog extends dijit.Dialog {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setBrdColor(color:Dynamic):Void;
public function setBkColor(color:Dynamic):Void;
public function onSet():Void;
public function onCancel():Void;
public function onSetTable(tableText:Dynamic):Void;
public var widgetsInTemplate:Dynamic;
public var table:Dynamic;
public var tableAtts:Dynamic;
public var brdColor:Dynamic;
public var bkColor:Dynamic;

}
