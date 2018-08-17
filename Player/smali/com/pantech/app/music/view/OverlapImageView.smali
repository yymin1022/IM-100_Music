.class public Lcom/pantech/app/music/view/OverlapImageView;
.super Lcom/pantech/app/music/list/component/view/CheckableImageView;
.source "OverlapImageView.java"


# static fields
.field public static final OVERLAP_IMAGE_MAX:I = 0x4

.field private static mAlbumArtFrameBitmap:Landroid/graphics/Bitmap;

.field private static mAlbumArtMaskBitmap1:Landroid/graphics/Bitmap;

.field private static mAlbumArtMaskBitmap2:Landroid/graphics/Bitmap;

.field private static mAlbumArtMaskBitmap3:Landroid/graphics/Bitmap;

.field private static mDefHeight:I

.field private static mDefWidth:I

.field private static mGapSize:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/view/OverlapImageView;->initValue(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/view/OverlapImageView;->initValue(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/view/OverlapImageView;->initValue(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public initValue(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pantech/app/music/view/OverlapImageView;->mContext:Landroid/content/Context;

    .line 56
    sget v0, Lcom/pantech/app/music/view/OverlapImageView;->mDefWidth:I

    if-nez v0, :cond_13

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/pantech/app/music/view/OverlapImageView;->mDefWidth:I

    .line 59
    :cond_13
    sget v0, Lcom/pantech/app/music/view/OverlapImageView;->mDefHeight:I

    if-nez v0, :cond_24

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/pantech/app/music/view/OverlapImageView;->mDefHeight:I

    .line 62
    :cond_24
    sget v0, Lcom/pantech/app/music/view/OverlapImageView;->mGapSize:I

    if-nez v0, :cond_35

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/pantech/app/music/view/OverlapImageView;->mGapSize:I

    .line 64
    :cond_35
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;I)V
    .registers 11
    .param p1, "topBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 69
    if-nez p1, :cond_5

    .line 98
    :goto_4
    return-void

    .line 71
    :cond_5
    if-lez p2, :cond_a

    const/4 v3, 0x4

    if-le p2, v3, :cond_e

    .line 73
    :cond_a
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 77
    :cond_e
    sget v2, Lcom/pantech/app/music/view/OverlapImageView;->mDefWidth:I

    .line 79
    .local v2, "totalWidth":I
    const/4 v3, 0x1

    if-eq p2, v3, :cond_19

    .line 80
    sget v3, Lcom/pantech/app/music/view/OverlapImageView;->mDefWidth:I

    sget v4, Lcom/pantech/app/music/view/OverlapImageView;->mGapSize:I

    add-int v2, v3, v4

    .line 83
    :cond_19
    sget v3, Lcom/pantech/app/music/view/OverlapImageView;->mDefHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget v3, Lcom/pantech/app/music/view/OverlapImageView;->mDefWidth:I

    sget v4, Lcom/pantech/app/music/view/OverlapImageView;->mDefHeight:I

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    invoke-virtual {v0, p1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    sget-object v3, Lcom/pantech/app/music/view/OverlapImageView;->mAlbumArtFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    packed-switch p2, :pswitch_data_50

    .line 97
    :goto_3a
    invoke-super {p0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 92
    :pswitch_3e
    sget-object v3, Lcom/pantech/app/music/view/OverlapImageView;->mAlbumArtMaskBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3a

    .line 93
    :pswitch_44
    sget-object v3, Lcom/pantech/app/music/view/OverlapImageView;->mAlbumArtMaskBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3a

    .line 94
    :pswitch_4a
    sget-object v3, Lcom/pantech/app/music/view/OverlapImageView;->mAlbumArtMaskBitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3a

    .line 90
    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method public setImageBitmap([Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "originBitmapArray"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 109
    if-nez p1, :cond_3

    .line 112
    :goto_2
    return-void

    .line 111
    :cond_3
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/view/OverlapImageView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_2
.end method
