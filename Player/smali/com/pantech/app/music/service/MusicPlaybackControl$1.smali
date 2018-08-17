.class Lcom/pantech/app/music/service/MusicPlaybackControl$1;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, v1, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 175
    :cond_e
    return-void
.end method
