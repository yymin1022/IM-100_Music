.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$3;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showPopupMenu(Landroid/view/View;)V
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
    .line 3845
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3848
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
