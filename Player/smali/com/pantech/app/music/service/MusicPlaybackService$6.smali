.class Lcom/pantech/app/music/service/MusicPlaybackService$6;
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
    .line 594
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 597
    const-string v0, "MusicPlaybackService"

    const-string v1, "mGotoIdleState"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pause()V

    .line 599
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$500(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->access$600(Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;)V

    .line 600
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v1, "com.pantech.app.music.removeextraplayer"

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 601
    return-void
.end method
