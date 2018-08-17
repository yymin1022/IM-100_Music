.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setAlbumart(Landroid/widget/ImageView;Lcom/pantech/app/music/list/MusicItemInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

.field final synthetic val$albumID:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;I)V
    .registers 3

    .prologue
    .line 2514
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iput p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;->val$albumID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 8
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 2518
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;->val$albumID:I

    int-to-long v2, v1

    iget-wide v4, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_29

    .line 2519
    iget-object v0, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 2520
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_29

    .line 2521
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2522
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$3100(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 2523
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$3100(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2527
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_29
    return-void
.end method
