.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V
    .registers 2

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2195
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v4, v4, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2500(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    .line 2197
    .local v2, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v2, :cond_3d

    .line 2198
    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v0

    .line 2203
    .local v0, "albumid":I
    :goto_1c
    new-instance v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 2204
    .local v3, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    int-to-long v4, v0

    iput-wide v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 2205
    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 2207
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v4, v4, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v1

    .line 2208
    .local v1, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v4, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;

    invoke-direct {v4, p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;I)V

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 2224
    return-void

    .line 2200
    .end local v0    # "albumid":I
    .end local v1    # "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    .end local v3    # "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    :cond_3d
    const/4 v0, -0x1

    .restart local v0    # "albumid":I
    goto :goto_1c
.end method
