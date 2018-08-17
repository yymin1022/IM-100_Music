.class Lcom/pantech/app/music/service/MultiPlayer$2;
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
    .line 267
    iput-object p1, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x11

    .line 271
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoListener()  what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    packed-switch p2, :pswitch_data_66

    .line 292
    :goto_2b
    const/4 v0, 0x0

    return v0

    .line 278
    :pswitch_2d
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2b

    .line 283
    :pswitch_40
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2b

    .line 288
    :pswitch_53
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$2;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/MultiPlayer;->access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2b

    .line 276
    :pswitch_data_66
    .packed-switch 0x2bd
        :pswitch_2d
        :pswitch_40
        :pswitch_53
    .end packed-switch
.end method
