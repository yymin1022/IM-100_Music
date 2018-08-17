.class Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;
.super Ljava/util/TimerTask;
.source "MusicMotionIRControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicMotionIRControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoverTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 289
    const-string v0, "MusicMotionIRControl"

    const-string v1, "Ignore TimerTask - run() => ignore timertask done"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$400(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 292
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$402(Lcom/pantech/app/music/assist/MusicMotionIRControl;Z)Z

    .line 294
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$502(Lcom/pantech/app/music/assist/MusicMotionIRControl;Ljava/util/Timer;)Ljava/util/Timer;

    .line 295
    return-void
.end method
