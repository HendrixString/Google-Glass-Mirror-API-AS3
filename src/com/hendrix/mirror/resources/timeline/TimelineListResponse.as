package com.hendrix.mirror.resources.timeline
{
  public class TimelineListResponse
  {
    /**
     * The type of resource. This is always mirror#timeline. 
     */
    public var kind:String = "mirror#timeline";
    
    /**
     * The next page token. Provide this as the pageToken parameter in the request to retrieve the next page of results.
     */
    public var nextPageToken:String = null;
    
    /**
     * Items in the timeline. 
     */
    public var items:Vector.<TimelineItem> = null;
    
    public function TimelineListResponse()
    {
      items = new Vector.<TimelineItem>();
    }
    
  }
  
}