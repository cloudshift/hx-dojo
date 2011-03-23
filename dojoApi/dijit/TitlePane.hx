package dijit;

extern class TitlePane extends dijit.layout.ContentPane {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setTitle(title:String):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var cssStateNodes:Dynamic;
public var open:Bool;
public var toggleable:Bool;
public var tabIndex:String;
public var duration:Int;
public var hideNode:Dynamic;
public var wipeNode:Dynamic;
public var titleBarNode:Dynamic;

}
