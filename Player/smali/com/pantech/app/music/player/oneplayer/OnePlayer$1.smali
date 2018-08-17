.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$100(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/service/MusicPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->setQueuePosition(IJ)V

    .line 136
    return-void
.end method
