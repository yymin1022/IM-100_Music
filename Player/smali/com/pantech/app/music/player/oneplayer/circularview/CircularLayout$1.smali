.class Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;
.super Ljava/lang/Object;
.source "CircularLayout.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setAlbumArt(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

.field final synthetic val$albumID:J


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;J)V
    .registers 4

    .prologue
    .line 566
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;->this$0:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iput-wide p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;->val$albumID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 8
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 569
    iget-wide v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;->val$albumID:J

    iget-wide v4, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_23

    .line 570
    iget-object v0, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 571
    .local v0, "item":Landroid/widget/ImageView;
    if-eqz v0, :cond_23

    .line 573
    new-instance v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircleDrawable;

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 580
    .end local v0    # "item":Landroid/widget/ImageView;
    :cond_23
    return-void
.end method
