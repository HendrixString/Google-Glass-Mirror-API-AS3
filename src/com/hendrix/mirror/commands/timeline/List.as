package com.hendrix.mirror.commands.timeline
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.timeline.TimelineListResponse;
    
  public class List extends MirrorRequest
  {
    /**
     * Results will be ordered by displayTime (default). This is the same ordering as is used in the timeline on the device. 
     */
    static public const ORDERBY_displayTime:String = "displayTime";
    /**
     * Results will be ordered by the time at which they were last written to the data store. 
     */
    static public const ORDERBY_writeTime:String = "writeTime";
		
    private var _bundleId:        String = null;
    private var _includeDeleted:  Boolean;
    private var _maxResults:      uint;
    private var _orderBy:         String = null;
    private var _pageToken:       String = null;
    private var _pinnedOnly:      Boolean;
    private var _sourceItemId:    String = null;
    
    public function List()
    {
      super();
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).GET()
                              .url(SConfig.HOST + "/mirror/v1/timeline").responseClass(TimelineListResponse)
                              .addQuery("access_token", _oauthToken);
      
      super.execute($onComplete, $onError);
    }

    /**
     * If provided, only items with the given bundleId will be returned. 
     */
    public function getBundleId():String	
    {	
      return _bundleId;	
    }
    /**
     * @private
     */
    public function setBundleId(value:String):List
    {
      _bundleId = value;
      return this;
    }

    /**
     * If true, tombstone records for deleted items will be returned. 
     */
    public function getIncludeDeleted():Boolean
    {
      return _includeDeleted;
    }
    
    /**
     * If true, tombstone records for deleted items will be returned. 
     */
    public function setIncludeDeleted(value:Boolean):List
    {
      _includeDeleted = value;
      return this;
    }

    /**
     * The maximum number of items to include in the response, used for paging. 
     */
    public function getMaxResults():uint
    {
      return _maxResults;
    }
    
    /**
     * The maximum number of items to include in the response, used for paging. 
     */
    public function setMaxResults(value:uint):List
    {
      _maxResults = value;
      return this;
    }
    
    /**
     * Controls the order in which timeline items are returned. Acceptable values are: displayTime, writeTime
     */
    public function getOrderBy():String
    {
      return _orderBy;
    }
    
    /**
     * Controls the order in which timeline items are returned. Acceptable values are: displayTime, writeTime
     */
    public function setOrderBy(value:String):List
    {
      _orderBy = value;
      return this;
    }
    
    /**
     * Token for the page of results to return. 
     */
    public function getPageToken():String
    {
      return _pageToken;
    }
    
    /**
     * Token for the page of results to return. 
     */
    public function setPageToken(value:String):List
    {
      _pageToken = value;
      return this;
    }
    
    /**
     * If true, only pinned items will be returned. 
     */
    public function getPinnedOnly():Boolean
    {
      return _pinnedOnly;
    }
    
    /**
     * If true, only pinned items will be returned. 
     */
    public function setPinnedOnly(value:Boolean):List
    {
      _pinnedOnly = value;
      return this;
    }
    
    /**
     * If provided, only items with the given sourceItemId will be returned. 
     */
    public function getSourceItemId():String
    {
      return _sourceItemId;
    }
    
    /**
     * If provided, only items with the given sourceItemId will be returned. 
     */
    public function setSourceItemId(value:String):List
    {
      _sourceItemId = value;
      return this;
    }
		
  }
	
}