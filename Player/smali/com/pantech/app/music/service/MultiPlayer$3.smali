.class Lcom/pantech/app/music/service/MultiPlayer$3;
.super Ljava/lang/Object;
.source "MultiPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MultiPlayer;)V
    .registers 2

    .prologue
    .line 297
    iput-object p1, p0, Lcom/pantech/app/music/service/MultiPlayer$3;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 301
    packed-switch p2, :pswitch_data_a8

    .line 337
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 307
    :pswitch_5
    const/4 v0, 0x1

    .line 309
    .local v0, "isLowPower":Z
    if-nez p3, :cond_a5

    .line 311
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer$3;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/MultiPlayer;->access$200(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 313
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowPowerInfoListener() isLowPowerMode(previous): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->isLowPowerSystemMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/pantech/app/music/utils/SystemUtils;->isLowPowerSystemPropertyEnabled()Z

    move-result v1

    if-nez v1, :cond_92

    .line 316
    const/4 v0, 0x0

    .line 324
    :goto_33
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowPowerInfoListener() isLowPowerMode(new): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_4b
    :goto_4b
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowPowerInfoListener()=>session id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/service/MultiPlayer$3;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v3}, Lcom/pantech/app/music/service/MultiPlayer;->access$400(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLowPower: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer$3;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v1, v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$500(Lcom/pantech/app/music/service/MultiPlayer;Z)V

    goto/16 :goto_3

    .line 317
    :cond_92
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->access$300()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9b

    .line 318
    const/4 v0, 0x0

    goto :goto_33

    .line 319
    :cond_9b
    invoke-static {}, Lcom/pantech/app/music/utils/SystemUtils;->isMiracastPropertyEnabled()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 320
    const/4 v0, 0x0

    goto :goto_33

    .line 322
    :cond_a3
    const/4 v0, 0x1

    goto :goto_33

    .line 329
    :cond_a5
    const/4 v0, 0x0

    goto :goto_4b

    .line 301
    nop

    :pswitch_data_a8
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method
