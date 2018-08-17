.class Lcom/pantech/app/music/service/MusicPlaybackService$13;
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
    .line 742
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$13;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$13;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->resetQueue()V

    .line 746
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$13;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 747
    return-void
.end method
