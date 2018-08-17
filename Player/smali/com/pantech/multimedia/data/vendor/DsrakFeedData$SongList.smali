.class public Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "DsrakFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SongList"
.end annotation


# static fields
.field public static final ABMCD:Ljava/lang/String; = "ABM_CD"

.field public static final ABM_ID:Ljava/lang/String; = "ABM_ID"

.field public static final ABM_IMG_PATH:Ljava/lang/String; = "ABM_IMG_PATH"

.field public static final ABM_TITLE:Ljava/lang/String; = "ABM_TITLE"

.field public static final ADLTSONG:Ljava/lang/String; = "ADLT_SONG_YN"

.field public static final ADLT_MV_YN:Ljava/lang/String; = "ADLT_MV_YN"

.field public static final ARTIST_ID:Ljava/lang/String; = "ARTIST_ID"

.field public static final ARTIST_TITLE:Ljava/lang/String; = "ARTIST_TITLE"

.field public static final CURRANK:Ljava/lang/String; = "RANKING_ORDER"

.field public static final DOWNSVC:Ljava/lang/String; = "DOWN_SVC_YN"

.field public static final LYRICS:Ljava/lang/String; = "LYRICS"

.field public static final LYRICSURL:Ljava/lang/String; = "LYRICS_MOBILE_URL"

.field public static final LYRICS_YN:Ljava/lang/String; = "LYRICS_YN"

.field public static final MV_SVC_YN:Ljava/lang/String; = "MV_SVC_YN"

.field public static final PASTRANK:Ljava/lang/String; = "LAST_RANKING_ORDER"

.field public static final PLAY_TIME:Ljava/lang/String; = "PLAY_TIME"

.field public static final SONG_ID:Ljava/lang/String; = "SONG_ID"

.field public static final SONG_TITLE:Ljava/lang/String; = "SONG_TITLE"

.field public static final STREAMSVC:Ljava/lang/String; = "STREAM_SVC_YN"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 185
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    .line 165
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST_ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAY_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_IMG_PATH"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICS"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RANKING_ORDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LAST_RANKING_ORDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ADLT_SONG_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "STREAM_SVC_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "DOWN_SVC_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_CD"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICS_MOBILE_URL"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICS_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MV_SVC_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ADLT_MV_YN"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_ID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ABM_TITLE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST_ID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST_TITLE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRank()I
    .registers 4

    .prologue
    .line 268
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "RANKING_ORDER"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 270
    const/4 v1, -0x1

    .line 272
    :goto_11
    return v1

    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11
.end method

.method public getDefaultPlayUrl()Ljava/lang/String;
    .registers 8

    .prologue
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "stmFlag=Y&song_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "param":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 198
    const/4 v3, 0x0

    .line 212
    :goto_12
    return-object v3

    .line 200
    :cond_13
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, "encodeStr":Ljava/lang/String;
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_3e

    move-result-object v1

    .line 210
    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://masp.ollehmusic.com/partner/pantech/api_gateway.asp?api=MINI_SONG_STM&param="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "str":Ljava/lang/String;
    goto :goto_12

    .line 205
    .end local v3    # "str":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_25
.end method

.method public getDownSVC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "DOWN_SVC_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PLAY_TIME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 222
    const-string v0, "0"

    .line 224
    .end local v0    # "value":Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getHasLyrics()Ljava/lang/String;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICS_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_ID"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastRank()I
    .registers 4

    .prologue
    .line 277
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "LAST_RANKING_ORDER"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 279
    const/4 v1, -0x1

    .line 281
    :goto_11
    return v1

    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11
.end method

.method public getStreamSVC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "STREAM_SVC_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ABM_IMG_PATH"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    .line 236
    const-string v2, "ABM_IMG_PATH"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 237
    .local v0, "strImgPath":Ljava/lang/String;
    :goto_17
    return-object v0

    .line 236
    .end local v0    # "strImgPath":Ljava/lang/String;
    :cond_18
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ABM_CD"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_17
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_TITLE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebLyricsURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "LYRICS_MOBILE_URL"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAdultContents()Z
    .registers 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ADLT_SONG_YN"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "str":Ljava/lang/String;
    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isAdultMV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ADLT_MV_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableMV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MV_SVC_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
