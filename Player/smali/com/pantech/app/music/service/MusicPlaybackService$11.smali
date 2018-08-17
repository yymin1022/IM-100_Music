.class Lcom/pantech/app/music/service/MusicPlaybackService$11;
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
    .line 696
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$11;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 699
    const-string v0, "MusicPlaybackService"

    const-string v1, "mOpenAsyncComplete"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$11;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v1, "com.pantech.app.music.metachanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$11;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 702
    return-void
.end method
