.class Lcom/pantech/app/music/service/MusicPlaybackControl$3;
.super Landroid/os/Handler;
.source "MusicPlaybackControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 3

    .prologue
    .line 184
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v1, 0x3d4ccccd    # 0.05f

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_15a

    .line 277
    :goto_d
    :pswitch_d
    return-void

    .line 191
    :pswitch_e
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$100(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    goto :goto_d

    .line 195
    :pswitch_14
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$200(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    goto :goto_d

    .line 199
    :pswitch_1a
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$300(Lcom/pantech/app/music/service/MusicPlaybackControl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->seek(J)J

    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    goto :goto_d

    .line 203
    :cond_30
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$400(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 204
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$400(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 206
    :cond_45
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->next(Z)V

    goto :goto_d

    .line 211
    :pswitch_4b
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    .line 212
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6e

    .line 213
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 217
    :goto_62
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$500(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    goto :goto_d

    .line 215
    :cond_6e
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    goto :goto_62

    .line 220
    :pswitch_74
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    .line 221
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_95

    .line 222
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    :goto_88
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$500(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    goto/16 :goto_d

    .line 224
    :cond_95
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    goto :goto_88

    .line 232
    :pswitch_98
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_170

    .line 269
    :pswitch_9d
    const-string v0, "MusicPlaybackControl"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 234
    :pswitch_a6
    const-string v0, "MusicPlaybackControl"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 236
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$602(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z

    .line 238
    :cond_ba
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->pause()V

    goto/16 :goto_d

    .line 241
    :pswitch_c1
    const-string v0, "MusicPlaybackControl"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 246
    :pswitch_d8
    const-string v0, "MusicPlaybackControl"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 248
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$602(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z

    .line 250
    :cond_ed
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->pause()V

    goto/16 :goto_d

    .line 253
    :pswitch_f4
    const-string v0, "MusicPlaybackControl"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$700(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 255
    const-string v0, "MusicPlaybackControl"

    const-string v1, "=>safebox control is not in use"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 258
    :cond_10c
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_135

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$600(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 259
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$602(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z

    .line 260
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$500(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    .line 262
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    goto/16 :goto_d

    .line 264
    :cond_135
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 274
    :pswitch_145
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$3;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$800(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$900(Lcom/pantech/app/music/service/MusicPlaybackControl;Ljava/util/ArrayList;J)V

    goto/16 :goto_d

    .line 188
    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_d
        :pswitch_d
        :pswitch_98
        :pswitch_4b
        :pswitch_74
        :pswitch_e
        :pswitch_14
        :pswitch_145
    .end packed-switch

    .line 232
    :pswitch_data_170
    .packed-switch -0x3
        :pswitch_c1
        :pswitch_d8
        :pswitch_a6
        :pswitch_9d
        :pswitch_f4
    .end packed-switch
.end method
