.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

.field final synthetic val$albumid:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;I)V
    .registers 3

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

    iput p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->val$albumid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 9
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    const/4 v6, 0x0

    .line 2211
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "onAlbumArtExtracted"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->val$albumid:I

    int-to-long v2, v1

    iget-wide v4, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3e

    .line 2214
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 2215
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_3e

    .line 2216
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V

    .line 2217
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V

    .line 2218
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;->this$2:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V

    .line 2222
    .end local v0    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_3e
    return-void
.end method
