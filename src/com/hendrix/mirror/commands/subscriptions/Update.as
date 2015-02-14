package com.hendrix.mirror.commands.subscriptions
{
  import com.hendrix.http.Request;
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.subscriptions.SubscriptionItem;
  
  public class Update extends MirrorRequest
  {
    private var _id:    String            = null;
    private var _item:  SubscriptionItem  = null;

    /**
     * Updates an existing subscription in place 
     * @param item
     * 
     */
    public function Update(itemId:String, item:SubscriptionItem)
    {
      super();
      
      _item	    =	item;
      _id       = itemId;
      
      _item.id  = _id;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
    
      var body:           RequestBody   = null;
      var request:        Request       = null;
      
      var json:           String        = JSON.stringify(_item);
      
      body                              = RequestBody.create(json, "application/json");
      
      new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/subscriptions/" + _id)
                              .addQuery("access_token", _oauthToken)
                              .PUT(body).responseClass(SubscriptionItem)
                              .build();
      
      super.execute($onComplete, $onError);
    }

    public function getId():          String {return _id;}
    public function setId(id:String): Update
    {
      _id = id;
      
      return this;
    }

  }
	
}