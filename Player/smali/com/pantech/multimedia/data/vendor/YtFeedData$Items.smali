.class public Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "YtFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/FeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/YtFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Items"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;,
        Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;,
        Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;
    }
.end annotation


# static fields
.field public static final KEY_ITEMS_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_ITEMS_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_ITEMS_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_ITEMS_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_ITEMS_ID:Ljava/lang/String; = "id"

.field public static final KEY_ITEMS_PLAYER:Ljava/lang/String; = "player"

.field public static final KEY_ITEMS_RATING:Ljava/lang/String; = "rating"

.field public static final KEY_ITEMS_RATINGCOUNT:Ljava/lang/String; = "ratingCount"

.field public static final KEY_ITEMS_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final KEY_ITEMS_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_ITEMS_UPDATED:Ljava/lang/String; = "updated"

.field public static final KEY_ITEMS_UPLOADED:Ljava/lang/String; = "uploaded"

.field public static final KEY_ITEMS_UPLOADER:Ljava/lang/String; = "uploader"

.field public static final KEY_ITEMS_VIEWCOUNT:Ljava/lang/String; = "viewCount"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/YtFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/YtFeedData;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 100
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->this$0:Lcom/pantech/multimedia/data/vendor/YtFeedData;

    .line 85
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "uploaded"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "updated"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "uploader"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "category"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "description"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "thumbnail"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;-><init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "player"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;-><init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "content"

    new-instance v2, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;

    invoke-direct {v2, p0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;-><init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "rating"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ratingCount"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "viewCount"

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_4

    .line 209
    :cond_3
    :goto_3
    return v0

    .line 205
    :cond_4
    const-string v1, "player"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 206
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 207
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    :cond_1c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public chkSkipItem(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p1, :cond_4

    .line 219
    :cond_3
    :goto_3
    return v0

    .line 215
    :cond_4
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 216
    const-string v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 217
    const-string v1, "accessControl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    :cond_1c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContent()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;

    return-object v0
.end method

.method public getDefaultPlayUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "player"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "player"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "rating"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRatingCount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ratingCount"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "updated"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUploaded()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "uploaded"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "uploader"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "viewCount"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebLyricsURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdultContents()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method
