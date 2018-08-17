.class Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;
.super Landroid/database/ContentObserver;
.source "MusicMotionIRControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicMotionIRControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionRecogObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .line 189
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 190
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 195
    const-string v0, "MusicMotionIRControl"

    const-string v1, "MotionRecogObserver:onChange()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$000(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_19

    .line 204
    :goto_18
    return-void

    .line 200
    :cond_19
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$100(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->setEnable(Z)V

    goto :goto_18

    .line 203
    :cond_28
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->setEnable(Z)V

    goto :goto_18
.end method
