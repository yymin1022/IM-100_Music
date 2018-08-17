.class public Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;
.super Lcom/pantech/multimedia/query/CloudFeedQuery;
.source "CloudLiveFeedQuery.java"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mDeviceID:Ljava/lang/String;

.field private mKeyDT:Ljava/lang/String;

.field private mLastDT:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/query/CloudFeedQuery;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mDeviceID:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mUserID:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mAuthToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mLastDT:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mKeyDT:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "total"    # I
    .param p5, "startindex"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/pantech/multimedia/query/CloudFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 18
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mDeviceID:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mUserID:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mAuthToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mLastDT:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mKeyDT:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private setMusicContentsParameters()V
    .registers 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->getQueryType()I

    move-result v0

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2c

    .line 57
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "ID"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "TOKEN"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "serviceId"

    const-string v2, "mediaContent"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "P_CLOUD_DT"

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mLastDT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2c
    return-void
.end method

.method private setQueryMap()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setMusicContentsParameters()V

    .line 52
    return-void
.end method


# virtual methods
.method protected addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 130
    if-eqz p4, :cond_37

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
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

    .line 144
    :cond_36
    return-object p1

    .line 133
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

.method public getRequestUrlByType(I)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 38
    const/16 v1, 0x258

    if-ne p1, v1, :cond_40

    .line 39
    const-string v0, "http://cloud-mds.vegalive.co.kr:16749/sync/media/"

    .line 40
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/list.rest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "BongBong"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v0    # "url":Ljava/lang/String;
    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
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
    .line 70
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    goto :goto_9
.end method

.method public makeRequestQuery()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setQueryMap()V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->makeQueryMap()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 85
    const-string v1, "BongBong"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->getQueryType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->getQueryType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->getRequestUrlByType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_2e
    return-object v0
.end method

.method public parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v4, 0x1

    .line 96
    .local v4, "isFirst":Z
    move-object v1, p1

    .line 98
    .local v1, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 100
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 119
    const-string v0, "MMDATAClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "make query string = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v1

    .line 101
    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 103
    .local v7, "value":Ljava/lang/Object;
    const-string v3, ""

    .line 105
    .local v3, "changedVal":Ljava/lang/String;
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v3, v7

    .line 106
    check-cast v3, Ljava/lang/String;

    :cond_3c
    :goto_3c
    move-object v0, p0

    move-object v5, p2

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    .line 107
    :cond_46
    instance-of v0, v7, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    .line 108
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 109
    :cond_4f
    instance-of v0, v7, Ljava/lang/Long;

    if-eqz v0, :cond_58

    .line 110
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 111
    :cond_58
    instance-of v0, v7, Ljava/lang/Boolean;

    if-eqz v0, :cond_3c

    .line 112
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
    .line 78
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-super {p0, p1}, Lcom/pantech/multimedia/query/CloudFeedQuery;->requestQuery(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public setAdditionalParameterField(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p1, :cond_3

    .line 177
    :goto_2
    return-void

    .line 176
    :cond_3
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mAuthToken:Ljava/lang/String;

    goto :goto_2
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_3

    .line 163
    :goto_2
    return-void

    .line 162
    :cond_3
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mDeviceID:Ljava/lang/String;

    goto :goto_2
.end method

.method public setKeyDT(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileID"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_3

    .line 191
    :goto_2
    return-void

    .line 190
    :cond_3
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mKeyDT:Ljava/lang/String;

    goto :goto_2
.end method

.method public setLastDT(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastDT"    # Ljava/lang/String;

    .prologue
    .line 180
    if-nez p1, :cond_3

    .line 184
    :goto_2
    return-void

    .line 183
    :cond_3
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mLastDT:Ljava/lang/String;

    goto :goto_2
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mQueryType:I

    .line 150
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_3

    .line 170
    :goto_2
    return-void

    .line 169
    :cond_3
    iput-object p1, p0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->mUserID:Ljava/lang/String;

    goto :goto_2
.end method
