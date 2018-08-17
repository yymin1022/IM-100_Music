.class public Lcom/pantech/multimedia/common/CloudLiveData;
.super Ljava/lang/Object;
.source "CloudLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/common/CloudLiveData$Url;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.pantech.skyunifiedlogin.sky"

.field public static final CLOUDLIVE_REQ_NORMAL_TRIGGER:I = 0xc8

.field public static final CLOUDLIVE_REQ_REFRESH_TRIGGER:I = 0xc9

.field public static final CLOUDLIVE_SYNCDT_PREF:Ljava/lang/String; = "cloudlive_syncdt_pref"

.field public static final CLOUDLIVE_XML_BODY_ALBUM:Ljava/lang/String; = "album"

.field public static final CLOUDLIVE_XML_BODY_ALBUMURL:Ljava/lang/String; = "albumart_url"

.field public static final CLOUDLIVE_XML_BODY_ARTIST:Ljava/lang/String; = "artist"

.field public static final CLOUDLIVE_XML_BODY_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final CLOUDLIVE_XML_BODY_CLOUDDT:Ljava/lang/String; = "cloud_dt"

.field public static final CLOUDLIVE_XML_BODY_DEVICEID:Ljava/lang/String; = "deviceid"

.field public static final CLOUDLIVE_XML_BODY_FILEID:Ljava/lang/String; = "file_id"

.field public static final CLOUDLIVE_XML_BODY_FILENAME:Ljava/lang/String; = "file_name"

.field public static final CLOUDLIVE_XML_BODY_FILESIZE:Ljava/lang/String; = "file_size"

.field public static final CLOUDLIVE_XML_BODY_FILETYPE:Ljava/lang/String; = "file_type"

.field public static final CLOUDLIVE_XML_BODY_FILEURL:Ljava/lang/String; = "fileurl"

.field public static final CLOUDLIVE_XML_BODY_GENRE:Ljava/lang/String; = "genre"

.field public static final CLOUDLIVE_XML_BODY_ID:Ljava/lang/String; = "id"

.field public static final CLOUDLIVE_XML_BODY_PLAYTIME:Ljava/lang/String; = "playtime"

.field public static final CLOUDLIVE_XML_BODY_SONGTITLE:Ljava/lang/String; = "song_title"

.field public static final CLOUDLIVE_XML_ELEMENT_RESPONSE_BODY:Ljava/lang/String; = "entity"

.field public static final CLOUDLIVE_XML_ELEMENT_RESPONSE_HEADER:Ljava/lang/String; = "responseHeader"

.field public static final CLOUDLIVE_XML_ELEMENT_RESPONSE_ROW:Ljava/lang/String; = "row"

.field public static final CLOUDLIVE_XML_HEADER_ACTIONURL:Ljava/lang/String; = "actionUrl"

.field public static final CLOUDLIVE_XML_HEADER_FILELIST:Ljava/lang/String; = "filelist"

.field public static final CLOUDLIVE_XML_HEADER_LASTSYNCDTS:Ljava/lang/String; = "lastSyncDts"

.field public static final CLOUDLIVE_XML_HEADER_RESPONSETIME:Ljava/lang/String; = "responseTime"

.field public static final CLOUDLIVE_XML_HEADER_RESULTCODE:Ljava/lang/String; = "resultCode"

.field public static final CLOUDLIVE_XML_HEADER_RESULTMESSAGE:Ljava/lang/String; = "resultMessage"

.field public static final CLOUDLIVE_XML_HEADER_SERVICEID:Ljava/lang/String; = "serviceId"

.field public static final CLOUDLIVE_XML_HEADER_SIZE:Ljava/lang/String; = "size"

.field public static final DEFAULT_LAST_SYNC_DT:Ljava/lang/String; = "19700101000000000"

.field public static final KEY_SYNC_DT:Ljava/lang/String; = "key_sync_dt"

.field public static final KEY_SYNC_DT_LAST:Ljava/lang/String; = "key_sync_dt_last"

.field public static final PARAMETER_ID:Ljava/lang/String; = "ID"

.field public static final PARAMETER_KEY_DT:Ljava/lang/String; = "key_dt"

.field public static final PARAMETER_P_CLOUD_DT:Ljava/lang/String; = "P_CLOUD_DT"

.field public static final PARAMETER_SERVICEID:Ljava/lang/String; = "serviceId"

.field public static final PARAMETER_SERVICEID_VALUE:Ljava/lang/String; = "mediaContent"

.field public static final PARAMETER_TOKEN:Ljava/lang/String; = "TOKEN"

.field public static final URL_CATEGORY:Ljava/lang/String; = "50"

.field public static final URL_TAIL:Ljava/lang/String; = "/list.rest"


# instance fields
.field public final AUTHORITY:Ljava/lang/String;

.field public final CONTENT_URI:Landroid/net/Uri;

.field public final FIELD_SERVICEID:Ljava/lang/String;

.field public final FIELD_TOKEN:Ljava/lang/String;

.field public final SERVICE_ID:Ljava/lang/String;

.field public final SKYUNIFIEDLOGIN_TOKEN_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "com.pantech.provider.skyunifiedlogin"

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->AUTHORITY:Ljava/lang/String;

    .line 27
    const-string v0, "content://com.pantech.provider.skyunifiedlogin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    iget-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "token"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->SKYUNIFIEDLOGIN_TOKEN_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "APP_00002"

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->SERVICE_ID:Ljava/lang/String;

    .line 30
    const-string v0, "serviceid"

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->FIELD_SERVICEID:Ljava/lang/String;

    .line 31
    const-string v0, "token"

    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveData;->FIELD_TOKEN:Ljava/lang/String;

    .line 5
    return-void
.end method
