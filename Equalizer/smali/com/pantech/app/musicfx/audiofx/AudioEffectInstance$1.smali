.class Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;
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
    .line 672
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 675
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() Delay 300 : new BassBoost(), BassBoost.setStrength"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    new-instance v1, Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iget v3, v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-direct {v1, v2, v3}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v1, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 677
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 678
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->access$000(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)S

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 679
    return-void
.end method
