.class public interface abstract Lcom/pantech/multimedia/data/FeedData;
.super Ljava/lang/Object;
.source "FeedData.java"


# virtual methods
.method public abstract createItem()Ljava/lang/Object;
.end method

.method public abstract getAlbumInfo()Ljava/lang/Object;
.end method

.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getCurrentPage()I
.end method

.method public abstract getFeedItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/multimedia/data/FeedItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getItemsPerPage()I
.end method

.method public abstract getResCode()Ljava/lang/String;
.end method

.method public abstract getStartIdx()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract setItem(Ljava/lang/Object;)V
.end method

.method public abstract setItemsList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation
.end method
