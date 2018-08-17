.class final Lcom/pantech/app/music/drm/MusicDrm$ListenersHandler;
.super Landroid/os/Handler;
.source "MusicDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/drm/MusicDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenersHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 431
    :goto_6
    return-void

    .line 419
    :pswitch_7
    const-string v0, "MusicDrm"

    const-string v1, "handleMessage:UPDATED"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    invoke-interface {v0}, Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;->onUpdated()V

    goto :goto_6

    .line 424
    :pswitch_16
    const-string v0, "MusicDrm"

    const-string v2, "handleMessage:FAILED"

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_2b

    :goto_27
    invoke-interface {v0, v2, v1}, Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;->onFailed(IZ)V

    goto :goto_6

    :cond_2b
    const/4 v1, 0x0

    goto :goto_27

    .line 416
    nop

    :pswitch_data_2e
    .packed-switch 0x44
        :pswitch_7
        :pswitch_16
    .end packed-switch
.end method
