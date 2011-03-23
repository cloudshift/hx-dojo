package dojox.drawing;

extern class Drawing {
public function new(props:Dynamic,node:Dynamic):Void;
public function resize(box:Dynamic):Void;
public function startup():Void;
public function getShapeProps(data:Dynamic,mode:Dynamic):Void;
public function addPlugin(plugin:Dynamic):Void;
public function initPlugins():Void;
public function onSurfaceReady():Void;
public function addUI(type:String,options:Dynamic):Void;
public function addStencil(type:String,options:Dynamic):Void;
public function removeStencil(stencil:Dynamic):Void;
public function removeAll():Void;
public function selectAll():Void;
public function toSelected(func:String):Void;
public function exporter():Array<Dynamic>;
public function importer(objects:Array<Dynamic>):Void;
public function changeDefaults(newStyle:Dynamic):Void;
public function onRenderStencil(stencil:Dynamic):Void;
public function onDeleteStencil(stencil:Dynamic):Void;
public function registerTool(type:String):Void;
public function getConstructor(abbr:String):Void;
public function setTool(type:String):Void;
public function unSetTool():Void;
public var ready:Bool;
public var mode:String;
public var width:Float;
public var height:Float;
public var canvas:Dynamic;
public var plugins:Array<Dynamic>;
public var undo:Dynamic;
public var anchors:Dynamic;
public var uiStencils:Dynamic;
public var stencils:Dynamic;
public var currentType:Array<Dynamic>;
public var currentStencil:Dynamic;
public var id:Dynamic;
public var util:Dynamic;
public var keys:Dynamic;
public var mouse:Dynamic;
public var tools:Dynamic;
public var stencilTypes:Dynamic;
public var stencilTypeMap:Dynamic;
public var srcRefNode:Dynamic;
public var domNode:Dynamic;
public var widgetId:Dynamic;

}
