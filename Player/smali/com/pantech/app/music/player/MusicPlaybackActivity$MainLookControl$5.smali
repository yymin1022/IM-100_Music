.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$5;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setContentView()V
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
    .line 2336
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->showNowPlaying()V

    .line 2340
    return-void
.end method
