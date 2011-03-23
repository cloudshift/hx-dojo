package dojo.dnd ;

typedef Dnd = {
function manager():Dynamic;
function getViewport():Dynamic;
function autoScroll(e:Dynamic):Void;
function autoScrollNodes(e:Dynamic):Void;
function getCopyKeyState(e:Dynamic):Bool;
function getUniqueId():Void;
function isFormElement(e:Dynamic):Bool;
var V_TRIGGER_AUTOSCROLL:Float;
var H_TRIGGER_AUTOSCROLL:Float;
var V_AUTOSCROLL_VALUE:Float;
var H_AUTOSCROLL_VALUE:Float;
var autoscroll:Dynamic;
var common:Dynamic;
var constrainedMover:Dynamic;
var boxConstrainedMover:Dynamic;
var parentConstrainedMover:Dynamic;

}
