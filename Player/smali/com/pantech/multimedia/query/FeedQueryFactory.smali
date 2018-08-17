.class public Lcom/pantech/multimedia/query/FeedQueryFactory;
.super Ljava/lang/Object;
.source "FeedQueryFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFeedQuery(Landroid/content/Context;I)Lcom/pantech/multimedia/query/FeedQuery;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "avf":Lcom/pantech/multimedia/query/FeedQuery;
    if-nez p2, :cond_9

    .line 18
    new-instance v0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;-><init>(Landroid/content/Context;)V

    .line 29
    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    :cond_8
    :goto_8
    return-object v0

    .line 19
    :cond_9
    const/4 v1, 0x2

    if-ne p2, v1, :cond_12

    .line 20
    new-instance v0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;-><init>(Landroid/content/Context;)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_8

    .line 21
    :cond_12
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1b

    .line 22
    new-instance v0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;-><init>(Landroid/content/Context;)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_8

    .line 23
    :cond_1b
    const/16 v1, 0x64

    if-ne p2, v1, :cond_25

    .line 24
    new-instance v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;-><init>(Landroid/content/Context;)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_8

    .line 25
    :cond_25
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_8

    .line 26
    new-instance v0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;-><init>(Landroid/content/Context;)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_8
.end method

.method public createFeedQuery(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)Lcom/pantech/multimedia/query/FeedQuery;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startindex"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "avf":Lcom/pantech/multimedia/query/FeedQuery;
    if-nez p2, :cond_e

    .line 39
    new-instance v0, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/YtFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 50
    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    :cond_d
    :goto_d
    return-object v0

    .line 40
    :cond_e
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1c

    .line 41
    new-instance v0, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/DsrakFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_d

    .line 42
    :cond_1c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    .line 43
    new-instance v0, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/MelonFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_d

    .line 44
    :cond_2a
    const/16 v1, 0x64

    if-ne p2, v1, :cond_39

    .line 45
    new-instance v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_d

    .line 46
    :cond_39
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_d

    .line 47
    new-instance v0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;

    .end local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "avf":Lcom/pantech/multimedia/query/FeedQuery;
    goto :goto_d
.end method
