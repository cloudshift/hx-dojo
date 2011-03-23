package dojox.form;

extern class RadioStack extends dojox.form.CheckedMultiSelect {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onAddChild(pane:Dynamic,?insertIndex:Int):Void;
public function onRemoveChild(pane:Dynamic):Void;
public function onSelectChild(pane:Dynamic):Void;
public function onStartup(info:Dynamic):Void;
public var stackId:String;
public var stackPrefix:String;

}
