package com.hendrix.mirror.resources.accounts
{
  public class AccountItem
  {
    public var features:    Vector.<String>     = null;
    public var password:    String              = null;
    public var userData:    Vector.<UserData>   = null;
    public var authTokens:  Vector.<AuthToken>  = null;
    
    public function AccountItem()
    {
      authTokens  = new Vector.<AuthToken>();
      userData    = new Vector.<UserData>();
      features    = new Vector.<String>();
    }
    
  }
  
}