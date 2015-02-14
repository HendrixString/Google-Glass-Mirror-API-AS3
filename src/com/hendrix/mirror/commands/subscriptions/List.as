package com.hendrix.mirror.commands.subscriptions
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.subscriptions.SubscriptionsListResponse;
  
  public class List extends MirrorRequest
  {
    /**
     * Retrieves a list of subscriptions for the authenticated user and service 
     */
    public function List()
    {
      super();
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).GET()
                              .url(SConfig.HOST + "/mirror/v1/subscriptions")
                              .addQuery("access_token", _oauthToken)
                              .responseClass(SubscriptionsListResponse);
      
      super.execute($onComplete, $onError);
    }
		
  }
	
}