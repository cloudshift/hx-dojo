package dojox.atom.widget;

extern class FeedEntryEditor extends dojox.atom.widget.FeedEntryViewer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function saveEdits():Void;
public function cancelEdits():Void;
public function clearEditors():Void;
public var enableEdit:Bool;
public var entryNewButton:Dynamic;
public var entryContentNode:Dynamic;

}
