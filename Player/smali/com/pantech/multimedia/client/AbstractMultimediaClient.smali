.class public abstract Lcom/pantech/multimedia/client/AbstractMultimediaClient;
.super Ljava/lang/Object;
.source "AbstractMultimediaClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFeedData:Lcom/pantech/multimedia/data/FeedData;

.field protected mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

.field protected mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

.field protected mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mVendor:I

    .line 34
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaDataFactory;

    iget-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mVendor:I

    invoke-direct {v0, v1, v2}, Lcom/pantech/multimedia/client/MultimediaDataFactory;-><init>(Landroid/content/Context;I)V

    .line 36
    .local v0, "mdf":Lcom/pantech/multimedia/client/MultimediaDataFactory;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedData()Lcom/pantech/multimedia/data/FeedData;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    .line 37
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedParser()Lcom/pantech/multimedia/parser/FeedParser;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    .line 38
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedQuery()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mVendor:I

    .line 46
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaDataFactory;

    iget-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mVendor:I

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/MultimediaDataFactory;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 48
    .local v0, "mdf":Lcom/pantech/multimedia/client/MultimediaDataFactory;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedData()Lcom/pantech/multimedia/data/FeedData;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    .line 49
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedParser()Lcom/pantech/multimedia/parser/FeedParser;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    .line 50
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaDataFactory;->getFeedQuery()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    .line 51
    return-void
.end method


# virtual methods
.method public getFeedDataInstance()Lcom/pantech/multimedia/data/FeedData;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    return-object v0
.end method

.method public getFeedParserInstance()Lcom/pantech/multimedia/parser/FeedParser;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    return-object v0
.end method

.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/multimedia/client/AbstractMultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    return-object v0
.end method

.method public abstract request()Z
.end method

.method public abstract setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
.end method

.method public abstract setQueryType(I)V
.end method

.method public abstract setQueryUrl(Ljava/lang/String;)V
.end method
