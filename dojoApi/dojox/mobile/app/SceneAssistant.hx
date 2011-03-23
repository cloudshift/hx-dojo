package dojox.mobile.app;

extern class SceneAssistant {
public function new():Void;
public function setup():Void;
public function activate(params:Dynamic):Void;
public function deactivate():Void;
public function destroy():Void;
public function connect(obj:Dynamic,method:Dynamic,callBack:Dynamic):Void;
public function disconnect():Void;

}
