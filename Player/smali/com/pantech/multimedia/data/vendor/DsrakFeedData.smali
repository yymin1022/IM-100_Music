.class public Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "DsrakFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;,
        Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;,
        Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;,
        Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
    }
.end annotation


# static fields
.field public static final KEY_PAGE_INFO:Ljava/lang/String; = "PAGE_INFO"

.field public static final KEY_RESULT:Ljava/lang/String; = "RESULT"

.field public static final KEY_SERVICE:Ljava/lang/String; = "SERVICE"

.field public static final KEY_SONG:Ljava/lang/String; = "SONG"

.field public static final KEY_SONG_LIST:Ljava/lang/String; = "SONG_LIST"

.field public static final KEY_SONG_LIST2:Ljava/lang/String; = "SONG_LIST2"

.field private static final LINK_URL_SONG:Ljava/lang/String; = "http://masp.ollehmusic.com/partner/pantech/api_gateway.asp?api=MINI_SONG_STM&param="


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;-><init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PAGE_INFO"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;-><init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SERVICE"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;-><init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public createItem()Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
    .registers 2

    .prologue
    .line 402
    new-instance v0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;-><init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    .line 403
    .local v0, "items":Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
    return-object v0
.end method

.method public bridge synthetic createItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlbumInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getAlbumInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    const-string v0, "EUC-KR"

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PAGE_INFO"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;

    .line 414
    invoke-virtual {v1}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 416
    const/4 v1, 0x0

    .line 418
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method public getFeedItems()Ljava/util/ArrayList;
    .registers 4
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
    .line 330
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONG_LIST"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    .line 331
    const/4 v0, 0x0

    .line 338
    :goto_b
    return-object v0

    .line 332
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/multimedia/data/FeedItem;>;"
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONG_LIST2"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 335
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONG_LIST2"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 337
    :cond_29
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONG_LIST"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PAGE_INFO"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;

    .line 344
    invoke-virtual {v1}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->getSongCoutInPage()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 346
    const/4 v1, 0x0

    .line 348
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method public getLyrics()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 423
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 424
    :cond_1d
    const/4 v0, 0x0

    .line 425
    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v0

    const-string v1, "LYRICS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1e
.end method

.method public getResCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;->getResultCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStatus()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SERVICE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStartIdx()I
    .registers 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getItemsPerPage()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTotal()I
    .registers 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PAGE_INFO"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;

    invoke-virtual {v1}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->getTotal()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 360
    const/4 v1, 0x0

    .line 362
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method public setAlbumItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 394
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 397
    check-cast p1, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public setAlbumItemsList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST2"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-void
.end method

.method public setItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 386
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 389
    check-cast p1, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
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
    .line 376
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_LIST"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method
