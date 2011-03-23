package dijit.form;

extern class Form extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function reset():Void;
public function validate():Void;
public function setValues(val:Dynamic):Void;
public function getValues():Void;
public function isValid():Void;
public function onValidStateChange(isValid:Dynamic):Void;
public function connectChildren():Void;
public function execute(formContents:Dynamic):Void;
public function onExecute():Void;
public function onReset(?e:Dynamic):Bool;
public function onSubmit(?e:Dynamic):Bool;
public function submit():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var name:String;
public var action:String;
public var method:String;
public var encType:String;
// public var accept-charset:String;
public var accept:String;
public var target:String;
public var attributeMap:Dynamic;
public var nameAttrSetting:Dynamic;

}
