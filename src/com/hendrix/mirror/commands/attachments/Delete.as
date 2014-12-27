package com.hendrix.mirror.commands.attachments
{
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import flash.utils.ByteArray;
	
	/**
	 * Deletes an attachment from a timeline item.   
	 * @author Tomer
	 * 
	 */
	public class Delete extends MirrorRequest
	{
		private var _attachmentId:String = null;
		private var _itemId:String = null;

		public function Delete(itemId:String, attachmentId:String)
		{
			super();		

			_itemId = itemId;
			_attachmentId = attachmentId;
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			new RequestBuilder(this).DELETE().url(SConfig.HOST + "/mirror/v1/timeline/" + _itemId + "/attachments" + "/" + _attachmentId).addQuery("access_token", _oauthToken);

			super.execute($onComplete, $onError);
		}
		
		/**
		 * The ID of the attachment.
		 */ 
		public function getAttachmentId():String
		{
			return _attachmentId;
		}

		/**
		 * The ID of the attachment.
		 */ 
		public function setAttachmentId(value:String):void
		{
			_attachmentId = value;
		}

		/**
		 * The ID of the timeline item the attachment belongs to.
		 */ 
		public function getItemId():String
		{
			return _itemId;
		}

		/**
		 * The ID of the timeline item the attachment belongs to.
		 */ 
		public function setItemId(value:String):void
		{
			_itemId = value;
		}

	}
	
}