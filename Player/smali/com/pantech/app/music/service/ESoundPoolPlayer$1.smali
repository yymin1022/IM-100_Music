.class Lcom/pantech/app/music/service/ESoundPoolPlayer$1;
.super Ljava/lang/Object;
.source "ESoundPoolPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/ESoundPoolPlayer;->eSoundStart(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/ESoundPoolPlayer;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v7, 0xf

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "soundPool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoundID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPoolPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " soundPool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 40
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPoolPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 41
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPoolPlayer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 45
    :cond_76
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$200(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$200(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    return-void
.end method
