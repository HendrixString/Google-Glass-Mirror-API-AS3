package com.hendrix.mirror.commands.attachments
{
	import com.hendrix.mirror.Mirror;
	import com.hendrix.mirror.commands.MirrorCommand;
	
	import flash.utils.ByteArray;

	public class Attachments extends MirrorCommand
	{
		public function Attachments(service:Mirror)
		{
			super(service);
		}
		
		/**
		 * Deletes an attachment from a timeline item.  
		 * @param itemId
		 * @param attachmentId
		 * @return 
		 * 
		 */
		public function DeleteItem(itemId:String, attachmentId:String):Delete
		{
			return new Delete(itemId, attachmentId);
		}
		
		/**
		 * Retrieves an attachment on a timeline item by item ID and attachment ID 
		 * @param itemId
		 * @param attachmentId
		 * @return 
		 * 
		 */
		public function get(itemId:String, attachmentId:String):Get
		{
			return new Get(itemId, attachmentId);
		}
		
		/**
		 * Adds a new attachment to a timeline item 
		 * @param itemId
		 * @param attachmentId
		 * @return 
		 * 
		 */
		public function insert(media:ByteArray, contentType:String = null):Insert
		{
			return new Insert(media, contentType);
		}
		
		/**
		 * Returns a list of attachments for a timeline item 
		 * @param itemId
		 * @return 
		 * 
		 */
		public function list(itemId:String):List
		{
			return new List(itemId);
		}
		
	}
}