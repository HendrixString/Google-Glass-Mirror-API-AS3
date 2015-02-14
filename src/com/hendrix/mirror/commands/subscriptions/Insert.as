package com.hendrix.mirror.commands.subscriptions
{
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.subscriptions.SubscriptionItem;
  
  
  public class Insert extends MirrorRequest
  {
    private var _item:SubscriptionItem = null;
    
    /**
     * Creates a new subscription, required params are 
     * item.callbackUrl, item.collection 
     * @param item
     * 
     */
    public function Insert(item:SubscriptionItem)
    {
      super();
      
      _item = item;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      var json_timeline:  String    = JSON.stringify(_item);
      
      body                          = RequestBody.create(json_timeline, "application/json");
      
      new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/subscriptions")
                              .addQuery("access_token", _oauthToken)
                              .POST(body).responseClass(SubscriptionItem)
                              .build();
      
      super.execute($onComplete, $onError);
    }
				
  }
	
}