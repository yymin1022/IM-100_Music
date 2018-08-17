.class Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;
.super Landroid/os/Handler;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field public static final MAIN_EVENT_BASE:I = 0x0

.field public static final MAIN_EVENT_MAX:I = 0x3

.field public static final MAIN_EVENT_OPTIONSMENU_INVALIDATE:I = 0x1

.field public static final MAIN_EVENT_QUIT_SYNC:I


# instance fields
.field private final event_string_table:[Ljava/lang/String;

.field mMediaScanCount:Z

.field private mWorkerProcessingLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 737
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 739
    iput-boolean v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->mMediaScanCount:Z

    .line 741
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    .line 750
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MAIN_EVENT_QUIT_SYNC"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "MAIN_EVENT_OPTIONSMENU_INVALIDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MAIN_EVENT_SECRETBOX_MEDIASCANNING"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->event_string_table:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearMessage()V
    .registers 4

    .prologue
    .line 757
    const-string v0, "MainHandler clearMessage()"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->sendEmptyMessage(I)Z

    .line 766
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 767
    monitor-exit v1

    .line 768
    return-void

    .line 767
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainHandler handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arg1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arg2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 777
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_78

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainHandler handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->event_string_table:[Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") arg1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arg2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 780
    :cond_78
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    if-nez v0, :cond_7f

    .line 800
    :goto_7e
    return-void

    .line 783
    :cond_7f
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    goto :goto_7e

    .line 787
    :pswitch_85
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    :try_start_88
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 790
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_94

    .line 793
    const-string v0, "receive MAIN_EVENT_QUIT_SYNC"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto :goto_7e

    .line 790
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    .line 797
    :pswitch_97
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->invalidateOptionsMenu()V

    goto :goto_7e

    .line 783
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_85
        :pswitch_97
    .end packed-switch
.end method
