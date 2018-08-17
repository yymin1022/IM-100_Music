.class Lcom/pantech/app/music/assist/MusicMotionIRControl$1;
.super Landroid/os/Handler;
.source "MusicMotionIRControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicMotionIRControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$1;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 220
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    return-void

    .line 213
    :pswitch_9
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$1;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$200(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V

    goto :goto_5

    .line 217
    :pswitch_f
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl$1;->this$0:Lcom/pantech/app/music/assist/MusicMotionIRControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->access$300(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V

    goto :goto_5

    .line 210
    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
