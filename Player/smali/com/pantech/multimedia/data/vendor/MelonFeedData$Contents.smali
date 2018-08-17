.class public Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "MelonFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/MelonFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Contents"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/MelonFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 282
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->this$0:Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    .line 266
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 267
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CONTENTID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONGNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMIMG"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAYTIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CURRANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PASTRANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "REPARTISTNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MUINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "URLPATH"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MESSAGECODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMID"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 366
    .end local v0    # "str":Ljava/lang/String;
    :goto_10
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUMNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 372
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "ARTISTID"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 375
    const/4 v2, 0x0

    .line 388
    :goto_11
    return-object v2

    .line 377
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 379
    .local v1, "subNum":I
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 380
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 385
    :cond_24
    :goto_24
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 388
    goto :goto_11

    .line 381
    :cond_2b
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 382
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_24
.end method

.method public getArtistImgUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 394
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ARTISTIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 396
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ARTISTIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    :goto_1a
    return-object v1

    .line 397
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 398
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->makeThumbUrlByArtistID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 400
    :cond_2e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTISTNAME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRank()I
    .registers 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CURRANK"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 407
    const/4 v1, -0x1

    .line 409
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
    .registers 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 293
    const/4 v0, 0x0

    .line 294
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.melon.com/pda/msvc/snsGatePage.jsp?type=son&sId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getDuration()Ljava/lang/String;
    .registers 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PLAYTIME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 301
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "PLAYTIME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    :goto_1a
    return-object v1

    :cond_1b
    const-string v1, "0"

    goto :goto_1a
.end method

.method public getItemId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CONTENTID"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 313
    .end local v0    # "str":Ljava/lang/String;
    :goto_10
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_11
    const-string v0, "0"

    goto :goto_10
.end method

.method public getLastRank()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 414
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "PASTRANK"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 420
    :cond_11
    :goto_11
    return v1

    .line 417
    :cond_12
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11
.end method

.method public getNotifyMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyMessageCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "MESSAGECODE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRepArtistName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "REPARTISTNAME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 427
    const/4 v0, 0x0

    .line 429
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 320
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "ALBUMIMG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    :goto_1a
    return-object v1

    .line 321
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 322
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->makeThumbUrlByAlbumID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 324
    :cond_2e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->this$0:Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    invoke-virtual {v1}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getContentsName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 332
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONGNAME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    :goto_16
    return-object v1

    .line 334
    :cond_17
    const-string v1, "searchSongList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 335
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONGNAME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_16

    .line 336
    :cond_2a
    const-string v1, "searchArtistList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 337
    const-string v1, "detailArtistInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 338
    :cond_3a
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getArtistName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 339
    :cond_3f
    const-string v1, "searchAlbumList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 340
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 342
    :cond_4c
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "SONGNAME"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_16
.end method

.method public getUploader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebLyricsURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "URLPATH"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAdultContents()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v3, p0, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->mParserMap:Ljava/util/WeakHashMap;

    const-string v4, "MUINFO"

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 441
    :cond_11
    :goto_11
    return v2

    .line 440
    :cond_12
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 441
    .local v0, "ct":C
    const/16 v3, 0x31

    if-ne v0, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11
.end method
