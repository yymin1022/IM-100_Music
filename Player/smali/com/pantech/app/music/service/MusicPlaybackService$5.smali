.class Lcom/pantech/app/music/service/MusicPlaybackService$5;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 547
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->postCheckPlayStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 551
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 553
    :cond_e
    return-void
.end method
