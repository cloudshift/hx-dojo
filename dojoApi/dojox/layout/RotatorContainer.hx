package dojox.layout;

extern class RotatorContainer extends dijit.layout.StackContainer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var showTabs:Bool;
public var transitionDelay:Int;
public var transition:String;
public var transitionDuration:Int;
public var autoStart:Bool;
public var suspendOnHover:Bool;
public var pauseOnManualChange:Bool;
public var reverse:Bool;
public var pagerId:String;
public var cycles:Int;
public var pagerClass:String;
public var tabNode:Dynamic;

}
