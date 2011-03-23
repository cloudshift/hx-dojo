package dojox.widget;

extern class FisheyeList extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function onResized():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var isContainer:Bool;
public var snarfChildDomOutput:Dynamic;
public var itemWidth:Int;
public var itemHeight:Int;
public var itemMaxWidth:Int;
public var itemMaxHeight:Int;
public var imgNode:Dynamic;
public var orientation:String;
public var isFixed:Bool;
public var conservativeTrigger:Bool;
public var effectUnits:Float;
public var itemPadding:Int;
public var attachEdge:String;
public var labelEdge:String;
public var isHorizontal:Bool;
public var selectedNode:Float;
public var isOver:Dynamic;
public var hitX1:Float;
public var hitY1:Float;
public var hitX2:String;
public var hitY2:String;
public var anchorEdge:Dynamic;
public var proximityLeft:Float;
public var proximityRight:Float;
public var proximityTop:Float;
public var proximityBottom:Float;
public var children:Dynamic;
public var itemCount:Dynamic;
public var barWidth:Float;
public var barHeight:Float;
public var totalWidth:String;
public var totalHeight:String;
public var timerScale:Float;

}
