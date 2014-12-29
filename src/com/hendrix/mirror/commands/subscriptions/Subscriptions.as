package com.hendrix.mirror.commands.subscriptions
{
	import com.hendrix.mirror.Mirror;
	import com.hendrix.mirror.commands.MirrorCommand;
	import com.hendrix.mirror.resources.subscriptions.SubscriptionItem;

	public class Subscriptions extends MirrorCommand
	{
		public function Subscriptions(service:Mirror)
		{
			super(service);
		}
		
		/**
		 * Deletes a subscription. 
		 * @param id
		 * @return 
		 * 
		 */
		public function deleted(id:String):Delete
		{
			return new Delete(id).setOauthToken(_service.oauthToken) as Delete;
		}
		
		/**
		 * Creates a new subscription 
		 * @param item
		 * @return 
		 * 
		 */
		public function insert(item:SubscriptionItem):Insert
		{
			return new Insert(item).setOauthToken(_service.oauthToken) as Insert;
		}
		
		/**
		 * Updates an existing subscription in place 
		 * @param item
		 * @return 
		 * 
		 */
		public function update(itemId:String, item:SubscriptionItem):Update
		{
			return new Update(itemId, item).setOauthToken(_service.oauthToken) as Update;
		}
		
		/**
		 * Retrieves a list of subscriptions for the authenticated user and service 
		 * @return 
		 * 
		 */
		public function list():List
		{
			return new List().setOauthToken(_service.oauthToken) as List;
		}
		
	}
}