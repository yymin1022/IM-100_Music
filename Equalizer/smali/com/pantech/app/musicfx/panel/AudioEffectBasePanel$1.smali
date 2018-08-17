.class Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;
.super Ljava/lang/Object;
.source "AudioEffectBasePanel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 36
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-static {p2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_13

    .line 43
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onEffectServiceConnected()V

    .line 44
    :cond_13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onEffectServiceDisConnected()V

    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    .line 51
    return-void
.end method
