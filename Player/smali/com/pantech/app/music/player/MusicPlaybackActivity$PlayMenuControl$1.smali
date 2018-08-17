.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V
    .registers 2

    .prologue
    .line 3752
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "howlong"    # J
    .param p4, "repcnt"    # I

    .prologue
    .line 3755
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "mRewListener:onRepeat()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>repcnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", howlong:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, p4, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4900(Lcom/pantech/app/music/player/MusicPlaybackActivity;IJ)V

    .line 3758
    return-void
.end method
