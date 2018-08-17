.class public Lcom/pantech/app/music/list/component/ArrayListMap;
.super Ljava/lang/Object;
.source "ArrayListMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field Loggable:Z

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation
.end field

.field mHashMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TS;TK;>;"
        }
    .end annotation
.end field

.field mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->Loggable:Z

    .line 16
    iput-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    .line 17
    iput-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    .line 23
    return-void
.end method

.method private checkSize()V
    .registers 4

    .prologue
    .line 130
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 132
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1f

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "size is different"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1f
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 116
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 119
    :try_start_9
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    .line 124
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 126
    return-void

    .line 124
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 106
    :try_start_9
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TK;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 49
    :try_start_9
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TK;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    .local p2, "value":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 29
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 31
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "oldValue":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v0    # "oldValue":Ljava/lang/Object;, "TK;"
    :goto_21
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    return-void

    .line 37
    :cond_2b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TK;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 61
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "ret":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_16

    .line 64
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_16
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 68
    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 88
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 91
    :try_start_9
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/ArrayListMap;->checkSize()V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mHashMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1c

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public values()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<TS;TK;>;"
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 76
    :try_start_9
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/ArrayListMap;->checkSize()V

    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ArrayListMap;->mSelectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
