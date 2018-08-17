.class public Lcom/pantech/multimedia/cloud/Tcloud;
.super Ljava/lang/Object;
.source "Tcloud.java"

# interfaces
.implements Lcom/pantech/multimedia/cloud/CloudClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mDownPos:I

.field private mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

.field private mMemberNumber:Ljava/lang/String;

.field private mPlaylistURI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mRefresh:Z

.field private mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

.field private mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

.field private mVersion:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    .line 48
    iput-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mPlaylistURI:Ljava/util/List;

    .line 49
    iput-boolean v3, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mRefresh:Z

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mVersion:J

    .line 51
    iput-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    .line 52
    iput v3, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDownPos:I

    .line 53
    invoke-virtual {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->initCloud()Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refresh"    # Z
    .param p3, "version"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/cloud/Tcloud;-><init>(Landroid/content/Context;)V

    .line 58
    iput-boolean p2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mRefresh:Z

    .line 59
    iput-wide p3, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mVersion:J

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->processLogin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/multimedia/cloud/Tcloud;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/multimedia/cloud/Tcloud;)V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->getPlaylist()V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/multimedia/cloud/Tcloud;)V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->getSongs()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/multimedia/cloud/Tcloud;)V
    .registers 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->processDown()V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/multimedia/cloud/Tcloud;I)V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/cloud/Tcloud;->getSongs(I)V

    return-void
.end method

