package flexed.widgets.form {
	import mx.controls.Label;
	import mx.core.UIComponent;
	import mx.controls.Alert;
	import mx.events.IndexChangedEvent;
	import mx.controls.Spacer;
	
	public class CFormItemSpace implements CFormItemRenderer {
		private var spacer:Spacer;
		
		public function CFormItemSpace()
		{
			spacer = new Spacer();
			spacer.height = 21;
			spacer.width = 175;
		}
				
		public function getUIComponent():UIComponent	{
			return spacer;
		}
		
		
		public function getValue():Object
		{
			return null;
		}
		
		public function isEditable():Boolean
		{
			return false;
		}
		
		public function setEnabled(enabled:Boolean):void
		{

		}
		
		public function isEnabled():Boolean
		{
			return false;
		}
		
		public function setEditable(editable:Boolean):void
		{

		}
		
		
		public function setValue(value:Object):void
		{

		}
		
		
		
		
		
		
		
		
		
		
		public function setWidth(width:String):void
		{
			spacer.width=int(width);	
		}
		public function setHeight(height:String):void
		{
			spacer.height=int(height);
		}
		
		public function setAttributes(attributes:Array):void {
			if (attributes["width"]!=null)
				setWidth(attributes["width"]);
			if (attributes["height"]!=null)
				setHeight(attributes["height"]);
		}
		
		public function setAttributesFromXML(attributes:XMLList):void {
			var tmp:Array = new Array();
			var attrList:XMLList = attributes.attributes();
			
			for(var i:int = 0;i < attrList.length();i++) {
				var name:String = attrList[i].name();
				tmp[name] = attrList[i];
			}			
			setAttributes(tmp);
		}
		
	}
}