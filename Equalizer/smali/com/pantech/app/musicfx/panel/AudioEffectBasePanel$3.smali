.class Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$3;
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
    .line 70
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSDCardRemoveListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 75
    if-eqz v0, :cond_29

    .line 77
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 79
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->finish()V

    .line 82
    :cond_29
    return-void
.end method
