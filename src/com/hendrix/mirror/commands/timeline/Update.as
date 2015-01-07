package com.hendrix.mirror.commands.timeline
{
  import com.hendrix.http.Request;
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.MultiPartBuilder;
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.timeline.TimelineItem;

  import flash.utils.ByteArray;

  public class Update extends MirrorRequest
  {
    static public const media:      String        = "media";
    static public const multipart:  String        = "multipart";
    static public const resumable:  String        = "resumable";

    private var _uploadType:        String        = multipart;

    private var _id:                String        = null;
    private var _item:              TimelineItem  = null;
    private var _image:             ByteArray     = null;

    public function Update(itemId:String, item:TimelineItem, image:ByteArray = null)
    {
      super();

      _item	    =	item;
      _id       = itemId;
      _item.id  =	_id;
      _image    = image;
    }

		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{

      var body:           RequestBody   = null;
      var request:        Request       = null;

      var json_timeline:  String        = JSON.stringify(_item);

      if(_image == null) {
        body                            = RequestBody.create(json_timeline, "application/json");

        new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/timeline/" + _id)
                                .addQuery("access_token", _oauthToken).PUT(body).responseClass(TimelineItem)
                                .build();
      }
      else {
        body 		                        = new MultiPartBuilder().addPart(RequestBody.create(json_timeline), "Content-Type: application/json; charset=UTF-8").type(MultiPartBuilder.RELATED)
                                                                .addPart(RequestBody.create(_image), "Content-Type: image/png\nContent-Transfer-Encoding: binary").build();

        request                         = new RequestBuilder(this).url(SConfig.HOST + "/upload/mirror/v1/timeline/" + _id)
                                                                  .addQuery("access_token", _oauthToken)
                                                                  .addQuery("uploadType", _uploadType)
                                                                  .PUT(body).responseClass(TimelineItem)
                                                                  .build();
      }

      super.execute($onComplete, $onError);
		}

    public function getUploadType():                  String {return _uploadType;}
    public function seUploadType(uploadType:String):  Update
    {
      _uploadType = uploadType;

      return this;
    }

    public function getId():                          String {return _id;}
    public function setId(id:String):                 Update
    {
      _id = id;

      return this;
    }

  }

}