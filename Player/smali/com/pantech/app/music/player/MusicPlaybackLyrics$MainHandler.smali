.class Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;
.super Landroid/os/Handler;
.source "MusicPlaybackLyrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackLyrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_PARSING_DONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "lyrics":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5e

    .line 314
    :cond_6
    :goto_6
    return-void

    .line 295
    :pswitch_7
    const-string v3, "MusicPlaybackLyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UNSYNC_DONE path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "hasLyrics":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "lyrics":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 299
    .restart local v1    # "lyrics":Ljava/lang/String;
    if-eqz v1, :cond_50

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 300
    const/4 v0, 0x1

    .line 301
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-static {v2, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->access$000(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Ljava/lang/String;)V

    .line 308
    :goto_38
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->access$100(Lcom/pantech/app/music/player/MusicPlaybackLyrics;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 309
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->access$200(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Z)V

    .line 310
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->access$300(Lcom/pantech/app/music/player/MusicPlaybackLyrics;)Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;->onParsingDone(Z)V

    goto :goto_6

    .line 304
    :cond_50
    const/4 v0, 0x0

    .line 305
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->this$0:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-static {v2, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->access$000(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Ljava/lang/String;)V

    .line 306
    const-string v2, "MusicPlaybackLyrics"

    const-string v3, "Error: File does not have Lyrics"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 292
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->removeMessages(I)V

    .line 318
    return-void
.end method

.method public sendMessageParsingDong(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->removeMessages(I)V

    .line 322
    invoke-virtual {p0, v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method
