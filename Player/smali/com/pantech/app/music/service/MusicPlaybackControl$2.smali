.class Lcom/pantech/app/music/service/MusicPlaybackControl$2;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 178
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$2;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$2;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    return-void
.end method
