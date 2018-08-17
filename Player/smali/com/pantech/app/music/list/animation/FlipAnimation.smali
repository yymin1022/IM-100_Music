.class public Lcom/pantech/app/music/list/animation/FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field mOldInterpolatedTime:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mOldInterpolatedTime:F

    .line 20
    iput p1, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mFromDegrees:F

    .line 21
    iput p2, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mToDegrees:F

    .line 22
    iput p3, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCenterX:F

    .line 23
    iput p4, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCenterY:F

    .line 24
    return-void
.end method

.method public static applyflip(Landroid/widget/ImageView;FF)V
    .registers 9
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 62
    .local v0, "centerX":F
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 64
    .local v1, "centerY":F
    new-instance v2, Lcom/pantech/app/music/list/animation/FlipAnimation;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/pantech/app/music/list/animation/FlipAnimation;-><init>(FFFF)V

    .line 65
    .local v2, "rotation":Lcom/pantech/app/music/list/animation/FlipAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/list/animation/FlipAnimation;->setDuration(J)V

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/animation/FlipAnimation;->setFillAfter(Z)V

    .line 67
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/animation/FlipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 38
    iget v6, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mOldInterpolatedTime:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_7

    .line 57
    :goto_6
    return-void

    .line 41
    :cond_7
    iget v4, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mFromDegrees:F

    .line 42
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 43
    .local v3, "degrees":F
    iget v1, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCenterX:F

    .line 44
    .local v1, "centerX":F
    iget v2, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCenterY:F

    .line 45
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    .line 47
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 48
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 49
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 50
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 53
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 54
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    iput p1, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mOldInterpolatedTime:F

    goto :goto_6
.end method

.method public initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 30
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/animation/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    .line 31
    return-void
.end method
