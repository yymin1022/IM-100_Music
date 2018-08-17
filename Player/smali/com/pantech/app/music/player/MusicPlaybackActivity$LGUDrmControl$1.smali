.class Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;
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
    .line 4292
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(IZ)V
    .registers 5
    .param p1, "msgId"    # I
    .param p2, "isFinish"    # Z

    .prologue
    .line 4312
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "OnDrmProcessListener:OnFailed()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->dismissRODialog()V

    .line 4315
    if-eqz p2, :cond_22

    .line 4316
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "=>push to start MusicOn!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->popupDialogMusicOn(I)V

    .line 4327
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 4328
    return-void

    .line 4319
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    .line 4320
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4321
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 4322
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->stop()V

    goto :goto_1a

    .line 4324
    :cond_4e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->next(Z)V

    goto :goto_1a
.end method

.method public onUpdated()V
    .registers 5

    .prologue
    .line 4295
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "OnDrmProcessListener:onUpdated()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->dismissRODialog()V

    .line 4298
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clear(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)V

    .line 4299
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clear(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)V

    .line 4300
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->play()V

    .line 4301
    return-void
.end method
