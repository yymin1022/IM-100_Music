.class public Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "UPlusFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;,
        Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    }
.end annotation


# static fields
.field private static final ARRAY_KEY_ALBUM_IMAGE_URL:Ljava/lang/String; = "ALBUM_IMAGE_URL"

.field private static final ARRAY_KEY_ALBUM_TITLE:Ljava/lang/String; = "ALBUM_TITLE"

.field private static final ARRAY_KEY_ARTIST:Ljava/lang/String; = "ARTIST"

.field private static final ARRAY_KEY_BITRATE:Ljava/lang/String; = "BITRATE"

.field private static final ARRAY_KEY_CATEGORY:Ljava/lang/String; = "CATEGORY"

.field private static final ARRAY_KEY_DOWNLOAD_URL:Ljava/lang/String; = "DOWNLOAD_URL"

.field private static final ARRAY_KEY_FILE_NAME:Ljava/lang/String; = "NAME"

.field private static final ARRAY_KEY_FILE_SIZE:Ljava/lang/String; = "SIZE"

.field private static final ARRAY_KEY_IMAGE_URL:Ljava/lang/String; = "IMAGE_URL"

.field private static final ARRAY_KEY_PLAY_TIME:Ljava/lang/String; = "PLAYTIME"

.field private static final ARRAY_KEY_REG_DT:Ljava/lang/String; = "REG_DT"

.field private static final ARRAY_KEY_SONG_ID:Ljava/lang/String; = "ID"

.field private static final ARRAY_KEY_SONG_TITLE:Ljava/lang/String; = "SONG_TITLE"

.field public static final FILE_META_HEADER:[Ljava/lang/String;

.field private static final KEY_CHANGE:Ljava/lang/String; = "CHANGE"

.field private static final KEY_CURRENT_DT:Ljava/lang/String; = "CURRENT_DT"

.field private static final KEY_FILE_CNT:Ljava/lang/String; = "FILE_CNT"

.field public static final KEY_FILE_LIST:Ljava/lang/String; = "FILE_LIST"

.field public static final KEY_FILE_META_INFO:Ljava/lang/String; = "FILE_META_INFO"

.field private static final KEY_FILE_TOTAL_CNT:Ljava/lang/String; = "FILE_TOTAL_CNT"

.field public static final KEY_PARAMSET:Ljava/lang/String; = "ParamSet"

.field private static final KEY_RT:Ljava/lang/String; = "RT"

.field private static final KEY_RT_MSG:Ljava/lang/String; = "RT_MSG"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 47
    const-string v2, "IMAGE_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BITRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PLAYTIME"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ARTIST"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 48
    const-string v2, "SONG_TITLE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ALBUM_TITLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "REG_DT"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->FILE_META_HEADER:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RT"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_TOTAL_CNT"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_CNT"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RT_MSG"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CHANGE"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CURRENT_DT"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_META_INFO"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public createItem()Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
    .registers 2

    .prologue
    .line 326
    new-instance v0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;-><init>(Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    .line 327
    .local v0, "item":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
    return-object v0
.end method

.method public bridge synthetic createItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    move-result-object v0

    return-object v0
.end method

.method public createMetaItem()Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    .registers 2

    .prologue
    .line 331
    new-instance v0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;-><init>(Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    .line 332
    .local v0, "item":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    return-object v0
.end method

.method public getAlbumInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChange()Ljava/lang/String;
    .registers 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CHANGE"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 363
    const/4 v0, 0x0

    .line 365
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getCurrentDT()Ljava/lang/String;
    .registers 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "CURRENT_DT"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 372
    const/4 v0, 0x0

    .line 374
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 276
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
    .line 289
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
            "Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 5

    .prologue
    .line 281
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "FILE_CNT"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "num":I
    return v0
.end method

.method public getMetaItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_META_INFO"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "RT"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 345
    const/4 v0, 0x0

    .line 347
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getResMsg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 351
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "RT_MSG"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 354
    const/4 v0, 0x0

    .line 356
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getStartIdx()I
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .registers 5

    .prologue
    .line 258
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v3, "FILE_TOTAL_CNT"

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_13
    return v0

    .line 263
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "count":I
    goto :goto_13
.end method

.method public setItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 310
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
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
    .line 303
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_LIST"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public setMetaItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_META_INFO"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 318
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_META_INFO"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_16
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "FILE_META_INFO"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method
