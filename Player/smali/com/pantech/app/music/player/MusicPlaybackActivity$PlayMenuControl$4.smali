.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 3852
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4
    .param p1, "arg0"    # Landroid/widget/PopupMenu;

    .prologue
    .line 3855
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->access$5402(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;Z)Z

    .line 3856
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->access$5502(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 3857
    return-void
.end method
