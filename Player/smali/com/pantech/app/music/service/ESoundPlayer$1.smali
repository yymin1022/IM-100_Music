.class Lcom/pantech/app/music/service/ESoundPlayer$1;
.super Ljava/lang/Object;
.source "ESoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/ESoundPlayer;->eSoundStart(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/ESoundPlayer;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/ESoundPlayer;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    iput-object p1, p0, Lcom/pantech/app/music/service/ESoundPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPlayer;

    iput-object p2, p0, Lcom/pantech/app/music/service/ESoundPlayer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0xf

    .line 28
    invoke-static {}, Lcom/pantech/app/music/service/ESoundPlayer;->access$000()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_13

    .line 29
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPlayer$1;->val$context:Landroid/content/Context;

    const/high16 v1, 0x7f070000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPlayer;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 31
    :cond_13
    invoke-static {}, Lcom/pantech/app/music/service/ESoundPlayer;->access$000()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 32
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPlayer$1;->this$0:Lcom/pantech/app/music/service/ESoundPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    return-void
.end method
