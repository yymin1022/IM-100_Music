.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;)V
    .registers 2

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setLargeAlbumart(I)V

    .line 2245
    return-void
.end method
