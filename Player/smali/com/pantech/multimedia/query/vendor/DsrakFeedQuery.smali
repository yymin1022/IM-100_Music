.class public Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;
.super Lcom/pantech/multimedia/query/FeedQuery;
.source "DsrakFeedQuery.java"


# static fields
.field private static final DFLT_SEPARATOR:Ljava/lang/String; = "AR"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "total"    # I
    .param p5, "startindex"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    return-void
.end method

.method private concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 7
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "endFlag"    # Z

    .prologue
    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    if-nez p4, :cond_14

    .line 340
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_14
    return-object p1
.end method

.method private encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5
    .param p1, "sourceStr"    # Ljava/lang/StringBuilder;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "encodedValue":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method private setAlbumInfo()V
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "api"

    const-string v2, "ALBUM_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "album_Id"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method private setAlbumSongList()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "separator"

    const-string v2, "AR"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, "album_Id"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string v1, "pageno"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "ALBUM_SONGLIST"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method private setDefaultFeedData()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "tmpStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 198
    .local v1, "encodeStr":Ljava/lang/String;
    const-string v4, "searchSession"

    const-string v5, "song"

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-static {v4}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_74

    .line 208
    .end local v2    # "i":I
    :goto_20
    const-string v4, "pageno"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v7, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 209
    const-string v4, "pageSize"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    :try_start_50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_59} :catch_8e

    move-result-object v1

    .line 218
    :goto_5a
    iget-object v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v5, "api"

    const-string v6, "SEARCH"

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v5, "param"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void

    .line 202
    .restart local v2    # "i":I
    :cond_74
    const-string v5, "searchQuery"

    iget-object v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v4, v8}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 205
    .end local v2    # "i":I
    :cond_85
    const-string v4, "searchQuery"

    iget-object v5, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_20

    .line 213
    :catch_8e
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5a
.end method

.method private setDefaultLylics()V
    .registers 5

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "song_Id"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "LYRICS"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private setMonthChartQuery()V
    .registers 5

    .prologue
    .line 330
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "api"

    const-string v2, "WEEKMONTH_RANKING"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "pageno"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "pageSize"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "dateType"

    const-string v2, "M"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-void
.end method

.method private setQueryMap()V
    .registers 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->getQueryType()I

    move-result v0

    .line 165
    .local v0, "type":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 166
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setDefaultFeedData()V

    .line 191
    :cond_b
    :goto_b
    return-void

    .line 167
    :cond_c
    const/16 v1, 0xb

    if-eq v0, v1, :cond_14

    .line 168
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_18

    .line 169
    :cond_14
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setDefaultLylics()V

    goto :goto_b

    .line 170
    :cond_18
    const/16 v1, 0xc

    if-ne v0, v1, :cond_20

    .line 171
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setAlbumInfo()V

    goto :goto_b

    .line 172
    :cond_20
    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    .line 174
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2c

    .line 175
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setSongInfo()V

    goto :goto_b

    .line 176
    :cond_2c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_34

    .line 177
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setAlbumSongList()V

    goto :goto_b

    .line 178
    :cond_34
    const/16 v1, 0x14

    if-ne v0, v1, :cond_3c

    .line 179
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setRealTimeChartQuery()V

    goto :goto_b

    .line 180
    :cond_3c
    const/16 v1, 0x15

    if-ne v0, v1, :cond_44

    .line 181
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setTodayChartQuery()V

    goto :goto_b

    .line 182
    :cond_44
    const/16 v1, 0x16

    if-ne v0, v1, :cond_4c

    .line 183
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setWeekChartQuery()V

    goto :goto_b

    .line 184
    :cond_4c
    const/16 v1, 0x18

    if-ne v0, v1, :cond_54

    .line 185
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setMonthChartQuery()V

    goto :goto_b

    .line 186
    :cond_54
    const/16 v1, 0x17

    if-eq v0, v1, :cond_b

    .line 188
    const/16 v1, 0x19

    if-ne v0, v1, :cond_b

    .line 189
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setServiceInfoQuery()V

    goto :goto_b
.end method

.method private setRealTimeChartQuery()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "separator"

    const-string v2, "AR"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, "pageno"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string v1, "dateType"

    const-string v2, "M"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "REALTIME_RANKING"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method private setServiceInfoQuery()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "lowcode"

    const-string v2, "L000"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string v1, "genrecode"

    const-string v2, "ALL"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string v1, "separator"

    const-string v2, "AR"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "SERVICE_INFO"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private setSongInfo()V
    .registers 5

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "song_Id"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, "separator"

    const-string v2, "AR"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "SONG_INFO"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method private setTodayChartQuery()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "separator"

    const-string v2, "AR"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    const-string v1, "jobDT"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    const-string v1, "listtype"

    const-string v2, "album"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    const-string v1, "pageno"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "TODAY_RANKING"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method private setWeekChartQuery()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "tmpStr":Ljava/lang/StringBuilder;
    const-string v1, "separator"

    const-string v2, "AR"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, "pageno"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    iget v4, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    const-string v1, "dateType"

    const-string v2, "W"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->concatStrParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "api"

    const-string v3, "WEEKMONTH_RANKING"

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v2, "param"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->encodeBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public addKeywords(Ljava/lang/String;)V
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method protected addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 406
    if-eqz p4, :cond_37

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    :cond_36
    return-object p1

    .line 409
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b
.end method

.method public getRequestHeaderMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestUrlByType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "url":Ljava/lang/String;
    packed-switch p1, :pswitch_data_8

    .line 136
    :goto_4
    :pswitch_4
    return-object v0

    .line 127
    :pswitch_5
    const-string v0, "http://masp.ollehmusic.com/partner/pantech/api_gateway.asp"

    .line 128
    goto :goto_4

    .line 114
    :pswitch_data_8
    .packed-switch 0xa
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public makeQueryMap()Ljava/util/WeakHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    goto :goto_9
.end method

.method public makeRequestQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->setQueryMap()V

    .line 95
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->makeQueryMap()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 96
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->getQueryType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->getRequestUrlByType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v4, 0x1

    .line 359
    .local v4, "isFirst":Z
    move-object v1, p1

    .line 361
    .local v1, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 363
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 398
    return-object v1

    .line 364
    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 366
    .local v9, "value":Ljava/lang/Object;
    const-string v3, ""

    .line 368
    .local v3, "changedVal":Ljava/lang/String;
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_32

    move-object v3, v9

    .line 369
    check-cast v3, Ljava/lang/String;

    :cond_28
    :goto_28
    move-object v0, p0

    move-object v5, p2

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    .line 370
    :cond_32
    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    .line 371
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 372
    :cond_3b
    instance-of v0, v9, Ljava/lang/Long;

    if-eqz v0, :cond_44

    .line 373
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 374
    :cond_44
    instance-of v0, v9, Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    .line 375
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 376
    :cond_4d
    instance-of v0, v9, Ljava/util/List;

    if-eqz v0, :cond_28

    .line 377
    const/4 v7, 0x0

    .local v7, "isAdded":Z
    move-object v0, v9

    .line 378
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 380
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5c
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_68

    .line 390
    if-nez v7, :cond_28

    goto :goto_c

    :cond_68
    move-object v0, v9

    .line 381
    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b0

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    .line 383
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_af

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :cond_af
    const/4 v7, 0x1

    .line 380
    :cond_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c
.end method

.method public requestQuery(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywords:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywords:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-void
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mQueryType:I

    .line 354
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "startindex"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;->mStartIdx:I

    .line 44
    return-void
.end method
