package com.hendrix.mirror.resources.timeline
{
  import com.hendrix.mirror.resources.DateTime;
  import com.hendrix.mirror.resources.locations.LocationsItem;
  import com.hendrix.mirror.resources.contacts.ContactsItem;
  import com.hendrix.mirror.resources.attachments.Attachment;
  
  public class TimelineItem
  {
    /**
     *The type of resource. This is always mirror#timelineItem.
     */ 
    public var kind:            String  = "mirror#timelineItem";
    
    /**
     * The ID of the timeline item. This is unique within a user's timeline.
     */ 
    public var id:              String  = null;
    
    /**
     * The bundle ID for this item. Services can specify a bundleId to group many items together. They appear under a single top-level item on the device.
     */ 
    public var bundleId:        String  = null;
    
    /**
     * A list of menu items that will be presented to the user when this item is selected in the timeline. 
     */
    public var menuItems:       Vector.<MenuItem> = null;
    
    /**
     * Controls how notifications for this item are presented on the device. If this is missing, no notification will be generated. 
     */
    public var notification:    Notification = null;
    
    /**
     * Opaque string you can use to map a timeline item to data in your own service.
     */
    public var sourceItemId:    String  = null;
    
    /**
     * A canonical URL pointing to the canonical/high quality version of the data represented by the timeline item.
     */
    public var canonicalUrl:    String  = null;
    
    /**
     * Whether this item is a bundle cover.
     */
    public var isBundleCover:   Boolean;
    
    
    /**
     * A URL that can be used to retrieve this item. 
     */
    public var selfLink:        String  = null;
    
    /**
     * The user or group that created this item.
     */ 
    public var created:         String  = null;
    
    /**
     * The time at which this item was last modified, formatted according to RFC 3339. 
     */
    public var updated:         String  = null;
    
    /**
     * The time that should be displayed when this item is viewed in the timeline, formatted according to RFC 3339. This user's timeline is sorted chronologically on display time, so this will also determine where the item is displayed in the timeline. If not set by the service, the display time defaults to the updated time.
     */ 
    public var displayTime:     String  = null;
    
    /**
     * When true, indicates this item is pinned, which means it's grouped alongside "active" items like navigation and hangouts, on the opposite side of the home screen from historical (non-pinned) timeline items. You can allow the user to toggle the value of this property with the TOGGLE_PINNED built-in menu item.
     */ 
    public var isPinned:        Boolean;
    
    /**
     * When true, indicates this item is deleted, and only the ID property is set.
     */ 
    public var isDeleted:       Boolean;
    
    /**
     * For pinned items, this determines the order in which the item is displayed in the timeline, with a higher score appearing closer to the clock. Note: setting this field is currently not supported. 
     */
    public var pinScore:        int;
    
    /**
     * ETag for this item.  
     */ 
    public var etag:            String  = null;
    
    /**
     * The user or group that created this item. 
     */
    public var creator:         ContactsItem  = null;
    
    /**
     * A list of users or groups that this item has been shared with. 
     */
    public var recipients:      Vector.<ContactsItem> = null;
    
    /**
     * If this item was generated as a reply to another item, this field will be set to the ID of the item being replied to. This can be used to attach a reply to the appropriate conversation or post.
     */ 
    public var inReplyTo:       String  = null;
    
    /**
     * The title of this item. 
     */
    public var title:           String  = null;
    
    /**
     * Text content of this item. 
     */
    public var text:            String  = null;
    
    /**
     * HTML content for this item. If both text and html are provided for an item, the html will be rendered in the timeline. 
     */ 
    public var html:            String  = null;
    
    /**
     * A speakable description of the type of this item. This will be announced to the user prior to reading the content of the item in cases where the additional context is useful, for example when the user requests that the item be read aloud following a notification. 
     */
    public var speakableType:   String  = null;
    
    /**
     * The speakable version of the content of this item. Along with the READ_ALOUD menu item, use this field to provide text that would be clearer when read aloud, or to provide extended information to what is displayed visually on Glass. 
     */
    public var speakableText:   String  = null;
    
    /**
     * A list of media attachments associated with this item. As a convenience, you can refer to attachments in your HTML payloads with the attachment or cid scheme. For example: attachment: <img src="attachment:attachment_index"> where attachment_index is the 0-based index of this array. cid: <img src="cid:attachment_id"> where attachment_id is the ID of the attachment.
     */ 
    public var attachments:     Vector.<Attachment> = null;
    
    /**
     * The geographic location associated with this item. 
     */ 
    public var location:        LocationsItem = null;
    
    public function TimelineItem()
    {
      attachments   = new Vector.<Attachment>();
      recipients    = new Vector.<ContactsItem>();
      menuItems     = new Vector.<MenuItem>();
      location      = new LocationsItem();
      notification  = new Notification();
      creator       = new ContactsItem();
    }
    
  }
  
}