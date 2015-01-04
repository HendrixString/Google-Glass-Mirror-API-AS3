package com.hendrix.mirror.resources.subscriptions
{
  public class SubscriptionsListResponse
  {
    /**
     * The type of resource. This is always mirror#subscriptionsList.
     */
    public var kind:  String                    = "mirror#subscriptionsList";
    
    /**
     * The list of subscriptions.
     */
    public var items: Vector.<SubscriptionItem> = null;
    
    public function SubscriptionsListResponse()
    {
      items = new Vector.<SubscriptionItem>();
    }
    
  }
  
}