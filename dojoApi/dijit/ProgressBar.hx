package dijit;

extern class ProgressBar extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function update(?attributes:Dynamic):Void;
public function report(percent:Float):Void;
public function onChange():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var progress:String;
public var maximum:Float;
public var places:Float;
public var indeterminate:Bool;
public var name:String;
public var internalProgress:Dynamic;

}
