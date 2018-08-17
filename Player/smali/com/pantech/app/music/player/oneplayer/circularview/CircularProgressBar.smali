.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# static fields
.field public static DEFAULT_ANGLE_OFFSET:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CircularProgressBar"


# instance fields
.field private CircleViewBoundsOffset:F

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private canvasSize:I

.field private isGradation:Z

.field private isProgressive:Z

.field private isRambling:Z

.field private mBackgroundCirclePaint:Landroid/graphics/Paint;

.field private mCentreArt:Landroid/graphics/Bitmap;

.field private mCentreArtPaint:Landroid/graphics/Paint;

.field private mCircleInnerColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleViewBounds:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDiameter:I

.field private mGradationColorArray:[I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mMax:F

.field private mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

.field private mProgress:F

.field private mProgressBackgroundColor:I

.field private mProgressColor:I

.field private mStrokeSize:F

.field private mSweepAngle:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F

.field private mTranslateOffsetX:F

.field private mTranslateOffsetY:F

.field private startAngle:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->DEFAULT_ANGLE_OFFSET:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    .line 37
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 38
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 40
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    .line 42
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 43
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressColor:I

    .line 44
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    .line 45
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleInnerColor:I

    .line 46
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    .line 47
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    .line 48
    sget v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->DEFAULT_ANGLE_OFFSET:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    .line 50
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetX:F

    .line 51
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetY:F

    .line 53
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 54
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isRambling:Z

    .line 65
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    .line 67
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isProgressive:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    .line 79
    invoke-direct {p0, p1, v3, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    .line 37
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 38
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 40
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    .line 42
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 43
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressColor:I

    .line 44
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    .line 45
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleInnerColor:I

    .line 46
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    .line 47
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    .line 48
    sget v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->DEFAULT_ANGLE_OFFSET:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    .line 50
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetX:F

    .line 51
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetY:F

    .line 53
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 54
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isRambling:Z

    .line 65
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    .line 67
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isProgressive:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    .line 84
    invoke-direct {p0, p1, p2, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    .line 37
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 38
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 40
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    .line 42
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 43
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressColor:I

    .line 44
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    .line 45
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleInnerColor:I

    .line 46
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    .line 47
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    .line 48
    sget v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->DEFAULT_ANGLE_OFFSET:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    .line 50
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetX:F

    .line 51
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetY:F

    .line 53
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 54
    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isRambling:Z

    .line 65
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    .line 67
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isProgressive:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method private drawAlbumart(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_40

    .line 259
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 262
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    :goto_3f
    return-void

    .line 265
    :cond_40
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 266
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleInnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3f
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 94
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/R$styleable;->CircularProgressBar:[I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "attr":Landroid/content/res/TypedArray;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    .line 100
    const/4 v2, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    .line 102
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isProgressive:Z

    .line 103
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 104
    const/4 v2, 0x3

    const v3, -0xffff01

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressColor:I

    .line 105
    const/4 v2, 0x4

    const/high16 v3, -0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    .line 107
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 108
    .local v1, "res":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 110
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleInnerColor:I

    .line 113
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isRambling:Z

    .line 116
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    .line 120
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    .line 121
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 122
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidateTextPaintAndMeasurements()V

    .line 123
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->setPaint()V

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return-void
.end method

.method private initGradation()V
    .registers 9

    .prologue
    .line 247
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 248
    .local v1, "left":F
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 249
    .local v2, "top":F
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 250
    .local v3, "right":F
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 253
    .local v4, "bottom":F
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 254
    return-void
.end method

.method private invalidateTextPaintAndMeasurements()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 128
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 129
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 131
    .local v1, "size":F
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 136
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextWidth:F

    .line 137
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 138
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextHeight:F

    .line 140
    .end local v0    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_4d
    return-void
.end method

.method private setPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 321
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 327
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    .line 332
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    return-void
.end method


# virtual methods
.method checkProgressOver(F)F
    .registers 4
    .param p1, "argProgress"    # F

    .prologue
    .line 301
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_12

    .line 302
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    rem-float v0, p1, v1

    .line 303
    .local v0, "progress":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_11

    .line 304
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    .line 309
    :cond_11
    :goto_11
    return v0

    .line 307
    .end local v0    # "progress":F
    :cond_12
    move v0, p1

    .restart local v0    # "progress":F
    goto :goto_11
.end method

.method protected convertDegreeToProgress(F)F
    .registers 4
    .param p1, "argDegree"    # F

    .prologue
    .line 289
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected convertProgressToDegree(F)F
    .registers 5
    .param p1, "argProgress"    # F

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->checkProgressOver(F)F

    move-result v0

    .line 279
    .local v0, "progress":F
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    div-float/2addr v1, v2

    return v1
.end method

.method public getDiameter()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    return v0
.end method

.method public getMax()F
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    float-to-int v0, v0

    return v0
.end method

.method public getRadius()I
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getDiameter()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getStartAngle()F
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    return v0
.end method

.method public getStrokeSize()F
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    return v0
.end method

.method public getSweepAngle()F
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_9f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    :goto_15
    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->canvasSize:I

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 151
    .local v9, "save_count":I
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->drawAlbumart(Landroid/graphics/Canvas;)V

    .line 154
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetX:F

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetY:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    if-eqz v0, :cond_4f

    .line 161
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    aget v5, v2, v10

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 162
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    :cond_4f
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isProgressive:Z

    if-eqz v0, :cond_60

    .line 168
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    :cond_60
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->convertProgressToDegree(F)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    .line 173
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->startAngle:F

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mSweepAngle:F

    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextWidth:F

    .line 178
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 179
    .local v8, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextHeight:F

    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextWidth:F

    div-float/2addr v1, v11

    neg-float v1, v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextHeight:F

    div-float/2addr v2, v11

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    .end local v8    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_9b
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    return-void

    .line 146
    .end local v9    # "save_count":I
    :cond_9f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    goto/16 :goto_15
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 191
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getDefaultSize(II)I

    move-result v1

    .line 192
    .local v1, "mHeight":I
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->getDefaultSize(II)I

    move-result v3

    .line 194
    .local v3, "mWidth":I
    if-nez p2, :cond_5a

    .line 196
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    .line 204
    :goto_2a
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    iget v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->setMeasuredDimension(II)V

    .line 206
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 207
    .local v2, "mRadius":F
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mStrokeSize:F

    mul-float/2addr v5, v7

    sub-float v5, v2, v5

    iget v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->CircleViewBoundsOffset:F

    sub-float v0, v5, v6

    .line 209
    .local v0, "mCalculatedRadius":F
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCircleViewBounds:Landroid/graphics/RectF;

    neg-float v6, v0

    neg-float v7, v0

    invoke-virtual {v5, v6, v7, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 211
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetX:F

    .line 212
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mTranslateOffsetY:F

    .line 218
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v4

    .line 220
    .local v4, "rotation":I
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    if-eqz v5, :cond_59

    .line 221
    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    invoke-interface {v5, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;->onOrientationChanged(I)V

    .line 223
    :cond_59
    return-void

    .line 197
    .end local v0    # "mCalculatedRadius":F
    .end local v2    # "mRadius":F
    .end local v4    # "rotation":I
    :cond_5a
    if-nez p1, :cond_5f

    .line 199
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    goto :goto_2a

    .line 201
    :cond_5f
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mDiameter:I

    goto :goto_2a
.end method

.method onProgressRefresh(FZ)V
    .registers 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 337
    return-void
.end method

.method public setFloatProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 356
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 360
    :goto_6
    return-void

    .line 358
    :cond_7
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 359
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    goto :goto_6
.end method

.method public setGradationColor(II)V
    .registers 5
    .param p1, "color1"    # I
    .param p2, "color2"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 431
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mGradationColorArray:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 432
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 433
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 398
    .local v0, "oldArt":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 399
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 401
    :cond_7
    if-eqz p1, :cond_f

    .line 402
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    .line 406
    :goto_b
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 407
    return-void

    .line 404
    :cond_f
    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mCentreArt:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public setIsGradation(Z)V
    .registers 2
    .param p1, "option"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->isGradation:Z

    .line 476
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 477
    return-void
.end method

.method public setMax(F)V
    .registers 3
    .param p1, "max"    # F

    .prologue
    .line 414
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 415
    const/4 p1, 0x0

    .line 417
    :cond_6
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 418
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    .line 419
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->postInvalidate()V

    .line 421
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_19

    .line 422
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    .line 424
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 426
    :cond_1c
    return-void
.end method

.method public setProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    .line 368
    if-gez p1, :cond_3

    .line 369
    const/4 p1, 0x0

    .line 372
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 373
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mMax:F

    float-to-int p1, v0

    .line 376
    :cond_d
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    .line 377
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->setFloatProgress(F)V

    .line 379
    :cond_18
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "mText"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mText:Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 392
    return-void
.end method

.method public setmOrientationChangeListener(Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    .line 487
    return-void
.end method

.method public setmProgressBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    .line 481
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->invalidate()V

    .line 483
    return-void
.end method
