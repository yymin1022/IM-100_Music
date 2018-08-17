.class Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;
.super Landroid/database/ContentObserver;
.source "absBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterCursorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    .line 195
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 197
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->isCurrentFragment()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 213
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    if-eqz v0, :cond_69

    .line 215
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-wide v4, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mLastUpdateTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingSec:J

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] onChange. pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-wide v2, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingSec:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-wide v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingSec:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6a

    .line 223
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_69
    :goto_69
    return-void

    .line 228
    :cond_6a
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->post(Ljava/lang/Runnable;)Z

    .line 230
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mLastUpdateTime:J

    goto :goto_69

    .line 236
    :cond_7e
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingRequery:Z

    goto :goto_69
.end method
