.class Lcom/pantech/app/music/player/MusicPlaybackActivity$6;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$6;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$6;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicVolumeControl;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1300()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->update(Z)V

    .line 370
    return-void
.end method
