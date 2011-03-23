package dojox.mobile;

extern class View extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onStartView():Void;
public function onBeforeTransitionIn(moveTo:Dynamic,dir:Dynamic,transition:Dynamic,context:Dynamic,method:Dynamic):Void;
public function onAfterTransitionIn(moveTo:Dynamic,dir:Dynamic,transition:Dynamic,context:Dynamic,method:Dynamic):Void;
public function onBeforeTransitionOut(moveTo:Dynamic,dir:Dynamic,transition:Dynamic,context:Dynamic,method:Dynamic):Void;
public function onAfterTransitionOut(moveTo:Dynamic,dir:Dynamic,transition:Dynamic,context:Dynamic,method:Dynamic):Void;
public function performTransition(moveTo:String,dir:Float,transition:String,context:Dynamic,method:Dynamic):Void;
public function onAnimationStart(e:Dynamic):Void;
public function onAnimationEnd(e:Dynamic):Void;
public function invokeCallback():Void;
public function addChild(widget:Dynamic):Void;
public function wakeUp(node:Dynamic):Void;
public var keepScrollPos:Bool;
public var toNode:Dynamic;

}
