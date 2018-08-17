.class Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicListCallbackRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 105
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    :goto_a
    return-void

    .line 51
    .restart local v0    # "action":Ljava/lang/String;
    :cond_b
    const-string v2, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "com.pantech.app.music.safebox.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "com.pantech.app.music.safebox.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "com.pantech.app.music.playbackallremoved"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 57
    :cond_33
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IPlayStatusCallback;

    invoke-interface {v2, p2}, Lcom/pantech/app/music/list/listener/IPlayStatusCallback;->onPlayingStatusChanged(Landroid/content/Intent;)V

    goto :goto_a

    .line 64
    :cond_3f
    const-string v2, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 66
    const-string v2, "ListSize"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, "queueSize":I
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IPlayStatusCallback;

    invoke-interface {v2, v1}, Lcom/pantech/app/music/list/listener/IPlayStatusCallback;->onPlayingQueueChanged(I)V

    goto :goto_a

    .line 70
    .end local v1    # "queueSize":I
    :cond_5a
    const-string v2, "android.mtp.action.MTP_DELETE_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "android.mtp.action.MTP_INSERT_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "android.mtp.action.MTP_UPDATE_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 74
    :cond_72
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IMTPCallback;

    invoke-interface {v2}, Lcom/pantech/app/music/list/listener/IMTPCallback;->onMTPFileModified()V

    goto :goto_a

    .line 76
    :cond_7e
    const-string v2, "com.pantech.app.music.action.MTP_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 78
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IMTPCallback;

    invoke-interface {v2}, Lcom/pantech/app/music/list/listener/IMTPCallback;->onMTPConnected()V

    goto/16 :goto_a

    .line 80
    :cond_93
    const-string v2, "com.pantech.app.music.action.MTP_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 82
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IMTPCallback;

    invoke-interface {v2}, Lcom/pantech/app/music/list/listener/IMTPCallback;->onMTPDisConnected()V

    goto/16 :goto_a

    .line 84
    :cond_a8
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 86
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onUserPresent()V

    goto/16 :goto_a

    .line 88
    :cond_bd
    const-string v2, "com.pantech.app.music.action.CLEAR_SELECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 90
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onClearSelection()V

    goto/16 :goto_a

    .line 92
    :cond_d2
    const-string v2, "com.pantech.app.music.action.FINISH_LIST_ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 94
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;

    const/16 v3, 0x80

    invoke-interface {v2, v3, p2}, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;->onForceFinish(ILandroid/content/Intent;)V

    goto/16 :goto_a

    .line 96
    :cond_e9
    const-string v2, "com.pantech.app.music.action.FINISH_LIST_SEARCH_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 98
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;

    const/16 v3, 0x100

    invoke-interface {v2, v3, p2}, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;->onForceFinish(ILandroid/content/Intent;)V

    goto/16 :goto_a

    .line 100
    :cond_100
    const-string v2, "com.pantech.app.music.action.MEDIASCAN_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string v2, "com.pantech.app.music.action.MEDIASCAN_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 102
    :cond_110
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/listener/IMediaScannerCallback;

    const-string v3, "com.pantech.app.music.action.MEDIASCAN_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3, p2}, Lcom/pantech/app/music/list/listener/IMediaScannerCallback;->onMediaScanner(ZLandroid/content/Intent;)V

    goto/16 :goto_a
.end method
