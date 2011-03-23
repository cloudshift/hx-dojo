package dijit;

extern class _Templated {
public function constructor():Void;
public function buildRendering():Void;
public function _fillContent(source:Dynamic):Void;
public function startup():Void;
public function destroyRendering():Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var domNode:Dynamic;
public var containerNode:Dynamic;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
