package com.hendrix.mirror.resources.contacts
{
	public class ContactsListResponse
	{
		/**
		 * The type of resource. This is always mirror#contacts.
		 */
		public var kind:String = "mirror#contacts";
		
		/**
		 * Contact list.
		 */
		public var items:Vector.<ContactsItem> = null;

		public function ContactsListResponse()
		{
			items = new Vector.<ContactsItem>();
		}
	}
}