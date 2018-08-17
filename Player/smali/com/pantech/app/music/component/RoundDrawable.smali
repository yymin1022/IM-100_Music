.class public Lcom/pantech/app/music/component/RoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 29
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 30
    .local v0, "shader":Landroid/graphics/BitmapShader;
    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32
    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmapWidth:I

    .line 33
    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmapHeight:I

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 46
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 51
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    invoke-virtual {p0}, Lcom/pantech/app/music/component/RoundDrawable;->invalidateSelf()V

    .line 54
    :cond_10
    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 3
    .param p1, "aa"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/music/component/RoundDrawable;->invalidateSelf()V

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .param p1, "dither"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/pantech/app/music/component/RoundDrawable;->invalidateSelf()V

    .line 91
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3
    .param p1, "filter"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/music/component/RoundDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method

.method public setGray(Z)V
    .registers 6
    .param p1, "bset"    # Z

    .prologue
    .line 98
    if-eqz p1, :cond_16

    .line 99
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 100
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 101
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 102
    .local v1, "f":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v2, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 107
    .end local v0    # "cm":Landroid/graphics/ColorMatrix;
    .end local v1    # "f":Landroid/graphics/ColorMatrixColorFilter;
    :goto_15
    return-void

    .line 105
    :cond_16
    iget-object v2, p0, Lcom/pantech/app/music/component/RoundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_15
.end method
