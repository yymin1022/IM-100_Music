.class Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;
.super Landroid/os/Handler;
.source "SelectableListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/SelectableListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectableHandler"
.end annotation


# static fields
.field public static final EVENT_BASE:I = 0x0

.field public static final EVENT_START_ACTIONMODE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/SelectableListActivity;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectableHandler handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_66

    .line 161
    :cond_38
    :goto_38
    return-void

    .line 148
    :pswitch_39
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_58

    .line 150
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-static {v1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->access$000(Lcom/pantech/app/music/list/activity/SelectableListActivity;)Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "pending":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-static {v1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->access$000(Lcom/pantech/app/music/list/activity/SelectableListActivity;)Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_38

    .line 156
    .end local v0    # "pending":Landroid/os/Message;
    :cond_58
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_38

    .line 157
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->this$0:Lcom/pantech/app/music/list/activity/SelectableListActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->startActionMode()V

    goto :goto_38

    .line 142
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch
.end method
