package dijit.layout;

extern class _TabContainerBase extends dijit.layout.StackContainer {
public function constructor():Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var tabPosition:String;
public var tabStrip:Bool;
public var nested:Bool;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
