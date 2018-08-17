.class public Lcom/pantech/app/music/list/animation/ShakeAnimation;
.super Landroid/view/animation/Animation;
.source "ShakeAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mMaxDegress:F

.field mOldInterpolatedTime:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mOldInterpolatedTime:F

    .line 22
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mMaxDegress:F

    .line 24
    iput p1, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCenterX:F

    .line 25
    iput p2, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCenterY:F

    .line 26
    return-void
.end method

.method public static applyShake(Landroid/widget/ImageView;FF)V
    .registers 7
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 63
    new-instance v0, Lcom/pantech/app/music/list/animation/ShakeAnimation;

    invoke-direct {v0, p1, p2}, Lcom/pantech/app/music/list/animation/ShakeAnimation;-><init>(FF)V

    .line 64
    .local v0, "rotation":Lcom/pantech/app/music/list/animation/ShakeAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/animation/ShakeAnimation;->setDuration(J)V

    .line 66
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/animation/ShakeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 13
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 40
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v5, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mMaxDegress:F

    float-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-float v3, v6

    .line 42
    .local v3, "currentDegree":F
    iget v5, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mOldInterpolatedTime:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_17

    .line 59
    :goto_16
    return-void

    .line 45
    :cond_17
    iget v1, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCenterX:F

    .line 46
    .local v1, "centerX":F
    iget v2, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCenterY:F

    .line 47
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCamera:Landroid/graphics/Camera;

    .line 49
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 50
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 51
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 52
    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 55
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    iput p1, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mOldInterpolatedTime:F

    goto :goto_16
.end method

.method public initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 32
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/animation/ShakeAnimation;->mCamera:Landroid/graphics/Camera;

    .line 33
    return-void
.end method
