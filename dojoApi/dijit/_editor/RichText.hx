package dijit._editor;

extern class RichText extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setupDefaultShortcuts():Void;
public function addStyleSheet(uri:Dynamic):Void;
public function removeStyleSheet(uri:Dynamic):Void;
public function onLoad(html:String):Void;
public function setDisabled(disabled:Bool):Void;
public function addKeyHandler(key:String,ctrl:Bool,shift:Bool,handler:Dynamic):Void;
public function _onIEMouseDown(e:Dynamic):Void;
public function blur():Void;
public function focus():Void;
public function onChange(newContent:Dynamic):Void;
public function execCommand(command:String,argument:Dynamic):Void;
public function queryCommandEnabled(command:String):Void;
public function queryCommandState(command:Dynamic):Void;
public function queryCommandValue(command:Dynamic):Void;
public function setValue(html:String):Void;
public function replaceValue(html:String):Void;
public function getNodeHtml(node:Dynamic):String;
public function getNodeChildrenHtml(dom:Dynamic):Void;
public function _inserthorizontalruleImpl(argument:Dynamic):Void;
public function _unlinkImpl(argument:Dynamic):Void;
public function _hilitecolorImpl(argument:Dynamic):Void;
public function _backcolorImpl(argument:Dynamic):Void;
public function _forecolorImpl(argument:Dynamic):Void;
public function _inserthtmlImpl(argument:Dynamic):Void;
public function getHeaderHeight():Float;
public function getFooterHeight():Float;
public var cssStateNodes:Dynamic;
public var inheritWidth:Bool;
public var focusOnLoad:Bool;
public var name:String;
public var styleSheets:String;
public var height:String;
public var minHeight:String;
public var onLoadDeferred:Dynamic;
public var isTabIndent:Bool;
public var disableSpellCheck:Bool;
public var captureEvents:Array<String>;
public var savedContent:Dynamic;
public var header:Dynamic;
public var editingArea:Dynamic;
public var footer:Dynamic;
public var editorObject:Dynamic;
public var editingAreaStyleSheets:Array<Dynamic>;
public var disabled:Bool;
public var tabStop:Dynamic;
public var focusNode:Dynamic;
public var updateInterval:Float;
public var contentPreFilters:Dynamic;
public var contentPostFilters:Array<Dynamic>;
public var contentDomPreFilters:Array<Dynamic>;
public var contentDomPostFilters:Array<Dynamic>;
public var value:Dynamic;

}