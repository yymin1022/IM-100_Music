.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;
.super Ljava/lang/Object;
.source "AudioEffectManageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 126
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetConnectionReceiver state EJ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") BT("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    iget-object v1, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    iget-object v2, v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    or-int v0, v1, v2

    .line 130
    .local v0, "isEarjackOn":Z
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;->this$1:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    invoke-static {v1, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->access$600(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;Z)V

    .line 131
    return-void
.end method
