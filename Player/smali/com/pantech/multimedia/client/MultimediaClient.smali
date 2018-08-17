.class public abstract Lcom/pantech/multimedia/client/MultimediaClient;
.super Lcom/pantech/multimedia/client/AbstractMultimediaClient;
.source "MultimediaClient.java"


# static fields
.field public static final ABNORMAL_RESULT:I = 0xc8

.field public static final FEED_DONE:I = 0x1

.field public static final IOEXCEPTION:I = 0x65

.field public static final JSONEXCEPTION:I = 0x66

.field public static final MMCLIENTEXCEPTION:I = 0x67

.field public static final QUERYEXCEPTION:I = 0x68

.field public static final UNKNOWHOSTEXCEPTION:I = 0x69

.field public static final XMLPARSEEXCEPTION:I = 0x6a


# instance fields
.field protected mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

.field public mQueryType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/AbstractMultimediaClient;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/pantech/multimedia/client/AbstractMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract processResponse(ILjava/lang/String;)V
.end method

.method public request()Z
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    iget v1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mQueryType:I

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/FeedQuery;->setQueryType(I)V

    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    iget v1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mQueryType:I

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/parser/FeedParser;->setQueryType(I)V

    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    iget-object v1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    invoke-virtual {v1}, Lcom/pantech/multimedia/query/FeedQuery;->makeRequestQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/parser/FeedParser;->setRequestUrl(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    iget-object v1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mFeedQuery:Lcom/pantech/multimedia/query/FeedQuery;

    invoke-virtual {v1}, Lcom/pantech/multimedia/query/FeedQuery;->getRequestHeaderMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/parser/FeedParser;->setRequestHeaderMap(Ljava/util/Map;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iput-object p1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .line 44
    monitor-exit p0

    .line 47
    return-void

    .line 44
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/pantech/multimedia/client/MultimediaClient;->mQueryType:I

    .line 52
    return-void
.end method

.method public setQueryUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method
