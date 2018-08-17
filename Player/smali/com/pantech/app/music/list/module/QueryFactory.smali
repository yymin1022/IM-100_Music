.class public Lcom/pantech/app/music/list/module/QueryFactory;
.super Ljava/lang/Object;
.source "QueryFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;,
        Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;,
        Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field public static final PRIORITY_MAIN:I = 0x0

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_SUB:I = 0x1

.field public static final PRIORITY_SUB_SLOW:I = 0x2

.field static final TAG:Ljava/lang/String; = "QueryFactory"

.field static mInstance:Lcom/pantech/app/music/list/module/QueryFactory;

.field static mQueryTimeCheck:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

.field mQueryWorker:[Lcom/pantech/app/music/common/MusicWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mInstance:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryTimeCheck:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 88
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mContext:Landroid/content/Context;

    .line 90
    new-array v1, v6, [Lcom/pantech/app/music/common/MusicWorker;

    iput-object v1, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryWorker:[Lcom/pantech/app/music/common/MusicWorker;

    .line 91
    new-array v1, v6, [Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    iput-object v1, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v6, :cond_57

    .line 95
    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryWorker:[Lcom/pantech/app/music/common/MusicWorker;

    new-instance v3, Lcom/pantech/app/music/common/MusicWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryFactory Priority ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_55

    const/4 v1, 0x7

    :goto_38
    invoke-direct {v3, v4, v1}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 96
    iget-object v1, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    new-instance v2, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryWorker:[Lcom/pantech/app/music/common/MusicWorker;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/common/MusicWorker;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3, v4, v5}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 95
    :cond_55
    const/4 v1, 0x3

    goto :goto_38

    .line 98
    :cond_57
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mInstance:Lcom/pantech/app/music/list/module/QueryFactory;

    if-nez v0, :cond_f

    .line 105
    new-instance v0, Lcom/pantech/app/music/list/module/QueryFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mInstance:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 108
    :cond_f
    sget-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mInstance:Lcom/pantech/app/music/list/module/QueryFactory;

    return-object v0
.end method


# virtual methods
.method public getQueryHandler(I)Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;
    .registers 3
    .param p1, "priority"    # I

    .prologue
    .line 113
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 115
    const/4 p1, 0x1

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V
    .registers 16
    .param p1, "priority"    # I
    .param p2, "IFragment"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "condition"    # Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .param p5, "limit"    # I
    .param p6, "onQueryCompleteListener"    # Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    .prologue
    .line 161
    sget-object v1, Lcom/pantech/app/music/list/module/QueryFactory;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    :goto_8
    return-void

    .line 163
    :cond_9
    const-string v1, "QueryFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContents priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryTimeCheck:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/module/QueryFactory;->getQueryHandler(I)Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    move-result-object v8

    .line 169
    .local v8, "queryHandler":Landroid/os/Handler;
    new-instance v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;-><init>(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 170
    .local v0, "param":Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;
    const/4 v1, 0x1

    invoke-static {v8, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 175
    .local v7, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_61

    .line 176
    const-wide/16 v2, 0x64

    invoke-virtual {v8, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 178
    :cond_61
    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public queryContents(Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V
    .registers 13
    .param p1, "IFragment"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "condition"    # Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .param p4, "limit"    # I
    .param p5, "onQueryCompleteListener"    # Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    .prologue
    .line 153
    sget-object v0, Lcom/pantech/app/music/list/module/QueryFactory;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    :goto_8
    return-void

    .line 155
    :cond_9
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    goto :goto_8
.end method

.method public terminate()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 126
    sget-object v2, Lcom/pantech/app/music/list/module/QueryFactory;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v4, :cond_1c

    .line 130
    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryHandler:[Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->sendEmptyMessage(I)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 137
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_2e

    .line 145
    :goto_21
    const/4 v1, 0x0

    :goto_22
    if-ge v1, v4, :cond_33

    .line 147
    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryWorker:[Lcom/pantech/app/music/common/MusicWorker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/pantech/app/music/common/MusicWorker;->stopWorkerNoSync()V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 139
    :catch_2e
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_21

    .line 149
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_33
    return-void
.end method
