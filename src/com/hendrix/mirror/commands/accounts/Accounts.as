package com.hendrix.mirror.commands.accounts
{
  import com.hendrix.mirror.Mirror;
  import com.hendrix.mirror.commands.MirrorCommand;

  public class Accounts extends MirrorCommand
	{
    public function Accounts(service:Mirror)
    {
      super(service);
    }
		
    /**
     * Inserts a new account for a user 
     * @return 
     * 
     */
    public function insert():Insert
    {
      return new Insert().setOauthToken(_service.oauthToken) as Insert;
    }
		
  }
  
}