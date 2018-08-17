.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$2;
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
    .line 3760
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "howlong"    # J
    .param p4, "repcnt"    # I

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, p4, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5000(Lcom/pantech/app/music/player/MusicPlaybackActivity;IJ)V

    .line 3764
    return-void
.end method
