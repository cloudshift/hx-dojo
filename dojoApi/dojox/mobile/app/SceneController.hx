package dojox.mobile.app;

extern class SceneController extends dojox.mobile.View {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function init(sceneName:Dynamic,params:Dynamic):Void;
public function query(selector:Dynamic,node:Dynamic):Void;
public function parse(node:Dynamic):Void;
public function getWindowSize():Void;
public function showAlertDialog(props:Dynamic):Void;
public function popupSubMenu(info:Dynamic):Void;
public var stageController:Dynamic;
public var sceneName:Dynamic;
public var sceneAssistantName:Dynamic;

}
