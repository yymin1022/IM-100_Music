.class Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;
.super Ljava/lang/Object;
.source "AudioEffectInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->controlEffect(III[IZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

.field final synthetic val$bandLevels:[I

.field final synthetic val$type:I

.field final synthetic val$value:I

.field final synthetic val$virtualizerType:I


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;II[II)V
    .registers 6

    .prologue
    .line 988
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iput p2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$type:I

    iput p3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$value:I

    iput-object p4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$bandLevels:[I

    iput p5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$virtualizerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 991
    const-string v0, "VMusicFX_Ins"

    const-string v1, "controlEffect() Delay 200 : setAudioEffect"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    iget v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$type:I

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$value:I

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$bandLevels:[I

    iget v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;->val$virtualizerType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->access$100(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;II[II)V

    .line 993
    return-void
.end method
