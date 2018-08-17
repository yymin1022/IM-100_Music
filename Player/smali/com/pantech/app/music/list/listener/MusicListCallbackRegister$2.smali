.class Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;
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
    .line 108
    iput-object p1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 129
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    :goto_a
    return-void

    .line 119
    .restart local v0    # "action":Ljava/lang/String;
    :cond_b
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 121
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;

    const/16 v2, 0x40

    invoke-interface {v1, v2, p2}, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;->onForceFinish(ILandroid/content/Intent;)V

    .line 124
    :cond_20
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 126
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;

    const/16 v2, 0x2000

    invoke-interface {v1, v2, p2}, Lcom/pantech/app/music/list/listener/IForceFinishListCallback;->onForceFinish(ILandroid/content/Intent;)V

    goto :goto_a
.end method
