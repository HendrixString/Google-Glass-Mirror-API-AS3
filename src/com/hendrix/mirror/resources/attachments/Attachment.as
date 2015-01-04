package com.hendrix.mirror.resources.attachments
{
  public class Attachment
  {
    /**
     * The ID of the attachment.   
     */
    public var id:                  String  = null;
    
    /**
     * The MIME type of the attachment.
     */
    public var contentType:         String  = null;
    
    /**
     * The URL for the content. 
     */
    public var contentUrl:          String  = null;
    
    /**
     * Indicates that the contentUrl is not available because the attachment content is still being processed. If the caller wishes to retrieve the content, it should try again later.
     */
    public var isProcessingContent: Boolean;
    
    public function Attachment()
    {
    }
    
  }
  
}