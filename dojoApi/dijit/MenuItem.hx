package dijit;

extern class MenuItem extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function getParent():Void;
public function getPreviousSibling():Dynamic;
public function getNextSibling():Dynamic;
public function getIndexInParent():Int;
public function _onHover():Void;
public function _onUnhover():Void;
public function focus():Void;
public function setLabel(content:String):Void;
public function setDisabled(disabled:Bool):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var cssStateNodes:Dynamic;
public var attributeMap:Dynamic;
public var accelKey:String;
public var disabled:Bool;

}
