.class public Lcom/pantech/multimedia/client/MultimediaDataFactory;
.super Ljava/lang/Object;
.source "MultimediaDataFactory.java"


# instance fields
.field private mData:Lcom/pantech/multimedia/data/FeedData;

.field private mParser:Lcom/pantech/multimedia/parser/FeedParser;

.field private mQuery:Lcom/pantech/multimedia/query/FeedQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/pantech/multimedia/data/FeedDataFactory;

    invoke-direct {v0}, Lcom/pantech/multimedia/data/FeedDataFactory;-><init>()V

    .line 20
    .local v0, "fdf":Lcom/pantech/multimedia/data/FeedDataFactory;
    invoke-virtual {v0, p2}, Lcom/pantech/multimedia/data/FeedDataFactory;->createFeedData(I)Lcom/pantech/multimedia/data/FeedData;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mData:Lcom/pantech/multimedia/data/FeedData;

    .line 22
    new-instance v2, Lcom/pantech/multimedia/query/FeedQueryFactory;

    invoke-direct {v2}, Lcom/pantech/multimedia/query/FeedQueryFactory;-><init>()V

    .line 23
    .local v2, "fqf":Lcom/pantech/multimedia/query/FeedQueryFactory;
    invoke-virtual {v2, p1, p2}, Lcom/pantech/multimedia/query/FeedQueryFactory;->createFeedQuery(Landroid/content/Context;I)Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mQuery:Lcom/pantech/multimedia/query/FeedQuery;

    .line 25
    new-instance v1, Lcom/pantech/multimedia/parser/FeedParserFactory;

    invoke-direct {v1}, Lcom/pantech/multimedia/parser/FeedParserFactory;-><init>()V

    .line 26
    .local v1, "fpf":Lcom/pantech/multimedia/parser/FeedParserFactory;
    invoke-virtual {v1, p1, p2}, Lcom/pantech/multimedia/parser/FeedParserFactory;->createFeedParser(Landroid/content/Context;I)Lcom/pantech/multimedia/parser/FeedParser;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mParser:Lcom/pantech/multimedia/parser/FeedParser;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v7, Lcom/pantech/multimedia/data/FeedDataFactory;

    invoke-direct {v7}, Lcom/pantech/multimedia/data/FeedDataFactory;-><init>()V

    .line 31
    .local v7, "fdf":Lcom/pantech/multimedia/data/FeedDataFactory;
    invoke-virtual {v7, p2}, Lcom/pantech/multimedia/data/FeedDataFactory;->createFeedData(I)Lcom/pantech/multimedia/data/FeedData;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mData:Lcom/pantech/multimedia/data/FeedData;

    .line 33
    new-instance v0, Lcom/pantech/multimedia/query/FeedQueryFactory;

    invoke-direct {v0}, Lcom/pantech/multimedia/query/FeedQueryFactory;-><init>()V

    .local v0, "fqf":Lcom/pantech/multimedia/query/FeedQueryFactory;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/pantech/multimedia/query/FeedQueryFactory;->createFeedQuery(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mQuery:Lcom/pantech/multimedia/query/FeedQuery;

    .line 36
    new-instance v8, Lcom/pantech/multimedia/parser/FeedParserFactory;

    invoke-direct {v8}, Lcom/pantech/multimedia/parser/FeedParserFactory;-><init>()V

    .line 37
    .local v8, "fpf":Lcom/pantech/multimedia/parser/FeedParserFactory;
    invoke-virtual {v8, p1, p2}, Lcom/pantech/multimedia/parser/FeedParserFactory;->createFeedParser(Landroid/content/Context;I)Lcom/pantech/multimedia/parser/FeedParser;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mParser:Lcom/pantech/multimedia/parser/FeedParser;

    .line 38
    return-void
.end method


# virtual methods
.method public getFeedData()Lcom/pantech/multimedia/data/FeedData;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mData:Lcom/pantech/multimedia/data/FeedData;

    return-object v0
.end method

.method public getFeedParser()Lcom/pantech/multimedia/parser/FeedParser;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mParser:Lcom/pantech/multimedia/parser/FeedParser;

    return-object v0
.end method

.method public getFeedQuery()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaDataFactory;->mQuery:Lcom/pantech/multimedia/query/FeedQuery;

    return-object v0
.end method
