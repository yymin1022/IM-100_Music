.class Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$4;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->popupDialogMusicOn(I)V
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
    .line 4401
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 4405
    return-void
.end method
