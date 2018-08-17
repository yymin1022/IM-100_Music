.class Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler$1;
.super Landroid/os/Handler;
.source "QueryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler$1;->this$0:Lcom/pantech/app/music/list/module/QueryFactory$QueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;

    .line 219
    .local v0, "param":Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;
    invoke-static {}, Lcom/pantech/app/music/list/module/QueryFactory;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 235
    :goto_11
    return-void

    .line 221
    :cond_12
    const-wide/16 v2, 0x0

    .line 222
    .local v2, "time":J
    sget-object v1, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryTimeCheck:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 223
    sget-object v1, Lcom/pantech/app/music/list/module/QueryFactory;->mQueryTimeCheck:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 226
    :cond_3c
    const-string v1, "VMusicDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance-L] onQueryComplete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \uac78\ub9b0\uc2dc\uac04:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mQueryCompleteListener:Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    if-eqz v1, :cond_74

    .line 229
    iget-object v1, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mQueryCompleteListener:Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;

    iget-object v4, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;->onQueryComplete(Landroid/database/Cursor;)V

    .line 232
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Performance] after onQueryComplete "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \uac78\ub9b0\uc2dc\uac04:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/music/list/module/QueryFactory$QueryParam;->cursor:Landroid/database/Cursor;

    goto/16 :goto_11
.end method
