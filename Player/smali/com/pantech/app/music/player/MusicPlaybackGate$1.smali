.class Lcom/pantech/app/music/player/MusicPlaybackGate$1;
.super Ljava/lang/Object;
.source "MusicPlaybackGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackGate;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackGate;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackGate$1;->this$0:Lcom/pantech/app/music/player/MusicPlaybackGate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackGate$1;->this$0:Lcom/pantech/app/music/player/MusicPlaybackGate;

    const-class v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackGate$1;->this$0:Lcom/pantech/app/music/player/MusicPlaybackGate;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/MusicPlaybackGate;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
