.class public Lcom/pantech/multimedia/query/vendor/YtFeedQuery;
.super Lcom/pantech/multimedia/query/FeedQuery;
.source "YtFeedQuery.java"


# static fields
.field private static final YT_DEV_KEY:Ljava/lang/String; = "AI39si678zagUdp5eYxX91bqnY6yctuyZt5CDmi4azpqVxAc9MDt9WGfRpRcHog8OD8ja_xDpqwEtzocLpvV9hhg38qz3xFiuw"


# instance fields
.field private gQuery:Lcom/pantech/multimedia/query/GoogleQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->defaultGoogleQuery()V

    .line 27
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "max-results"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "start-index"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mStartIdx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "total"    # I
    .param p5, "startindex"    # I

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/pantech/multimedia/query/FeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->defaultGoogleQuery()V

    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "q"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_17
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 39
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "category"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_28
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "max-results"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "start-index"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mStartIdx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private defaultGoogleQuery()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_15

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    .line 50
    :goto_b
    new-instance v0, Lcom/pantech/multimedia/query/GoogleQuery;

    iget-object v1, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/query/GoogleQuery;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->gQuery:Lcom/pantech/multimedia/query/GoogleQuery;

    .line 51
    return-void

    .line 48
    :cond_15
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_b
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "category"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategoryList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public addKeywords(Ljava/lang/String;)V
    .registers 5
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "q"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
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
    .line 200
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 201
    if-eqz p4, :cond_3b

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
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

    .line 217
    :cond_3a
    :goto_3a
    return-object p1

    .line 204
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

    .line 209
    :catch_4f
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3a
.end method

.method public getRequestHeaderMap()Ljava/util/Map;
    .registers 4
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
    .line 133
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mHeaderMap:Ljava/util/Map;

    const-string v1, "X-GData-Key"

    const-string v2, "key=AI39si678zagUdp5eYxX91bqnY6yctuyZt5CDmi4azpqVxAc9MDt9WGfRpRcHog8OD8ja_xDpqwEtzocLpvV9hhg38qz3xFiuw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mHeaderMap:Ljava/util/Map;

    const-string v1, "GData-Version"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestUrlByType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
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
    .line 74
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    goto :goto_9
.end method

.method public makeRequestQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->makeQueryMap()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 120
    const-string v1, "http://gdata.youtube.com/feeds/api/videos"

    const-string v2, "UTF-8"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v4, 0x1

    .line 154
    .local v4, "isFirst":Z
    move-object v1, p1

    .line 156
    .local v1, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 158
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 192
    const-string v0, "MMDATAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "make query string = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v1

    .line 159
    :cond_27
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 161
    .local v9, "value":Ljava/lang/Object;
    const-string v3, ""

    .line 163
    .local v3, "changedVal":Ljava/lang/String;
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v3, v9

    .line 164
    check-cast v3, Ljava/lang/String;

    :cond_3c
    :goto_3c
    move-object v0, p0

    move-object v5, p2

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    .line 165
    :cond_46
    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    .line 166
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 167
    :cond_4f
    instance-of v0, v9, Ljava/lang/Long;

    if-eqz v0, :cond_58

    .line 168
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 169
    :cond_58
    instance-of v0, v9, Ljava/lang/Boolean;

    if-eqz v0, :cond_61

    .line 170
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 171
    :cond_61
    instance-of v0, v9, Ljava/util/List;

    if-eqz v0, :cond_3c

    .line 172
    const/4 v7, 0x0

    .local v7, "isAdded":Z
    move-object v0, v9

    .line 173
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 175
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_70
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_7c

    .line 185
    if-nez v7, :cond_3c

    goto :goto_c

    :cond_7c
    move-object v0, v9

    .line 176
    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c4

    .line 177
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

    .line 178
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_c3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_c3
    const/4 v7, 0x1

    .line 175
    :cond_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_70
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
    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->replaceSpaceToOring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategory:Ljava/lang/String;

    .line 68
    const-string v0, "VideoFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCategory = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "category"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .registers 5
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
    .line 82
    .local p1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "category"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mCategoryList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 5
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywords:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "q"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .registers 5
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
    .line 89
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "q"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mKeywordsList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 149
    return-void
.end method

.method public setStartIndex(I)V
    .registers 5
    .param p1, "startindex"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mStartIdx:I

    .line 62
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "start-index"

    iget v2, p0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;->mStartIdx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
