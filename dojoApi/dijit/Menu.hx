package dijit;

extern class Menu extends dijit._MenuBase {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _onKeyPress(evt:Dynamic):Void;
public function _iframeContentDocument(iframe_el:Dynamic):Dynamic;
public function bindDomNode(node:Dynamic):Void;
public function unBindDomNode(nodeName:Dynamic):Void;
public function getPlaceholders(?label:String):Dynamic;
public var targetNodeIds:Array<String>;
public var contextMenuForWindow:Bool;
public var leftClickToOpen:Bool;
public var refocus:Bool;

}
