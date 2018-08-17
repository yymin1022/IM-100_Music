.class public Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
.super Ljava/lang/Object;
.source "AlbumArtExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/albumart/AlbumArtExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public inAlbumID:J

.field public inListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

.field public inOptions:I

.field public inTargetView:Landroid/view/View;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColorful:Lcom/pantech/app/music/utils/ColorUtils$Colorful;

.field private mSwatch:Landroid/support/v7/graphics/Palette$Swatch;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mColorful:Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    return-object v0
.end method

.method public getSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method public setColorful(Lcom/pantech/app/music/utils/ColorUtils$Colorful;)V
    .registers 2
    .param p1, "colorful"    # Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mColorful:Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    .line 71
    return-void
.end method

.method public setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V
    .registers 2
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    .line 64
    return-void
.end method
