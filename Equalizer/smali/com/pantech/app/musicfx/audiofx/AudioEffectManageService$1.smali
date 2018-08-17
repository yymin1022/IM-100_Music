.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;
.super Landroid/os/Handler;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 2

    .prologue
    .line 744
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "onoff":Z
    const-string v1, "presetNum = "

    .line 749
    .local v1, "preset":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_34

    .line 750
    const/4 v0, 0x1

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    :goto_27
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 759
    return-void

    .line 754
    :cond_34
    const/4 v0, 0x0

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no effect, onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method
