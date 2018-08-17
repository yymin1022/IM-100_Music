.class Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;
.super Ljava/lang/Object;
.source "AudioEffectInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->restoreEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)V
    .registers 2

    .prologue
    .line 688
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 691
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() Delay 500 : BassBoost.setStrength"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->access$000(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)S

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 693
    return-void
.end method
