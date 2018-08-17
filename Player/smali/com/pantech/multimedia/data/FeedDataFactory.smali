.class public Lcom/pantech/multimedia/data/FeedDataFactory;
.super Ljava/lang/Object;
.source "FeedDataFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFeedData(I)Lcom/pantech/multimedia/data/FeedData;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, "fd":Lcom/pantech/multimedia/data/FeedData;
    if-nez p1, :cond_9

    .line 16
    new-instance v0, Lcom/pantech/multimedia/data/vendor/YtFeedData;

    .end local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    invoke-direct {v0}, Lcom/pantech/multimedia/data/vendor/YtFeedData;-><init>()V

    .line 27
    .restart local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    :cond_8
    :goto_8
    return-object v0

    .line 17
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    .line 18
    new-instance v0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    .end local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    invoke-direct {v0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;-><init>()V

    .restart local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    goto :goto_8

    .line 19
    :cond_12
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 20
    new-instance v0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    .end local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    invoke-direct {v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;-><init>()V

    .restart local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    goto :goto_8

    .line 21
    :cond_1b
    const/16 v1, 0x64

    if-ne p1, v1, :cond_25

    .line 22
    new-instance v0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .end local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    invoke-direct {v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;-><init>()V

    .restart local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    goto :goto_8

    .line 23
    :cond_25
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_8

    .line 24
    new-instance v0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    .end local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    invoke-direct {v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;-><init>()V

    .restart local v0    # "fd":Lcom/pantech/multimedia/data/FeedData;
    goto :goto_8
.end method
