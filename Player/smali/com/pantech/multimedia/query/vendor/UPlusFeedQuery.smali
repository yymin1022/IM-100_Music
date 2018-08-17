.class public Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
.super Lcom/pantech/multimedia/query/CloudFeedQuery;
.source "UPlusFeedQuery.java"


# static fields
.field private static final DEFAULT_LASTDT:J = 0x0L

.field private static final ORDER_NAME:Ljava/lang/String; = "N"

.field private static final ORDER_NEW:Ljava/lang/String; = "R"

.field private static mEndNo:I

.field private static mFileID:Ljava/lang/String;

.field private static mFileType:I

.field private static mLastDT:J

.field private static mOrderCondition:Ljava/lang/String;

.field private static mRange:I

.field private static mSessionID:Ljava/lang/String;

.field private static mStartNo:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 24
    sput-object v3, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mSessionID:Ljava/lang/String;

    .line 25
    sput v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mStartNo:I

    .line 26
    sput v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mEndNo:I

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mLastDT:J

    .line 28
    sput-object v3, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mOrderCondition:Ljava/lang/String;

    .line 29
    sput-object v3, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileID:Ljava/lang/String;

    .line 30
    sput v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileType:I

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mRange:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/CloudFeedQuery;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session_id"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/CloudFeedQuery;-><init>(Landroid/content/Context;)V

    .line 39
    sput-object p2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mSessionID:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setDefaultQuery()V

    .line 41
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
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/pantech/multimedia/query/CloudFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 46
    return-void
.end method

.method private setDefaultQuery()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "SESSION_ID"

    sget-object v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private setFileMetaInfoParameters()V
    .registers 4

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setDefaultQuery()V

    .line 273
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_ID"

    sget-object v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method private setMusicContentsParameters()V
    .registers 5

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setDefaultQuery()V

    .line 259
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "LAST_DT"

    sget-wide v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mLastDT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mStartNo:I

    if-lez v0, :cond_21

    .line 262
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "START_NO"

    sget v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mStartNo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_21
    sget v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mEndNo:I

    if-lez v0, :cond_32

    .line 265
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "END_NO"

    sget v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mEndNo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_32
    sget-object v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mOrderCondition:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 268
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "ORDER_CONDITION"

    sget-object v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mOrderCondition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_3f
    return-void
.end method

.method private setSimpleDownloadParameters()V
    .registers 4

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setDefaultQuery()V

    .line 278
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_ID"

    sget-object v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_TYPE"

    sget v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mRange:I

    if-lez v0, :cond_2a

    .line 282
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "RANGE"

    sget v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2a
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public addKeywords(Ljava/lang/String;)V
    .registers 2
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method protected addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 188
    if-eqz p4, :cond_3b

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :goto_1b
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_39} :catch_4f

    move-result-object p1

    .line 204
    :cond_3a
    :goto_3a
    return-object p1

    .line 191
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 196
    :catch_4f
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3a
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
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestUrlByType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 75
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 76
    const-string v0, "https://openapi.uplusbox.co.kr/restapi/file/music"

    .line 82
    :goto_6
    return-object v0

    .line 77
    :cond_7
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_e

    .line 78
    const-string v0, "https://openapi.uplusbox.co.kr/restapi/file/metainfo"

    goto :goto_6

    .line 79
    :cond_e
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_15

    .line 80
    const-string v0, "http://updd-N.upbox.co.kr/restapi/file/simpledownload"

    goto :goto_6

    .line 82
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
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
    .line 125
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    goto :goto_9
.end method

.method public makeRequestQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setQueryMap()V

    .line 139
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->makeQueryMap()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 140
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->getQueryType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->getRequestUrlByType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v4, 0x1

    .line 156
    .local v4, "isFirst":Z
    move-object v1, p1

    .line 158
    .local v1, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 160
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 179
    const-string v0, "MMDATAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "make query string = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-object v1

    .line 161
    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, "value":Ljava/lang/Object;
    const-string v3, ""

    .line 165
    .local v3, "changedVal":Ljava/lang/String;
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v3, v7

    .line 166
    check-cast v3, Ljava/lang/String;

    :cond_3c
    :goto_3c
    move-object v0, p0

    move-object v5, p2

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    .line 167
    :cond_46
    instance-of v0, v7, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    .line 168
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 169
    :cond_4f
    instance-of v0, v7, Ljava/lang/Long;

    if-eqz v0, :cond_58

    .line 170
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 171
    :cond_58
    instance-of v0, v7, Ljava/lang/Boolean;

    if-eqz v0, :cond_3c

    .line 172
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c
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
    .line 134
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    return-void
.end method

.method public setAdditionalParameterField(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 209
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 210
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_9
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 105
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
    .line 110
    .local p1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setEndNo(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 228
    if-gtz p1, :cond_3

    .line 232
    :goto_2
    return-void

    .line 231
    :cond_3
    sput p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mEndNo:I

    goto :goto_2
.end method

.method public setFileType(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 248
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 249
    :cond_5
    sput p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileType:I

    .line 250
    :cond_7
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p1, :cond_4

    .line 120
    sput-object p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mFileID:Ljava/lang/String;

    .line 121
    :cond_4
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
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
    .line 60
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setLastDT(J)V
    .registers 8
    .param p1, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 235
    cmp-long v0, p1, v2

    if-lez v0, :cond_9

    .line 236
    sput-wide p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mLastDT:J

    .line 240
    :goto_8
    return-void

    .line 239
    :cond_9
    sput-wide v2, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mLastDT:J

    goto :goto_8
.end method

.method public setOrderContidion(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_14

    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 244
    :cond_12
    sput-object p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mOrderCondition:Ljava/lang/String;

    .line 245
    :cond_14
    return-void
.end method

.method public setQueryMap()V
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->getQueryType()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_c

    .line 88
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setMusicContentsParameters()V

    .line 95
    :cond_b
    :goto_b
    return-void

    .line 89
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->getQueryType()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_18

    .line 90
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setFileMetaInfoParameters()V

    goto :goto_b

    .line 91
    :cond_18
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->getQueryType()I

    move-result v0

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_b

    .line 92
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setSimpleDownloadParameters()V

    goto :goto_b
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mQueryType:I

    .line 70
    return-void
.end method

.method public setRange(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 253
    if-lez p1, :cond_4

    .line 254
    sput p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mRange:I

    .line 255
    :cond_4
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p1, :cond_3

    .line 218
    :goto_2
    return-void

    .line 217
    :cond_3
    sput-object p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mSessionID:Ljava/lang/String;

    goto :goto_2
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "startindex"    # I

    .prologue
    .line 100
    return-void
.end method

.method public setStartNo(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 221
    if-gtz p1, :cond_3

    .line 225
    :goto_2
    return-void

    .line 224
    :cond_3
    sput p1, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->mStartNo:I

    goto :goto_2
.end method
