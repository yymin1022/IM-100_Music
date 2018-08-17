.class Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
.super Ljava/lang/Object;
.source "QuerySimilartySort.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/QuerySimilartySort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimilaritySortTask"
.end annotation


# static fields
.field static mRemoved:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field mCmpTitle:[Ljava/lang/String;

.field mConvertedList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mCountDown:Ljava/util/concurrent/CountDownLatch;

.field mLoopSize:I

.field mRatio:I

.field mSimilarItemID:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSize:I

.field mSortMethod:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;

.field mStart:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 495
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mRemoved:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;IIILcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;Ljava/util/concurrent/CountDownLatch;)V
    .registers 11
    .param p1, "cmpTitle"    # [Ljava/lang/String;
    .param p4, "startPosition"    # I
    .param p5, "size"    # I
    .param p6, "checkRatio"    # I
    .param p7, "method"    # Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;
    .param p8, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;III",
            "Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "convertedList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p3, "removeID":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput p4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mStart:I

    .line 500
    iput p5, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSize:I

    .line 501
    iget v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSize:I

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mLoopSize:I

    .line 503
    iput p6, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mRatio:I

    .line 505
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCmpTitle:[Ljava/lang/String;

    .line 507
    iput-object p2, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mConvertedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 508
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSimilarItemID:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 510
    iput-object p7, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSortMethod:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;

    .line 512
    iput-object p8, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 535
    const/4 v2, 0x0

    .line 537
    .local v2, "distance":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 539
    iget v3, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mStart:I

    .local v3, "i":I
    :goto_c
    iget v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mStart:I

    iget v5, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mLoopSize:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_53

    .line 541
    iget-object v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mConvertedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "similar_cmp_title"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, "destTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mConvertedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "similar_cmp_artist"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "destArtist":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSortMethod:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCmpTitle:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCmpTitle:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v4, v5, v1, v6, v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;->similarityMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 550
    iget v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mRatio:I

    if-gt v2, v4, :cond_50

    .line 553
    iget-object v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSimilarItemID:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 557
    .end local v0    # "destArtist":Ljava/lang/String;
    .end local v1    # "destTitle":Ljava/lang/String;
    :cond_53
    iget-object v4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 558
    return-void
.end method

.method public declared-synchronized set([Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;IIILcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;Ljava/util/concurrent/CountDownLatch;)V
    .registers 11
    .param p1, "cmpTitle"    # [Ljava/lang/String;
    .param p4, "startPosition"    # I
    .param p5, "size"    # I
    .param p6, "checkRatio"    # I
    .param p7, "method"    # Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;
    .param p8, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;III",
            "Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 517
    .local p2, "convertedList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p3, "removeID":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_1
    iput p4, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mStart:I

    .line 518
    iput p5, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSize:I

    .line 519
    iget v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSize:I

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mLoopSize:I

    .line 521
    iput p6, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mRatio:I

    .line 523
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCmpTitle:[Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mConvertedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 526
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSimilarItemID:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 528
    iput-object p7, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mSortMethod:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;

    .line 530
    iput-object p8, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->mCountDown:Ljava/util/concurrent/CountDownLatch;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 531
    monitor-exit p0

    return-void

    .line 517
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
