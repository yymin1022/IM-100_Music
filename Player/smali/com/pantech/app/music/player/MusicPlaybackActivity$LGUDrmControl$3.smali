.class Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->showRODialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)V
    .registers 2

    .prologue
    .line 4377
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4380
    const/4 v0, 0x4

    if-ne p2, v0, :cond_18

    .line 4381
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "setOnKeyListener() KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->access$6400(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->forceToStop()V

    .line 4383
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->dismissRODialog()V

    .line 4385
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
