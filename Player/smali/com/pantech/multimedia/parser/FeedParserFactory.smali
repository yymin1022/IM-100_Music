.class public Lcom/pantech/multimedia/parser/FeedParserFactory;
.super Ljava/lang/Object;
.source "FeedParserFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFeedParser(Landroid/content/Context;I)Lcom/pantech/multimedia/parser/FeedParser;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "fp":Lcom/pantech/multimedia/parser/FeedParser;
    if-nez p2, :cond_9

    .line 17
    new-instance v0, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;

    .end local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;-><init>(Landroid/content/Context;)V

    .line 28
    .restart local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    :cond_8
    :goto_8
    return-object v0

    .line 18
    :cond_9
    const/4 v1, 0x2

    if-ne p2, v1, :cond_12

    .line 19
    new-instance v0, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;

    .end local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    goto :goto_8

    .line 20
    :cond_12
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1b

    .line 21
    new-instance v0, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;

    .end local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    goto :goto_8

    .line 22
    :cond_1b
    const/16 v1, 0x64

    if-ne p2, v1, :cond_25

    .line 23
    new-instance v0, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;

    .end local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    goto :goto_8

    .line 24
    :cond_25
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_8

    .line 25
    new-instance v0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;

    .end local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    invoke-direct {v0, p1}, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fp":Lcom/pantech/multimedia/parser/FeedParser;
    goto :goto_8
.end method