.method private downloadAll()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v4, "urilist":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "objectId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 268
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 271
    .local v0, "dataName":Ljava/lang/String;
    :cond_d
    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v7, "object_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v7, "_display_name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "objectid"

    invoke-virtual {v5, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 276
    const-string v6, "filename"

    invoke-virtual {v5, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 277
    const-string v6, "downloadpath"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 278
    const-string v6, "mediatype"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 279
    .local v3, "uri":Landroid/net/Uri;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 270
    if-nez v5, :cond_d

    .line 282
    return-object v4
.end method

.method private downloadPosition()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v5, "urilist":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDownPos:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "objectId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 292
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 293
    .local v0, "dataName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v8, "object_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v8, "title"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v6, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    const-string v8, "mime_type"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    const-string v6, "BongBong"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mime_type : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "objectid"

    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 321
    const-string v7, "filename"

    invoke-virtual {v6, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 322
    const-string v7, "downloadpath"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 323
    const-string v7, "mediatype"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 324
    .local v4, "uri":Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v6, "BongBong"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "objectid : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v6, "BongBong"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "filename : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v6, "BongBong"

    const-string v7, "downloadpath : /"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v6, "BongBong"

    const-string v7, "mediatype : 1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v5
.end method

.method private getPlaylist()V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/skt/tcloud/lib/TcloudAPI;->requestTagList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mPlaylistURI:Ljava/util/List;

    .line 155
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mPlaylistURI:Ljava/util/List;

    if-nez v0, :cond_18

    .line 156
    const-string v0, "BongBong"

    const-string v1, "requestTagList fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_17
    :goto_17
    return-void

    .line 160
    :cond_18
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    if-eqz v0, :cond_17

    .line 161
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mPlaylistURI:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pantech/multimedia/cloud/OnResponseCloudListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_17
.end method

.method private getSongs()V
    .registers 22

    .prologue
    .line 167
    const/4 v14, 0x0

    .line 168
    .local v14, "result":Z
    const/4 v13, 0x0

    .line 170
    .local v13, "reqResult":Lcom/skt/tcloud/lib/TCloudResultCode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    const-string v4, "modify_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 171
    .local v12, "pref":Landroid/content/SharedPreferences;
    const-string v2, "change_time"

    const-string v4, "201208240000"

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 173
    .local v15, "str":Ljava/lang/String;
    const-string v2, "BongBong"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pref saved time : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4, v15}, Lcom/skt/tcloud/lib/TcloudAPI;->requestServerChanged(Landroid/content/Context;Ljava/lang/String;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v8

    .line 177
    .local v8, "changeCode":Lcom/skt/tcloud/lib/TCloudResultCode;
    const/4 v11, 0x1

    .line 179
    .local v11, "isChanged":Z
    invoke-virtual {v8}, Lcom/skt/tcloud/lib/TCloudResultCode;->isSuccessCode()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    invoke-interface {v2}, Lcom/skt/tcloud/lib/TcloudAPI;->getServerChanged()Z

    move-result v11

    .line 182
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/skt/tcloud/lib/TcloudAPI;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 186
    .local v20, "tmpCursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_68

    if-eqz v11, :cond_ce

    .line 187
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v2, v4, v5, v6}, Lcom/skt/tcloud/lib/TcloudAPI;->requestMediaList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v13

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 190
    .local v16, "time":J
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    .local v19, "tmp":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 192
    .local v9, "dd":Ljava/util/Date;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "timeStamp":Ljava/lang/String;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 195
    .local v10, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "change_time"

    move-object/from16 v0, v18

    invoke-interface {v10, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    invoke-virtual {v13}, Lcom/skt/tcloud/lib/TCloudResultCode;->isSuccessCode()Z

    move-result v14

    .line 203
    .end local v9    # "dd":Ljava/util/Date;
    .end local v10    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "time":J
    .end local v18    # "timeStamp":Ljava/lang/String;
    .end local v19    # "tmp":Ljava/text/SimpleDateFormat;
    :goto_a6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 205
    if-eqz v14, :cond_d0

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/pantech/multimedia/cloud/OnResponseCloudListener;->onResponse(Ljava/lang/Object;I)V

    .line 208
    if-eqz v13, :cond_cd

    .line 209
    const-string v2, "BongBong"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSongs Success : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/skt/tcloud/lib/TCloudResultCode;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_cd
    :goto_cd
    return-void

    .line 200
    :cond_ce
    const/4 v14, 0x1

    goto :goto_a6

    .line 211
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Lcom/pantech/multimedia/cloud/OnResponseCloudListener;->onResponse(Ljava/lang/Object;I)V

    .line 212
    if-eqz v13, :cond_cd

    .line 213
    const-string v2, "BongBong"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSongs Fail : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/skt/tcloud/lib/TCloudResultCode;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method private getSongs(I)V
    .registers 13
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    iget-object v4, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v4, v5, v9}, Lcom/skt/tcloud/lib/TcloudAPI;->requestMediaList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v7

    .line 220
    .local v7, "reqResult":Lcom/skt/tcloud/lib/TCloudResultCode;
    invoke-virtual {v7}, Lcom/skt/tcloud/lib/TCloudResultCode;->isSuccessCode()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 222
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    iget-object v4, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/skt/tcloud/lib/TcloudAPI;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "tag_id = \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "where":Ljava/lang/String;
    const-string v0, "BongBong"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "where : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    .local v8, "tmp":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    :cond_5e
    const-string v0, "title"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "name":Ljava/lang/String;
    const-string v0, "BongBong"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "name : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 229
    if-nez v0, :cond_5e

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 238
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "tmp":Landroid/database/Cursor;
    :goto_85
    return-void

    .line 236
    :cond_86
    const-string v0, "BongBong"

    const-string v2, "getSongs() fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method private processDown()V
    .registers 6

    .prologue
    .line 241
    const-string v2, "BongBong"

    const-string v3, "processDown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "urilist":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDownPos:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_2e

    .line 246
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->downloadAll()Ljava/util/List;

    move-result-object v1

    .line 250
    :goto_16
    sget-object v0, Lcom/skt/tcloud/lib/TCloudResultCode;->TCLOUD_RESULT_OK:Lcom/skt/tcloud/lib/TCloudResultCode;

    .line 252
    .local v0, "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    iget-object v3, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lcom/skt/tcloud/lib/TcloudAPI;->requestMediaDownload(Landroid/content/Context;Ljava/util/List;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/skt/tcloud/lib/TCloudResultCode;->isSuccessCode()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 255
    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/pantech/multimedia/cloud/OnResponseCloudListener;->onResponse(Ljava/lang/Object;I)V

    .line 259
    :goto_2d
    return-void

    .line 248
    .end local v0    # "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    :cond_2e
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->downloadPosition()Ljava/util/List;

    move-result-object v1

    goto :goto_16

    .line 257
    .restart local v0    # "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    :cond_33
    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    invoke-virtual {v0}, Lcom/skt/tcloud/lib/TCloudResultCode;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/pantech/multimedia/cloud/OnResponseCloudListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_2d
.end method

.method private processLogOnState()Z
    .registers 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->requestLoginState(Landroid/content/Context;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v0

    .line 127
    .local v0, "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    sget-object v1, Lcom/skt/tcloud/lib/TCloudResultCode;->TCLOUD_RESULT_OK:Lcom/skt/tcloud/lib/TCloudResultCode;

    if-ne v0, v1, :cond_16

    .line 128
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    invoke-interface {v1}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->getLoginState()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 129
    const/4 v1, 0x1

    .line 132
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private processLogin()Z
    .registers 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->login(Landroid/content/Context;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v0

    .line 139
    .local v0, "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    sget-object v1, Lcom/skt/tcloud/lib/TCloudResultCode;->TCLOUD_RESULT_OK:Lcom/skt/tcloud/lib/TCloudResultCode;

    if-ne v0, v1, :cond_2e

    .line 140
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->getMemberNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    .line 142
    const-string v1, "BongBong"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login TCLOUD_RESULT_OK : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mMemberNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x1

    .line 148
    :goto_2d
    return v1

    .line 147
    :cond_2e
    const-string v1, "BongBong"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login Fail !!!! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/skt/tcloud/lib/TCloudResultCode;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public getLogOnState()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->processLogOnState()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 82
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    iget-object v2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->requestAutoLoginState(Landroid/content/Context;)Lcom/skt/tcloud/lib/TCloudResultCode;

    move-result-object v0

    .line 84
    .local v0, "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    sget-object v1, Lcom/skt/tcloud/lib/TCloudResultCode;->TCLOUD_RESULT_OK:Lcom/skt/tcloud/lib/TCloudResultCode;

    if-ne v0, v1, :cond_1d

    .line 85
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    invoke-interface {v1}, Lcom/skt/tcloud/lib/TcloudAccountAPI;->getAutoLoginState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 88
    .end local v0    # "result":Lcom/skt/tcloud/lib/TCloudResultCode;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1c
.end method

.method public initCloud()Z
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/skt/tcloud/lib/TcloudAPIFactory;->createManageAccount()Lcom/skt/tcloud/lib/TcloudAccountAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTcloudManageAccount:Lcom/skt/tcloud/lib/TcloudAccountAPI;

    .line 66
    invoke-static {}, Lcom/skt/tcloud/lib/TcloudAPIFactory;->createMusicAPI()Lcom/skt/tcloud/lib/TcloudAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mTCloudMusicAPI:Lcom/skt/tcloud/lib/TcloudAPI;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public logIn()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/pantech/multimedia/cloud/Tcloud;->processLogin()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public requestDownload(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "downPos"    # I

    .prologue
    .line 114
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    .line 115
    iput p2, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDownPos:I

    .line 117
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mDataCursor:Landroid/database/Cursor;

    if-nez v1, :cond_b

    .line 122
    :goto_a
    return-void

    .line 120
    :cond_b
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;-><init>(Lcom/pantech/multimedia/cloud/Tcloud;I)V

    .line 121
    .local v0, "th":Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
    invoke-virtual {v0}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->start()V

    goto :goto_a
.end method

.method public requestFileInfo(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestPlaylistSongs(I)Ljava/lang/Object;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 107
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;-><init>(Lcom/pantech/multimedia/cloud/Tcloud;II)V

    .line 108
    .local v0, "th":Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
    invoke-virtual {v0}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->start()V

    .line 109
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestPlaylists()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;-><init>(Lcom/pantech/multimedia/cloud/Tcloud;I)V

    .line 101
    .local v0, "th":Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
    invoke-virtual {v0}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->start()V

    .line 102
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestSongs()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;-><init>(Lcom/pantech/multimedia/cloud/Tcloud;I)V

    .line 94
    .local v0, "th":Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
    invoke-virtual {v0}, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->start()V

    .line 95
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 412
    return-void
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/cloud/OnResponseCloudListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/Tcloud;->mListener:Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    .line 400
    return-void
.end method
