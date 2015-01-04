package com.hendrix.mirror.resources.contacts
{
  public class Command
  {
    /**
     * TAKE_A_NOTE - Shares a timeline item with the transcription of user speech from the "Take a note" voice menu command. 
     */
    static public const TAKE_A_NOTE:      String = "TAKE_A_NOTE";
    
    /**
     * POST_AN_UPDATE - Shares a timeline item with the transcription of user speech from the "Post an update" voice menu command. 
     */
    static public const POST_AN_UPDATE:   String = "POST_AN_UPDATE";
    
    /**
     * The type of operation this command corresponds to. Allowed values are:<li>TAKE_A_NOTE - Shares a timeline item with the transcription of user speech from the "Take a note" voice menu command.<li>POST_AN_UPDATE - Shares a timeline item with the transcription of user speech from the "Post an update" voice menu command. 
     */
    public var type:  String = null;
    
    public function Command()
    {
    }
    
  }
  
}