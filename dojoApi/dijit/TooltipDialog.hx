package dijit;

extern class TooltipDialog extends dijit.layout.ContentPane {
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
public function onCancel():Void;
public function onExecute():Void;
public function _getFocusItems(dialogNode:Dynamic):Void;
public function orient(node:Dynamic,aroundCorner:String,corner:String):Void;
public function onOpen(pos:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var autofocus:Bool;

}
