.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V
    .registers 2

    .prologue
    .line 2249
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2252
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "mUpdateLargeAlbumart"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2800(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2254
    return-void
.end method
