.class public Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;
.super Landroid/os/Handler;
.source "QueryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryHandler"
.end annotation


# static fields
.field static final EVENT_QUERY_CONTENTS:I = 0x1

.field static final EVENT_QUIT:I = 0x2


# instance fields
.field mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 203
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 207
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 209
    new-instance v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler$1;-><init>(Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 250
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_456

    .line 472
    :cond_c
    :goto_c
    return-void

    .line 253
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_c

    .line 257
    :pswitch_17
    invoke-static {}, Lcom/pantech/app/music/list/module/QueryFactory;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-nez v21, :cond_c

    .line 259
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;

    .line 261
    .local v13, "param":Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;
    const-string v22, "QueryFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Priority:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPriority:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " mIFragment:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " mActivity:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/Fragment;

    invoke-virtual/range {v21 .. v21}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " Page:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v7, 0x0

    .line 265
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v21

    if-eqz v21, :cond_173

    .line 267
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v17

    .line 269
    .local v17, "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    if-nez v17, :cond_ff

    .line 271
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_ff

    .line 273
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v16

    .line 274
    .local v16, "retrymsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 275
    const-wide/16 v22, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    const-string v21, "QueryFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " service is not ready, try after 50ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 285
    .end local v16    # "retrymsg":Landroid/os/Message;
    :cond_ff
    if-eqz v17, :cond_166

    :try_start_101
    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v21

    if-eqz v21, :cond_166

    .line 286
    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_13f

    .line 287
    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v18

    .line 288
    .local v18, "serviceList":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static/range {v18 .. v18}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursor([Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_119} :catch_161
    .catch Ljava/lang/NullPointerException; {:try_start_101 .. :try_end_119} :catch_16e

    move-result-object v7

    .line 459
    .end local v17    # "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    .end local v18    # "serviceList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_11a
    :goto_11a
    iput-object v7, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->cursor:Landroid/database/Cursor;

    .line 460
    iget v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPriority:I

    move/from16 v21, v0

    if-nez v21, :cond_439

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 463
    .local v12, "newMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 292
    .end local v12    # "newMsg":Landroid/os/Message;
    .restart local v17    # "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    :cond_13f
    :try_start_13f
    const-string v21, "QueryFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Queue Size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_160} :catch_161
    .catch Ljava/lang/NullPointerException; {:try_start_13f .. :try_end_160} :catch_16e

    goto :goto_11a

    .line 300
    :catch_161
    move-exception v9

    .line 301
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11a

    .line 297
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_166
    :try_start_166
    const-string v21, "QueryFactory"

    const-string v22, "there is no queue."

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_16d} :catch_161
    .catch Ljava/lang/NullPointerException; {:try_start_166 .. :try_end_16d} :catch_16e

    goto :goto_11a

    .line 303
    :catch_16e
    move-exception v9

    .line 305
    .local v9, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_11a

    .line 308
    .end local v9    # "e":Ljava/lang/NullPointerException;
    .end local v17    # "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    :cond_173
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v21

    if-eqz v21, :cond_1a9

    .line 311
    new-instance v19, Lcom/pantech/app/music/list/module/QuerySimilartySort;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    const v22, 0x3f4ccccd    # 0.8f

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/list/module/QuerySimilartySort;-><init>(Landroid/content/Context;FLandroid/database/Cursor;)V

    .line 315
    .local v19, "task":Lcom/pantech/app/music/list/module/QuerySimilartySort;
    :try_start_19d
    invoke-virtual/range {v19 .. v19}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->call()Landroid/database/Cursor;
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_1a3

    move-result-object v7

    goto/16 :goto_11a

    .line 317
    :catch_1a3
    move-exception v9

    .line 320
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11a

    .line 328
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort;
    :cond_1a9
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v21

    if-eqz v21, :cond_1e2

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mCondition:Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1e2

    .line 330
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->cursor:Landroid/database/Cursor;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 335
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v22

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mCondition:Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    move-object/from16 v23, v0

    iget v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mLimit:I

    move/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v20

    .line 339
    .local v20, "tmpCursor":Landroid/database/Cursor;
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v21

    if-eqz v21, :cond_250

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    new-instance v22, Ljava/lang/Object;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteEmptyGenres(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Object;)I

    move-result v6

    .line 346
    .local v6, "count":I
    if-lez v6, :cond_250

    .line 348
    if-eqz v20, :cond_230

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v22

    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mCondition:Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    move-object/from16 v23, v0

    iget v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mLimit:I

    move/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v20

    .line 355
    .end local v6    # "count":I
    :cond_250
    if-eqz v20, :cond_11a

    .line 357
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v8, "cursorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :try_start_257
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v21

    if-eqz v21, :cond_37e

    .line 377
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->isPickingEditMode()Z

    move-result v21

    if-nez v21, :cond_357

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v23, ""

    new-instance v24, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v24 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v15

    .line 380
    .local v15, "recentrlyAddedCount":I
    if-lez v15, :cond_2a8

    .line 382
    const/16 v21, -0x4

    const v22, 0x7f080071

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2a8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v21

    if-eqz v21, :cond_2e5

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v23, ""

    new-instance v24, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v24 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v11

    .line 390
    .local v11, "mostPlayedCount":I
    if-lez v11, :cond_2e5

    .line 392
    const/16 v21, -0x5

    const v22, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v11    # "mostPlayedCount":I
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v23, ""

    new-instance v24, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v24 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    .line 397
    .local v14, "podcastCount":I
    if-lez v14, :cond_31c

    .line 399
    const/16 v21, -0x3

    const v22, 0x7f080120

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_31c
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v21

    if-eqz v21, :cond_357

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    const/16 v22, 0x1

    new-instance v23, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v23 .. v23}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v23}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v6

    .line 407
    .restart local v6    # "count":I
    if-lez v6, :cond_357

    .line 409
    const/16 v21, -0x6

    const v22, 0x7f0801ae

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_357
    .catch Ljava/lang/IllegalStateException; {:try_start_257 .. :try_end_357} :catch_42f

    .line 445
    .end local v6    # "count":I
    .end local v14    # "podcastCount":I
    .end local v15    # "recentrlyAddedCount":I
    :cond_357
    :goto_357
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_435

    .line 447
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/database/Cursor;

    .line 449
    .local v5, "arrCursor":[Landroid/database/Cursor;
    new-instance v7, Landroid/database/MergeCursor;

    .end local v7    # "cursor":Landroid/database/Cursor;
    invoke-direct {v7, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 450
    .restart local v7    # "cursor":Landroid/database/Cursor;
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_11a

    .line 414
    .end local v5    # "arrCursor":[Landroid/database/Cursor;
    :cond_37e
    :try_start_37e
    iget-object v0, v13, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v21

    if-eqz v21, :cond_357

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    const/16 v22, 0x1

    new-instance v23, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v23 .. v23}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v23}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v4

    .line 418
    .local v4, "allMusicCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v23, ""

    new-instance v24, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v24 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v11

    .line 419
    .restart local v11    # "mostPlayedCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    sget-object v22, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v23, ""

    new-instance v24, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v24 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static/range {v21 .. v24}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v10

    .line 421
    .local v10, "favoriteCount":I
    if-lez v4, :cond_3f1

    .line 423
    const/16 v21, -0x64

    const v22, 0x7f080111

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_3f1
    if-lez v11, :cond_40f

    .line 428
    const/16 v21, -0x5

    const v22, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_40f
    if-lez v10, :cond_357

    .line 433
    const/16 v21, -0x6

    const v22, 0x7f0801ae

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42d
    .catch Ljava/lang/IllegalStateException; {:try_start_37e .. :try_end_42d} :catch_42f

    goto/16 :goto_357

    .line 437
    .end local v4    # "allMusicCount":I
    .end local v10    # "favoriteCount":I
    .end local v11    # "mostPlayedCount":I
    :catch_42f
    move-exception v9

    .line 442
    .local v9, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_357

    .line 454
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_435
    move-object/from16 v7, v20

    goto/16 :goto_11a

    .line 467
    .end local v8    # "cursorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .end local v20    # "tmpCursor":Landroid/database/Cursor;
    :cond_439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 468
    .restart local v12    # "newMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 250
    :pswitch_data_456
    .packed-switch 0x1
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method
