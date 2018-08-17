.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;)V
    .registers 2

    .prologue
    .line 4499
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setLargeAlbumart(I)V

    .line 4503
    return-void
.end method
