.class Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;
.super Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;
.source "TABSelectPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectPickerTabHandler"
.end annotation


# static fields
.field public static final TAB_EVENT_BASE:I = 0x3

.field public static final TAB_EVENT_MAX:I = 0x4

.field public static final TAB_EVENT_PENDING_PAGESELECT:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;)V
    .registers 2

    .prologue
    .line 721
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 730
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->handleMessage(Landroid/os/Message;)V

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectPickerTabHandler handleMessage:"

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

    .line 734
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    if-nez v1, :cond_3a

    .line 751
    :cond_39
    :goto_39
    return-void

    .line 737
    :cond_3a
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7a

    goto :goto_39

    .line 742
    :pswitch_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectPickerTabHandler TAB_EVENT_PENDING_PAGESELECT pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 744
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->access$000(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 746
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 747
    .local v0, "retry":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_39

    .line 737
    nop

    :pswitch_data_7a
    .packed-switch 0x3
        :pswitch_40
    .end packed-switch
.end method
