package dojox.mobile.app;

extern class StageController {
public function new(node:Dynamic):Void;
public function getActiveSceneController():Void;
public function pushScene(sceneName:Dynamic,params:Dynamic):Void;
public function setZIndex(controller:Dynamic,idx:Dynamic):Void;
public function popScene(data:Dynamic):Void;
public function popScenesTo(sceneName:Dynamic,data:Dynamic):Void;
public var scenes:Array<Dynamic>;
public var effect:String;
public var domNode:Dynamic;

}
