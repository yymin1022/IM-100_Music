.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 295
    .local v0, "action":I
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 296
    sparse-switch p2, :sswitch_data_ea

    :cond_15
    move v1, v4

    .line 366
    :cond_16
    :goto_16
    return v1

    .line 298
    :sswitch_17
    if-nez v0, :cond_16

    .line 299
    const-string v4, "OnePlayer"

    const-string v5, "WHEEL SPIN DOWN"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->onWheelKeySpinDown(ILandroid/view/KeyEvent;)Z

    goto :goto_16

    .line 305
    :sswitch_2a
    if-nez v0, :cond_16

    .line 306
    const-string v4, "OnePlayer"

    const-string v5, "WHEEL SPIN UP"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->onWheelKeySpinUp(ILandroid/view/KeyEvent;)Z

    goto :goto_16

    .line 312
    :sswitch_3d
    if-nez v0, :cond_16

    .line 313
    const-string v4, "OnePlayer"

    const-string v5, "BACK"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v4, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1602(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Z)Z

    .line 315
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    goto :goto_16

    .line 320
    :sswitch_51
    if-nez v0, :cond_9f

    .line 321
    const-string v5, "OnePlayer"

    const-string v6, "KEYCODE_WHEELKEY ACTION_DOWN"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ne v5, v1, :cond_69

    .line 328
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1702(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Z)Z

    .line 330
    :cond_69
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1700(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->onWheelKeyPressDown(Z)V

    .line 333
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 335
    .local v2, "pressTime":J
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1700(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-ltz v5, :cond_16

    .line 338
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    .line 339
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1702(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Z)Z

    goto/16 :goto_16

    .line 341
    .end local v2    # "pressTime":J
    :cond_9f
    if-ne v0, v1, :cond_16

    .line 342
    const-string v5, "OnePlayer"

    const-string v6, "KEYCODE_WHEELKEY ACTION_UP"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setUpdatePlayPosition(ZI)V

    .line 354
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->onWheelKeyPressUp(Z)V

    goto/16 :goto_16

    .line 358
    :cond_c2
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1200(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 360
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 361
    const/16 v5, 0x18

    if-eq p2, v5, :cond_16

    const/16 v5, 0x19

    if-ne p2, v5, :cond_15

    goto/16 :goto_16

    .line 296
    nop

    :sswitch_data_ea
    .sparse-switch
        0x4 -> :sswitch_3d
        0x18 -> :sswitch_2a
        0x19 -> :sswitch_17
        0x11b -> :sswitch_51
    .end sparse-switch
.end method
