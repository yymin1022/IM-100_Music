.class Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectBasePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v1, "com.pantech.app.music.action.FINISH_LIST_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 62
    const-string v1, "ACTION_FINISH_LIST"

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->finish()V

    .line 65
    :cond_18
    return-void
.end method
