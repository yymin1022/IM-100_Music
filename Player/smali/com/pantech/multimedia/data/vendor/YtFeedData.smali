.class public Lcom/pantech/multimedia/data/vendor/YtFeedData;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "YtFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
    }
.end annotation


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DATA_ITEMS:Ljava/lang/String; = "items"

.field public static final KEY_DATA_ITEMSPERPAGE:Ljava/lang/String; = "itemsPerPage"

.field public static final KEY_DATA_STARTINDEX:Ljava/lang/String; = "startIndex"

.field public static final KEY_DATA_TOTALITEMS:Ljava/lang/String; = "totalItems"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "totalItems"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "startIndex"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "itemsPerPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "items"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "items"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 263
    const/4 v0, 0x1

    .line 264
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public createItem()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;-><init>(Lcom/pantech/multimedia/data/vendor/YtFeedData;)V

    .line 64
    .local v0, "items":Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
    return-object v0
.end method

.method public bridge synthetic createItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlbumInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getAlbumInfo()Ljava/util/HashMap;

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
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getItemsPerPage()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 275
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getStartIdx()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getItemsPerPage()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/multimedia/data/FeedItem;>;"
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v2, "items"

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "items"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPerPage()I
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "itemsPerPage"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartIdx()I
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "startIndex"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotal()I
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "totalItems"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setItem(Ljava/lang/Object;)V
    .registers 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "items"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
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
    .line 53
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "items"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
