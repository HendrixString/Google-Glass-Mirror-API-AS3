package com.hendrix.mirror.commands.accounts
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.accounts.AccountItem;
	
  /**
   * Inserts a new account for a user 
   * @author Tomer
   * 
  */
  public class Insert extends MirrorRequest
  {
    private var _accountName: String = null;
    private var _accountType: String = null;
    private var _userToken:   String = null;

    public function Insert()
    {
      super();
    }

    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/accounts/" + _userToken + "/" + _accountType + "/" + _accountName)
                              .POST().responseClass(AccountItem)
    			      							.build();
    
      super.execute($onComplete, $onError);
    }

    /**
     * The name of the account to be passed to the Android Account Manager. 
     */
    public function getAccountName():String
    {
      return _accountName;
    }
    /**
     * The name of the account to be passed to the Android Account Manager. 
     */
    public function setAccountName(value:String):Insert
    {
      _accountName = value;
    
    return this
    }

    /**
     * Account type to be passed to Android Account Manager. 
     */
    public function getAccountType():String
    {
      return _accountType;
    }
    
    /**
     * Account type to be passed to Android Account Manager. 
     */
    public function setAccountType(value:String):Insert
    {
      _accountType = value;
      return this
    }
    
    /**
     * The ID for the user. 
     */
    public function getUserToken():String
    {
      return _userToken;
    }
    
    /**
     * The ID for the user. 
     */
    public function setUserToken(value:String):Insert
    {
      _userToken = value;
      return this
    }
    
  }
	
}