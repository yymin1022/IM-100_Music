.class public Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "CloudLiveFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "responseTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "actionUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "resultCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "resultMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "lastSyncDts"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public createItem()Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;
    .registers 2

    .prologue
    .line 259
    new-instance v0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;-><init>(Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V

    return-object v0
.end method

.method public bridge synthetic createItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getFeedItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSyncDT()Ljava/lang/String;
    .registers 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "lastSyncDts"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 290
    const/4 v0, 0x0

    .line 292
    .end local v0    # "str":Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getResCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 272
    const/4 v0, 0x0

    .line 274
    .end local v0    # "str":Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getResMsg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "resultMessage"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 281
    const/4 v0, 0x0

    .line 283
    .end local v0    # "str":Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getStartIdx()I
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .registers 5

    .prologue
    .line 213
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "num":I
    return v0
.end method

.method public setItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 252
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setItemsList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "filelist"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method
