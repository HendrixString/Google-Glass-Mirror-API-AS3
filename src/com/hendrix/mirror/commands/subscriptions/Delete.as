package com.hendrix.mirror.commands.subscriptions
{
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.http.builders.RequestBuilder;
  	
  public class Delete extends MirrorRequest
  {
    private var _id:String = null;
    
    /**
     * Deletes a subscription. 
     * @param id
     */
    public function Delete(id:String)
    {
      super();		
      
      _id = id;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).DELETE()
                              .url(SConfig.HOST + "/mirror/v1/subscriptions/" + _id)
                              .addQuery("access_token", _oauthToken);
      
      super.execute($onComplete, $onError);
    }
		
    public function getId(): String {return _id;}
    public function setId(id:String):Delete
    {
      _id = id;
      
      return this;
    }

  }
	
}