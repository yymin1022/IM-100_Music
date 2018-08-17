.class public abstract Lcom/pantech/multimedia/query/FeedQuery;
.super Ljava/lang/Object;
.source "FeedQuery.java"


# static fields
.field public static final DEFAULT_PAGENO:I = 0x1

.field public static final DEFAULT_STARTIDX:I = 0x1

.field public static final DEFAULT_TOTAL:I = 0x14


# instance fields
.field protected mAlbumId:Ljava/lang/String;

.field protected mAppContext:Landroid/content/Context;

.field protected mArtistId:Ljava/lang/String;

.field protected mCategory:Ljava/lang/String;

.field protected mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:Ljava/lang/String;

.field protected mKeywords:Ljava/lang/String;

.field protected mKeywordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryType:I

.field protected mStartIdx:I

.field protected mTotal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywordsList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategoryList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mHeaderMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/pantech/multimedia/query/FeedQuery;->mAppContext:Landroid/content/Context;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywords:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategory:Ljava/lang/String;

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mTotal:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mStartIdx:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywrods"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywordsList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategoryList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mHeaderMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/pantech/multimedia/query/FeedQuery;->mAppContext:Landroid/content/Context;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywords:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategory:Ljava/lang/String;

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mTotal:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mStartIdx:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "total"    # I
    .param p5, "startindex"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywordsList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategoryList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mHeaderMap:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/pantech/multimedia/query/FeedQuery;->mAppContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywords:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategory:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/pantech/multimedia/query/FeedQuery;->mTotal:I

    .line 57
    iget v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mTotal:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_30

    const/16 v0, 0x14

    iput v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mTotal:I

    .line 59
    :cond_30
    iput p5, p0, Lcom/pantech/multimedia/query/FeedQuery;->mStartIdx:I

    .line 60
    return-void
.end method


# virtual methods
.method public abstract addCategory(Ljava/lang/String;)V
.end method

.method public abstract addKeywords(Ljava/lang/String;)V
.end method

.method protected abstract addQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public clearHeaderMap()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearQueryMap()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mCategoryList:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mKeywordsList:Ljava/util/List;

    return-object v0
.end method

.method public getQueryType()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mQueryType:I

    return v0
.end method

.method public abstract getRequestHeaderMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestUrlByType(I)Ljava/lang/String;
.end method

.method public getStartIndex()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/pantech/multimedia/query/FeedQuery;->mStartIdx:I

    return v0
.end method

.method public abstract makeQueryMap()Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract makeRequestQuery()Ljava/lang/String;
.end method

.method public abstract parseQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestQuery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setCategory(Ljava/lang/String;)V
.end method

.method public abstract setCategory(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setKeywords(Ljava/lang/String;)V
.end method

.method public abstract setKeywords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setQueryType(I)V
.end method

.method public abstract setStartIndex(I)V
.end method
