package dojox.layout;

extern class ResizeHandle extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function onResize(e:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var targetId:String;
public var targetContainer:Dynamic;
public var resizeAxis:String;
public var activeResize:Bool;
public var activeResizeClass:String;
public var animateSizing:Bool;
public var animateMethod:String;
public var animateDuration:Int;
public var minHeight:Int;
public var minWidth:Int;
public var constrainMax:Bool;
public var maxHeight:Int;
public var maxWidth:Int;
public var fixedAspect:Bool;
public var intermediateChanges:Bool;
public var startTopic:String;
public var endTopic:String;
public var targetWidget:Dynamic;
public var targetDomNode:Dynamic;
public var startPoint:Dynamic;
public var startSize:Dynamic;

}
