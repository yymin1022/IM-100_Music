.class Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$2;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 4369
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 4372
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "Ro update Dialog is canceled!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->access$6400(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->forceToStop()V

    .line 4374
    return-void
.end method
