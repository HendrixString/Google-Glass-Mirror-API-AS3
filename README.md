# Google-Glass-Mirror-API-AS3
The `Google` Mirror API allows you to build services that interact with Google Glass. 
It provides this functionality over a cloud-based API and does not require running code on Glass.


## How to use
simply fork or download the project, you can also download the binary itself and link it
to your project, or import to your IDE of choice such as `Flash Builder 4.7`.

## Features
- supports all of the methods of `RESTful` API.
- an exact one-to-one API as the official `JAVA` and `C#` client.
- all of the results are returned in corresponding typed data.
- uses [`Hendrix HttP library`](https://github.com/HendrixString/Hendrix-HttP-AiR).

## Guide
1. I recommend the following official [Google Mirror api reference](https://developers.google.com/glass/v1/reference/).
2. you will need to create a google app in the Google App Engine and activate Mirror API, and grab `Client ID` and `Secret`.
3. then, you will need to download an `OAuth 2` token library for `AS3`. there are many at GitGub. I used [actionscript-oauth2](https://github.com/charlesbihis/actionscript-oauth2).
4. simply create valid OAuth 2 tokens using the `Client ID` and `Secret` and a library you have chosen from step 3.

###### TimeLine example: inserting a card with text and image.

```
private var mirror: Mirror = null;

private function init():void {
    _mirror             = new Mirror();
    _mirror.oauthToken  = "ya29.7gBhg5ObSvi68Ncki43yAR23KnZahPQQ-A-D1VFbfPCPoFGGY59wdBBfBE0KK9T_8XYZ5lk9REZ9Kg";
}

protected function timeline_insert(dataImg: ByteArray):void
{    
    var item:TimelineItem = new TimelineItem();
    
    item.text             = "hi";
    
    _mirror.timeline.insert(item, dataImg).execute(req_onComplete, req_onError);
}

private function req_onComplete(res:TimelineItem = null):void
{
    trace(res.id);
}

private function req_onError(res:Object = null):void
{
  trace("error");
}


```

### Terms
* completely free source code.
* if you like it -> star or share it with others

### Contact
[tomer.shalev@gmail.com](tomer.shalev@gmail.com)
