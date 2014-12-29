package com.hendrix.mirror.resources.attachments
{
	public class AttachmentsListResponse
	{
		/**
		 * The type of resource. This is always mirror#attachmentsList. 
		 */
		public var kind:String = "mirror#attachmentsList";
		
		/**
		 * The list of attachments. 
		 */
		public var items:Vector.<Attachment> = null;
		
		public function AttachmentsListResponse()
		{
			items = new Vector.<Attachment>();
		}
	}
}