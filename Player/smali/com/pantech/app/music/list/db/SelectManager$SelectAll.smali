.class public Lcom/pantech/app/music/list/db/SelectManager$SelectAll;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectAll"
.end annotation


# static fields
.field static final EVENT_CALLBACK:I = 0x2711


# instance fields
.field mCallback:Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCursorLock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cursorLock"    # Ljava/lang/Object;
    .param p5, "listener"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mContext:Landroid/content/Context;

    .line 340
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 342
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mCursor:Landroid/database/Cursor;

    .line 344
    iput-object p4, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mCursorLock:Ljava/lang/Object;

    .line 346
    iput-object p5, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mCallback:Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .line 348
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 350
    new-instance v0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectAll$1;-><init>(Lcom/pantech/app/music/list/db/SelectManager$SelectAll;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mHandler:Landroid/os/Handler;

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v7, 0x2711

    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mCursorLock:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 374
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 376
    if-eqz v2, :cond_25

    .line 377
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_25
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 385
    return-void
.end method
