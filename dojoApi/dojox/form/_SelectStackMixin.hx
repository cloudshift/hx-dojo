package dojox.form;

extern class _SelectStackMixin {
public function onAddChild(pane:Dynamic,?insertIndex:Int):Void;
public function attr(name:Dynamic,?value:Dynamic):Void;
public function onRemoveChild(pane:Dynamic):Void;
public function onSelectChild(pane:Dynamic):Void;
public function onStartup(info:Dynamic):Void;
public function postMixInProperties():Void;
public function postCreate():Void;
public function destroy():Void;
public var stackId:String;
public var stackPrefix:String;

}
