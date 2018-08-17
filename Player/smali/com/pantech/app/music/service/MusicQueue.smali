.class public Lcom/pantech/app/music/service/MusicQueue;
.super Ljava/lang/Object;
.source "MusicQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/MusicQueue$1;,
        Lcom/pantech/app/music/service/MusicQueue$Shuffler;
    }
.end annotation


# static fields
.field public static final FAIL:I = -0x1

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final OK:I = 0x0

.field public static final PLAYITEM_CHANGED:I = 0x1

.field public static final QUEUE_CHANGED:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicQueue"

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private FEATURE_FIX_SHUFFLE_LIST:Z

.field private final hexdigits:[C

.field private mContext:Landroid/content/Context;

.field private mDummyItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPos:I

.field private mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPos:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

.field mRCursor:Landroid/database/Cursor;

.field private final mRand:Lcom/pantech/app/music/service/MusicQueue$Shuffler;

.field private mRandPos:I

.field private mRepeatMode:I

.field private mReturnVal:I

.field private mShuffleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 45
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mDummyItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 46
    iput v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 47
    iput v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    .line 49
    iput v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicQueue;->FEATURE_FIX_SHUFFLE_LIST:Z

    .line 59
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->hexdigits:[C

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v0, Lcom/pantech/app/music/service/MusicQueue$Shuffler;

    invoke-direct {v0, v2}, Lcom/pantech/app/music/service/MusicQueue$Shuffler;-><init>(Lcom/pantech/app/music/service/MusicQueue$1;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mRand:Lcom/pantech/app/music/service/MusicQueue$Shuffler;

    .line 66
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    .line 69
    iput v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    .line 70
    iput v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    .line 74
    new-instance v0, Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/db/MusicQueueDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    .line 75
    iput-object p2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mDummyItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 79
    return-void

    .line 60
    :array_4c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private composeShuffleList()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 657
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    .line 659
    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-eq v1, v3, :cond_10

    .line 684
    :goto_f
    return-void

    .line 662
    :cond_10
    const-string v1, "MusicQueue"

    const-string v2, "composeShuffleList()-1"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 664
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 665
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    .line 667
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueue(Z)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    .line 669
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_62

    .line 670
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 671
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    const-string v3, "position"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 672
    .local v0, "pos":I
    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    if-eq v0, v1, :cond_3e

    .line 673
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 677
    .end local v0    # "pos":I
    :cond_62
    const-string v1, "MusicQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8c

    .line 680
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRCursor:Landroid/database/Cursor;

    .line 683
    :cond_8c
    const-string v1, "MusicQueue"

    const-string v2, "composeShuffleList()-2"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private saveMode()V
    .registers 5

    .prologue
    .line 449
    const-string v1, "MusicQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMode()->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "repeatmode"

    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    const-string v1, "shufflemode"

    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    return-void
.end method

.method private savePosition()V
    .registers 5

    .prologue
    .line 457
    const-string v1, "MusicQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePosition()->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "curpos"

    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    return-void
.end method

.method private saveQueue()V
    .registers 11

    .prologue
    .line 464
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    .line 465
    :try_start_3
    const-string v6, "MusicQueue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue()->length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicQueue;->getQueueArray()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/pantech/app/music/db/MusicQueueDBManager;->saveQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 469
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 470
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v5, "q":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 473
    .local v3, "len":I
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 474
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    if-ge v2, v3, :cond_76

    .line 476
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 477
    .local v4, "n":I
    if-nez v4, :cond_5f

    .line 478
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 480
    :cond_5f
    :goto_5f
    if-eqz v4, :cond_70

    .line 481
    and-int/lit8 v0, v4, 0xf

    .line 482
    .local v0, "digit":I
    ushr-int/lit8 v4, v4, 0x4

    .line 483
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 492
    .end local v0    # "digit":I
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "n":I
    .end local v5    # "q":Ljava/lang/StringBuilder;
    :catchall_6d
    move-exception v6

    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v6

    .line 485
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "n":I
    .restart local v5    # "q":Ljava/lang/StringBuilder;
    :cond_70
    const/16 v6, 0x3b

    :try_start_72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 489
    .end local v4    # "n":I
    :cond_76
    const-string v6, "curpos"

    iget v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 490
    const-string v6, "history"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 492
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_6d

    .line 493
    return-void
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 921
    sget-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 922
    sget-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 925
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    .line 926
    sget-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_22

    .line 927
    sget-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 928
    sget-object v0, Lcom/pantech/app/music/service/MusicQueue;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 930
    :cond_22
    return-void
.end method


# virtual methods
.method public addPlayCount()V
    .registers 5

    .prologue
    .line 908
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v1, :cond_5

    .line 916
    :goto_4
    return-void

    .line 912
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->updatePlaycount(Landroid/content/Context;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_4

    .line 913
    :catch_11
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public addQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 8
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 114
    if-nez p1, :cond_3

    .line 132
    :goto_2
    return-void

    .line 117
    :cond_3
    const-string v2, "MusicQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addQueue(list, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 120
    .local v1, "newList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 121
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 124
    :cond_32
    if-ltz p2, :cond_48

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_48

    .line 125
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    .line 130
    :goto_41
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 131
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    goto :goto_2

    .line 127
    :cond_48
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_41
.end method

.method public findPosById(J)I
    .registers 8
    .param p1, "audioid"    # J

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 280
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_1a

    .line 284
    .end local v0    # "i":I
    :goto_19
    return v0

    .line 279
    .restart local v0    # "i":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public getItem()Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 322
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_b

    .line 323
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 327
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_9
    monitor-exit v2

    return-object v0

    .line 325
    .end local v0    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mDummyItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .restart local v0    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    goto :goto_9

    .line 328
    .end local v0    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 332
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 333
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 335
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mDummyItem:Lcom/pantech/app/music/list/MusicItemInfo;

    goto :goto_12
.end method

.method public getLength()I
    .registers 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 353
    :try_start_3
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 354
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getPos()I
    .registers 2

    .prologue
    .line 348
    iget v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    return v0
.end method

.method public getPos(J)I
    .registers 8
    .param p1, "audioid"    # J

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 340
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_1a

    .line 344
    .end local v0    # "i":I
    :goto_19
    return v0

    .line 339
    .restart local v0    # "i":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 7

    .prologue
    .line 305
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 306
    :try_start_3
    const-string v2, "MusicQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQueue() ->length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 309
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 310
    .local v1, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 311
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 313
    :cond_4b
    monitor-exit v3

    .line 315
    .end local v0    # "i":I
    .end local v1    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_4c
    return-object v1

    :cond_4d
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_4c

    .line 316
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public getQueueArray()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 296
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 297
    .local v0, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 300
    .end local v0    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getRating()J
    .registers 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    return v0
.end method

.method public hasQueue(Lcom/pantech/app/music/list/MusicItemInfo;)I
    .registers 8
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 100
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1e

    .line 104
    .end local v0    # "i":I
    :goto_1d
    return v0

    .line 99
    .restart local v0    # "i":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public moveToNext(ZI)Z
    .registers 15
    .param p1, "force"    # Z
    .param p2, "count"    # I

    .prologue
    .line 742
    const-string v9, "MusicQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveToNext("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPlayPos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mLastPos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_53

    if-nez p1, :cond_53

    .line 744
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    if-gez v9, :cond_51

    .line 745
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 746
    const/4 v9, 0x0

    .line 846
    :goto_50
    return v9

    .line 748
    :cond_51
    const/4 v9, 0x1

    goto :goto_50

    .line 750
    :cond_53
    iget-boolean v9, p0, Lcom/pantech/app/music/service/MusicQueue;->FEATURE_FIX_SHUFFLE_LIST:Z

    if-eqz v9, :cond_e7

    .line 752
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_bb

    .line 753
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-eq v9, v10, :cond_6d

    .line 754
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 756
    :cond_6d
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    if-ne v9, v10, :cond_96

    .line 757
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    if-nez v9, :cond_96

    if-nez p1, :cond_96

    .line 758
    const-string v9, "MusicQueue"

    const-string v10, "=>we\'re at the end of the list!!"

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v9, 0x0

    iput v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    .line 760
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 761
    const/4 v9, 0x0

    goto :goto_50

    .line 764
    :cond_96
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v9, v10, :cond_b9

    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    add-int/2addr v9, p2

    :goto_a4
    iput v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    .line 765
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 777
    .local v3, "newPos":I
    :goto_b4
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 778
    const/4 v9, 0x1

    goto :goto_50

    .line 764
    .end local v3    # "newPos":I
    :cond_b9
    const/4 v9, 0x0

    goto :goto_a4

    .line 768
    :cond_bb
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    if-ne v9, v10, :cond_d5

    .line 769
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    if-nez v9, :cond_d5

    if-nez p1, :cond_d5

    .line 770
    const-string v9, "MusicQueue"

    const-string v10, "=>we\'re at the end of the list!!"

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 772
    const/4 v9, 0x0

    goto/16 :goto_50

    .line 775
    :cond_d5
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_e5

    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int v3, v9, p2

    .restart local v3    # "newPos":I
    :goto_e4
    goto :goto_b4

    .end local v3    # "newPos":I
    :cond_e5
    const/4 v3, 0x0

    goto :goto_e4

    .line 780
    :cond_e7
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17f

    .line 785
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    if-ltz v9, :cond_fb

    .line 786
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_fb
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    if-eqz v9, :cond_10f

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_10f

    .line 789
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->removeElementAt(I)V

    .line 792
    :cond_10f
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .line 793
    .local v5, "numTracks":I
    new-array v8, v5, [I

    .line 794
    .local v8, "tracks":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_118
    if-ge v1, v5, :cond_11f

    .line 795
    aput v1, v8, v1

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 798
    :cond_11f
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v4

    .line 799
    .local v4, "numHistory":I
    move v6, v5

    .line 800
    .local v6, "numUnplayed":I
    const/4 v1, 0x0

    :goto_127
    if-ge v1, v4, :cond_143

    .line 801
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 802
    .local v2, "idx":I
    if-ge v2, v5, :cond_140

    aget v9, v8, v2

    if-ltz v9, :cond_140

    .line 803
    add-int/lit8 v6, v6, -0x1

    .line 804
    const/4 v9, -0x1

    aput v9, v8, v2

    .line 800
    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_127

    .line 810
    .end local v2    # "idx":I
    :cond_143
    if-gtz v6, :cond_168

    .line 812
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_14c

    if-eqz p1, :cond_155

    .line 814
    :cond_14c
    move v6, v5

    .line 815
    const/4 v1, 0x0

    :goto_14e
    if-ge v1, v5, :cond_168

    .line 816
    aput v1, v8, v1

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    .line 819
    :cond_155
    const-string v9, "MusicQueue"

    const-string v10, "=>Shuffle : everything\'s already been played!!"

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 821
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 822
    const/4 v9, 0x0

    goto/16 :goto_50

    .line 825
    :cond_168
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRand:Lcom/pantech/app/music/service/MusicQueue$Shuffler;

    invoke-virtual {v9, v6}, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->nextInt(I)I

    move-result v7

    .line 826
    .local v7, "skip":I
    const/4 v0, -0x1

    .line 828
    .local v0, "cnt":I
    :cond_16f
    add-int/lit8 v0, v0, 0x1

    aget v9, v8, v0

    if-ltz v9, :cond_16f

    .line 830
    add-int/lit8 v7, v7, -0x1

    .line 831
    if-gez v7, :cond_16f

    .line 834
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 835
    const/4 v9, 0x1

    goto/16 :goto_50

    .line 837
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v4    # "numHistory":I
    .end local v5    # "numTracks":I
    .end local v6    # "numUnplayed":I
    .end local v7    # "skip":I
    .end local v8    # "tracks":[I
    :cond_17f
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    iget v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    if-ne v9, v10, :cond_199

    .line 838
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    if-nez v9, :cond_199

    if-nez p1, :cond_199

    .line 839
    const-string v9, "MusicQueue"

    const-string v10, "=>we\'re at the end of the list!!"

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 841
    const/4 v9, 0x0

    goto/16 :goto_50

    .line 844
    :cond_199
    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1ae

    iget v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int v3, v9, p2

    .line 845
    .restart local v3    # "newPos":I
    :goto_1a8
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 846
    const/4 v9, 0x1

    goto/16 :goto_50

    .line 844
    .end local v3    # "newPos":I
    :cond_1ae
    const/4 v3, 0x0

    goto :goto_1a8
.end method

.method public moveToPrev()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 703
    const-string v3, "MusicQueue"

    const-string v4, "moveToPrev()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicQueue;->FEATURE_FIX_SHUFFLE_LIST:Z

    if-eqz v3, :cond_5c

    .line 706
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-ne v3, v5, :cond_48

    .line 707
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 708
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 710
    :cond_21
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3f

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    add-int/lit8 v3, v3, -0x1

    :goto_2b
    iput v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    .line 711
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    iget v4, p0, Lcom/pantech/app/music/service/MusicQueue;->mRandPos:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 716
    .local v1, "newPos":I
    :goto_3b
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 733
    .end local v1    # "newPos":I
    :goto_3e
    return-void

    .line 710
    :cond_3f
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 714
    :cond_48
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_53

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "newPos":I
    :goto_52
    goto :goto_3b

    .end local v1    # "newPos":I
    :cond_53
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_52

    .line 719
    :cond_5c
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-ne v3, v5, :cond_87

    .line 721
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 722
    .local v0, "histsize":I
    if-nez v0, :cond_75

    .line 723
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    const v4, 0x7f0801a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicQueue;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 726
    :cond_75
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 727
    .local v2, "pos":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    goto :goto_3e

    .line 729
    .end local v0    # "histsize":I
    .end local v2    # "pos":Ljava/lang/Integer;
    :cond_87
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_95

    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    add-int/lit8 v1, v3, -0x1

    .line 730
    .restart local v1    # "newPos":I
    :goto_91
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    goto :goto_3e

    .line 729
    .end local v1    # "newPos":I
    :cond_95
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_91
.end method

.method public refreshQueue()V
    .registers 6

    .prologue
    .line 687
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 688
    :try_start_3
    const-string v2, "MusicQueue"

    const-string v4, "refreshQueue()"

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 691
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    if-eqz v2, :cond_27

    .line 692
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 693
    .local v1, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 694
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 698
    .end local v0    # "i":I
    .end local v1    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_27
    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 699
    monitor-exit v3

    .line 700
    return-void

    .line 699
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public reloadMode()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    const-string v2, "MusicQueue"

    const-string v3, "reloadMode()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, "repmode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    if-eq v0, v5, :cond_17

    .line 427
    const/4 v0, 0x0

    .line 429
    :cond_17
    iput v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    .line 431
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 432
    .local v1, "shufmode":I
    if-eq v1, v5, :cond_24

    .line 433
    const/4 v1, 0x0

    .line 435
    :cond_24
    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    .line 437
    const-string v2, "MusicQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->repeat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shuffle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public reloadQueue()V
    .registers 15

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    .line 496
    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v9

    .line 497
    :try_start_5
    const-string v10, "MusicQueue"

    const-string v11, "reloadQueue()-start"

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v5, 0x0

    .line 500
    .local v5, "q":Ljava/lang/String;
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 502
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    if-eqz v10, :cond_2a

    .line 503
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-virtual {v10}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    .line 504
    .local v2, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v10, v2

    if-ge v1, v10, :cond_2a

    .line 505
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 508
    .end local v1    # "i":I
    .end local v2    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_2a
    const/4 v6, 0x0

    .line 509
    .local v6, "qlen":I
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-lez v10, :cond_73

    .line 510
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "curpos"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 511
    .local v4, "pos":I
    if-ltz v4, :cond_46

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-lt v4, v10, :cond_af

    .line 513
    :cond_46
    const-string v8, "MusicQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "->queue length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 556
    .end local v4    # "pos":I
    :cond_73
    :goto_73
    monitor-exit v9
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_106

    .line 557
    const-string v8, "MusicQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "->history length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-ne v8, v13, :cond_a7

    .line 559
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-eq v8, v9, :cond_a7

    .line 560
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 563
    :cond_a7
    const-string v8, "MusicQueue"

    const-string v9, "reloadQueue()-stop"

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void

    .line 516
    .restart local v4    # "pos":I
    :cond_af
    :try_start_af
    const-string v10, "MusicQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "->queue length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(IZ)V

    .line 520
    const/4 v3, 0x0

    .line 521
    .local v3, "n":I
    const/4 v7, 0x0

    .line 523
    .local v7, "shift":I
    iget-object v10, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "history"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 524
    if-eqz v5, :cond_109

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 525
    :goto_e3
    if-le v6, v13, :cond_73

    .line 526
    const/4 v3, 0x0

    .line 527
    const/4 v7, 0x0

    .line 528
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 529
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_ed
    if-ge v1, v6, :cond_73

    .line 530
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 531
    .local v0, "c":C
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_119

    .line 532
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_10b

    .line 534
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    goto/16 :goto_73

    .line 556
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "pos":I
    .end local v5    # "q":Ljava/lang/String;
    .end local v6    # "qlen":I
    .end local v7    # "shift":I
    :catchall_106
    move-exception v8

    monitor-exit v9
    :try_end_108
    .catchall {:try_start_af .. :try_end_108} :catchall_106

    throw v8

    .restart local v3    # "n":I
    .restart local v4    # "pos":I
    .restart local v5    # "q":Ljava/lang/String;
    .restart local v6    # "qlen":I
    .restart local v7    # "shift":I
    :cond_109
    move v6, v8

    .line 524
    goto :goto_e3

    .line 537
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_10b
    :try_start_10b
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 538
    const/4 v3, 0x0

    .line 539
    const/4 v7, 0x0

    .line 529
    :goto_116
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    .line 541
    :cond_119
    const/16 v8, 0x30

    if-lt v0, v8, :cond_128

    const/16 v8, 0x39

    if-gt v0, v8, :cond_128

    .line 542
    add-int/lit8 v8, v0, -0x30

    shl-int/2addr v8, v7

    add-int/2addr v3, v8

    .line 550
    :goto_125
    add-int/lit8 v7, v7, 0x4

    goto :goto_116

    .line 543
    :cond_128
    const/16 v8, 0x61

    if-lt v0, v8, :cond_137

    const/16 v8, 0x66

    if-gt v0, v8, :cond_137

    .line 544
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    shl-int/2addr v8, v7

    add-int/2addr v3, v8

    goto :goto_125

    .line 547
    :cond_137
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V
    :try_end_13c
    .catchall {:try_start_10b .. :try_end_13c} :catchall_106

    goto/16 :goto_73
.end method

.method public removeTrack(J)I
    .registers 12
    .param p1, "audioid"    # J

    .prologue
    .line 198
    const/4 v6, 0x0

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 199
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v6, :cond_8e

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    .line 200
    .local v2, "playAudioID":J
    :goto_d
    const/4 v5, 0x0

    .line 201
    .local v5, "removePos":I
    const/4 v4, 0x0

    .line 204
    .local v4, "removeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_67

    .line 205
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-nez v6, :cond_92

    .line 206
    const-string v7, "MusicQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->remove: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move v5, v1

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 211
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 212
    const/4 v6, 0x2

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 218
    :cond_67
    const/4 v0, 0x0

    .line 219
    .local v0, "bExist":Z
    const/4 v1, 0x0

    :goto_69
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_85

    .line 220
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_96

    .line 221
    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 227
    :cond_85
    if-nez v0, :cond_8d

    .line 228
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 229
    const/4 v6, 0x1

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 231
    :cond_8d
    return v4

    .line 199
    .end local v0    # "bExist":Z
    .end local v1    # "i":I
    .end local v2    # "playAudioID":J
    .end local v4    # "removeCount":I
    .end local v5    # "removePos":I
    :cond_8e
    const-wide/16 v2, -0x1

    goto/16 :goto_d

    .line 204
    .restart local v1    # "i":I
    .restart local v2    # "playAudioID":J
    .restart local v4    # "removeCount":I
    .restart local v5    # "removePos":I
    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 219
    .restart local v0    # "bExist":Z
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_69
.end method

.method public removeTrack([J)I
    .registers 14
    .param p1, "list"    # [J

    .prologue
    .line 235
    const/4 v7, 0x0

    iput v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 236
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v7, :cond_73

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    .line 237
    .local v4, "playAudioID":J
    :goto_d
    iget v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 240
    .local v3, "newPos":I
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 241
    .local v6, "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_79

    .line 242
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1e
    array-length v7, p1

    if-ge v2, v7, :cond_70

    .line 243
    aget-wide v8, p1, v2

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_76

    .line 244
    const-string v8, "MusicQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "->remove: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    if-ge v1, v7, :cond_70

    .line 248
    add-int/lit8 v3, v3, -0x1

    .line 241
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 236
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "newPos":I
    .end local v4    # "playAudioID":J
    .end local v6    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :cond_73
    const-wide/16 v4, -0x1

    goto :goto_d

    .line 242
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    .restart local v3    # "newPos":I
    .restart local v4    # "playAudioID":J
    .restart local v6    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 254
    .end local v2    # "k":I
    :cond_79
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8d

    .line 255
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 256
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 257
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 258
    const/4 v7, 0x2

    iput v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 262
    :cond_8d
    const/4 v0, 0x0

    .line 263
    .local v0, "bExist":Z
    const/4 v1, 0x0

    :goto_8f
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_ab

    .line 264
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-nez v7, :cond_bd

    .line 265
    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 271
    :cond_ab
    if-nez v0, :cond_b6

    .line 272
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 273
    iget v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 275
    :cond_b6
    iget-object v7, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    return v7

    .line 263
    :cond_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f
.end method

.method public removeTracks(II)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 163
    const/4 v6, 0x0

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 164
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v6, :cond_50

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    .line 165
    .local v2, "playAudioID":J
    :goto_d
    move v5, p1

    .line 167
    .local v5, "removePos":I
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 169
    .local v4, "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    move v1, p1

    .local v1, "i":I
    :goto_14
    if-ge v1, p2, :cond_53

    .line 170
    const-string v7, "MusicQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->remove: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 164
    .end local v1    # "i":I
    .end local v2    # "playAudioID":J
    .end local v4    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v5    # "removePos":I
    :cond_50
    const-wide/16 v2, -0x1

    goto :goto_d

    .line 173
    .restart local v1    # "i":I
    .restart local v2    # "playAudioID":J
    .restart local v4    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v5    # "removePos":I
    :cond_53
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_67

    .line 174
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 175
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 176
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 177
    const/4 v6, 0x2

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 181
    :cond_67
    const/4 v0, 0x0

    .line 182
    .local v0, "bExist":Z
    const/4 v1, 0x0

    :goto_69
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_85

    .line 183
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_95

    .line 184
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 190
    :cond_85
    if-nez v0, :cond_90

    .line 191
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 192
    iget v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    and-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 194
    :cond_90
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    return v6

    .line 182
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_69
.end method

.method public resetQueue()V
    .registers 3

    .prologue
    .line 288
    const-string v0, "MusicQueue"

    const-string v1, "resetQueue()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 291
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 292
    return-void
.end method

.method public returnVal()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    return v0
.end method

.method public saveSeekPos(J)V
    .registers 8
    .param p1, "seekpos"    # J

    .prologue
    .line 441
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_11

    .line 443
    const-string v1, "seekpos"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 445
    :cond_11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 446
    return-void
.end method

.method public setPosition(I)V
    .registers 7
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 377
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") on list with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    if-ltz p1, :cond_51

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_51

    .line 379
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo;

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 380
    iput p1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 394
    :goto_40
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_a8

    .line 395
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V

    .line 401
    :goto_4d
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->savePosition()V

    .line 402
    return-void

    .line 382
    :cond_51
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 383
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo;

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 384
    iput v4, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 385
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->pos:0, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 387
    :cond_84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 388
    iput v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 389
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->pos:-1, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 397
    :cond_a8
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    new-instance v1, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v1}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/pantech/app/music/db/MusicQueueDBManager;->setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_4d
.end method

.method public setPosition(IZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 405
    if-eqz p2, :cond_25

    .line 406
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 409
    if-ltz p1, :cond_18

    .line 410
    move v0, p1

    .line 414
    .local v0, "newPos":I
    :goto_a
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 415
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    .line 420
    .end local v0    # "newPos":I
    :goto_17
    return-void

    .line 412
    :cond_18
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRand:Lcom/pantech/app/music/service/MusicQueue$Shuffler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->nextInt(I)I

    move-result v0

    .restart local v0    # "newPos":I
    goto :goto_a

    .line 418
    .end local v0    # "newPos":I
    :cond_25
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    goto :goto_17
.end method

.method public setQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 6
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 83
    if-nez p1, :cond_8

    .line 96
    :goto_7
    return-void

    .line 86
    :cond_8
    const-string v1, "MusicQueue"

    const-string v2, "setQueue(list)"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 89
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 92
    :cond_1d
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(IZ)V

    goto :goto_7
.end method

.method public setRating(J)Z
    .registers 10
    .param p1, "rating"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 855
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_8

    .line 856
    const/4 v0, 0x0

    .line 871
    :goto_7
    return v0

    .line 858
    :cond_8
    cmp-long v0, p1, v4

    if-nez v0, :cond_54

    .line 859
    .local v4, "updateTime":J
    :goto_c
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRating("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v4, v5}, Lcom/pantech/app/music/list/MusicItemInfo;->setRate(J)V

    .line 864
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v1, v1, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    iget v3, v3, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->updateRating(Landroid/content/Context;JIJ)I

    .line 867
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    if-eqz v0, :cond_52

    .line 868
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v2, v1, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/app/music/db/MusicQueueDBManager;->updateRate(JJ)V

    .line 869
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V

    .line 871
    :cond_52
    const/4 v0, 0x1

    goto :goto_7

    .line 858
    .end local v4    # "updateTime":J
    :cond_54
    invoke-static {}, Lcom/pantech/app/music/list/utility/ListUtil;->getCurrentTimeSec()J

    move-result-wide v4

    goto :goto_c
.end method

.method public setRepeatMode(I)Z
    .registers 5
    .param p1, "repeatmode"    # I

    .prologue
    .line 897
    iget v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    if-ne v0, p1, :cond_6

    .line 898
    const/4 v0, 0x0

    .line 904
    :goto_5
    return v0

    .line 900
    :cond_6
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iput p1, p0, Lcom/pantech/app/music/service/MusicQueue;->mRepeatMode:I

    .line 903
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveMode()V

    .line 904
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setShuffleMode(I)Z
    .registers 6
    .param p1, "shufflemode"    # I

    .prologue
    const/4 v0, 0x1

    .line 875
    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-ne v1, p1, :cond_7

    .line 876
    const/4 v0, 0x0

    .line 893
    :goto_6
    return v0

    .line 878
    :cond_7
    const-string v1, "MusicQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iput p1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    .line 882
    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-nez v1, :cond_35

    .line 883
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    .line 885
    :cond_35
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicQueue;->FEATURE_FIX_SHUFFLE_LIST:Z

    if-eqz v1, :cond_4a

    .line 886
    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mShuffleMode:I

    if-ne v1, v0, :cond_40

    .line 887
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 889
    :cond_40
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mLastPos:I

    .line 892
    :cond_4a
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveMode()V

    goto :goto_6
.end method

.method public updatePosition(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 371
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 372
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 373
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->composeShuffleList()V

    .line 374
    return-void

    .line 372
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public updateTrack(ILcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 10
    .param p1, "pos"    # I
    .param p2, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 135
    const-string v0, "MusicQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTrack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    if-eqz v0, :cond_3c

    .line 142
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/music/db/MusicQueueDBManager;->updateSongInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3c
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v0

    if-ne v0, p1, :cond_4d

    .line 148
    if-eqz p2, :cond_51

    .line 150
    iput-object p2, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    iget v1, p0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    invoke-virtual {v0, v1, p2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V

    .line 159
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 160
    return-void

    .line 155
    :cond_51
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicQueue;->mQueueDBManager:Lcom/pantech/app/music/db/MusicQueueDBManager;

    const/4 v1, -0x1

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v2}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_4d
.end method

.method public verifyQueue()V
    .registers 22

    .prologue
    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 653
    :goto_a
    return-void

    .line 570
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 571
    :try_start_12
    const-string v2, "MusicQueue"

    const-string v3, "verifyQueue()-start"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 575
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayPos:I

    .line 576
    .local v15, "newPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v2, :cond_84

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v16

    .line 580
    .local v16, "playAudioID":J
    :goto_30
    new-instance v19, Ljava/util/Hashtable;

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_b4

    .line 582
    .local v19, "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :try_start_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {v3}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {v4}, Lcom/pantech/app/music/utils/ContentUtils;->getColumns(Lcom/pantech/app/music/list/MusicItemInfo;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 583
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_63
    if-eqz v9, :cond_87

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_87

    .line 584
    invoke-interface {v9, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 585
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    add-int/lit8 v13, v13, 0x1

    goto :goto_63

    .line 576
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v16    # "playAudioID":J
    .end local v19    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_84
    const-wide/16 v16, -0x1

    goto :goto_30

    .line 587
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v16    # "playAudioID":J
    .restart local v19    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_87
    if-eqz v9, :cond_8c

    .line 588
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_8c} :catch_af
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_8c} :catch_b7
    .catchall {:try_start_35 .. :try_end_8c} :catchall_b4

    .line 597
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    :cond_8c
    :goto_8c
    :try_start_8c
    new-instance v18, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 598
    .local v18, "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_e7

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 600
    .local v14, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {v14}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 598
    :cond_ac
    :goto_ac
    add-int/lit8 v13, v13, 0x1

    goto :goto_92

    .line 589
    .end local v13    # "i":I
    .end local v14    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v18    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :catch_af
    move-exception v10

    .line 590
    .local v10, "e":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_8c

    .line 652
    .end local v10    # "e":Ljava/lang/SecurityException;
    .end local v15    # "newPos":I
    .end local v16    # "playAudioID":J
    .end local v19    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_b4
    move-exception v2

    monitor-exit v20
    :try_end_b6
    .catchall {:try_start_8c .. :try_end_b6} :catchall_b4

    throw v2

    .line 591
    .restart local v15    # "newPos":I
    .restart local v16    # "playAudioID":J
    .restart local v19    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b7
    move-exception v11

    .line 592
    .local v11, "err":Ljava/lang/NullPointerException;
    :try_start_b8
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_8c

    .line 604
    .end local v11    # "err":Ljava/lang/NullPointerException;
    .restart local v13    # "i":I
    .restart local v14    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v18    # "removeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :cond_bc
    invoke-virtual {v14}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d2

    .line 606
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 610
    :cond_d2
    new-instance v12, Ljava/io/File;

    invoke-virtual {v14}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 613
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 621
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_e7
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_120

    .line 622
    const-string v2, "MusicQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items are removed!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/service/MusicQueue;->saveQueue()V

    .line 625
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 629
    :cond_120
    const/4 v8, 0x0

    .line 630
    .local v8, "bExist":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17c

    .line 631
    const/4 v8, 0x0

    .line 632
    const/4 v13, 0x0

    :goto_129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_157

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mPlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-nez v2, :cond_179

    .line 634
    const/4 v8, 0x1

    .line 635
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 636
    if-eq v15, v13, :cond_157

    .line 637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 646
    :cond_157
    :goto_157
    if-nez v8, :cond_16f

    .line 647
    const-string v2, "MusicQueue"

    const-string v3, "->current play item does not exist, caused it\'s been removed!!"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V

    .line 649
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/service/MusicQueue;->mReturnVal:I

    .line 651
    :cond_16f
    const-string v2, "MusicQueue"

    const-string v3, "verifyQueue()-stop"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    monitor-exit v20
    :try_end_177
    .catchall {:try_start_b8 .. :try_end_177} :catchall_b4

    goto/16 :goto_a

    .line 632
    :cond_179
    add-int/lit8 v13, v13, 0x1

    goto :goto_129

    .line 643
    :cond_17c
    const/4 v8, 0x1

    goto :goto_157
.end method
