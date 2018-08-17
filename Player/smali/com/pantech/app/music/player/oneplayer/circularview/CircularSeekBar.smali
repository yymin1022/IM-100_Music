.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;
.super Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;
.source "CircularSeekBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularSeekBar"


# instance fields
.field private dx:F

.field private dy:F

.field private initialPointX:F

.field private initialPointY:F

.field private isSeeking:Z

.field private mDragging:Z

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field mTouchOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mTouchOffset:F

    .line 25
    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    .line 28
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mScaledTouchSlop:I

    .line 37
    invoke-direct {p0, p1, v2, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mTouchOffset:F

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    .line 28
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mScaledTouchSlop:I

    .line 42
    invoke-direct {p0, p1, p2, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mTouchOffset:F

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    .line 28
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mScaledTouchSlop:I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->initialPointX:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->initialPointY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getSweepAngle()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 85
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->dx:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->dy:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    :cond_37
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mScaledTouchSlop:I

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/R$styleable;->CircularProgressBar:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2d

    .line 60
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    :cond_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private isTouchInBound(FFFFFF)Z
    .registers 15
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 269
    sub-float v1, p3, p5

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v1, p4, p6

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 270
    .local v0, "distance":F
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_20

    cmpg-float v1, v0, p2

    if-gtz v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    if-eqz v2, :cond_84

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getRadius()I

    move-result v2

    int-to-float v14, v2

    .line 217
    .local v14, "radius":F
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getStrokeSize()F

    move-result v15

    .line 219
    .local v15, "strokeSize":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mTouchOffset:F

    add-float/2addr v2, v15

    sub-float v2, v14, v2

    float-to-int v2, v2

    int-to-float v3, v2

    .line 220
    .local v3, "minAvailable":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mTouchOffset:F

    add-float/2addr v2, v15

    add-float/2addr v2, v14

    float-to-int v2, v2

    int-to-float v4, v2

    .line 222
    .local v4, "maxAvailable":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 223
    .local v5, "mTouchX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 225
    .local v6, "mTouchY":F
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v7, v2, v16

    .line 226
    .local v7, "centerX":F
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v8, v2, v16

    .local v8, "centerY":F
    move-object/from16 v2, p0

    .line 231
    invoke-direct/range {v2 .. v8}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isTouchInBound(FFFFFF)Z

    move-result v12

    .line 233
    .local v12, "isTouchIn":Z
    if-eqz v12, :cond_81

    .line 236
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getStartAngle()F

    move-result v16

    add-float v2, v2, v16

    const/high16 v16, 0x43b40000    # 360.0f

    rem-float v9, v2, v16

    .line 240
    .local v9, "angleoffset":F
    sub-float v2, v5, v7

    float-to-double v0, v2

    move-wide/from16 v16, v0

    sub-float v2, v8, v6

    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    const-wide v18, 0x4076800000000000L    # 360.0

    add-double v16, v16, v18

    float-to-double v0, v9

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    const/high16 v16, 0x43b40000    # 360.0f

    rem-float v2, v2, v16

    float-to-double v10, v2

    .line 248
    .local v10, "degree":D
    double-to-float v2, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->convertDegreeToProgress(F)F

    move-result v13

    .line 250
    .local v13, "progress":F
    float-to-int v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setProgress(I)V

    .line 255
    .end local v9    # "angleoffset":F
    .end local v10    # "degree":D
    .end local v13    # "progress":F
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate()V

    .line 257
    .end local v3    # "minAvailable":F
    .end local v4    # "maxAvailable":F
    .end local v5    # "mTouchX":F
    .end local v6    # "mTouchY":F
    .end local v7    # "centerX":F
    .end local v8    # "centerY":F
    .end local v12    # "isTouchIn":Z
    .end local v14    # "radius":F
    .end local v15    # "strokeSize":F
    :cond_84
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 70
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 97
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->initialPointX:F

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->initialPointY:F

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->dx:F

    .line 103
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->initialPointY:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->dy:F

    .line 104
    return-void
.end method

.method onProgressRefresh(FZ)V
    .registers 4
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularProgressBar;->onProgressRefresh(FZ)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 111
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate()V

    .line 113
    :cond_a
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    .line 201
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    .line 209
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->isSeeking:Z

    if-eqz v2, :cond_78

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_8e

    .line 190
    :cond_f
    :goto_f
    :pswitch_f
    return v4

    .line 120
    :pswitch_10
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1d

    .line 121
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 123
    :cond_1d
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStartTrackingTouch()V

    .line 124
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 128
    :pswitch_24
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    if-eqz v2, :cond_2c

    .line 129
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 131
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 132
    .local v1, "x":F
    const/4 v0, 0x0

    .line 133
    .local v0, "mTouchDownX":F
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 134
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4b

    .line 135
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 137
    :cond_4b
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStartTrackingTouch()V

    .line 138
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 144
    .end local v0    # "mTouchDownX":F
    .end local v1    # "x":F
    :pswitch_52
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    if-eqz v2, :cond_60

    .line 145
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 146
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStopTrackingTouch()V

    .line 157
    :goto_5c
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate()V

    goto :goto_f

    .line 150
    :cond_60
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStartTrackingTouch()V

    .line 151
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 152
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStopTrackingTouch()V

    goto :goto_5c

    .line 161
    :pswitch_6a
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->mDragging:Z

    if-eqz v2, :cond_74

    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->onStopTrackingTouch()V

    .line 163
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setPressed(Z)V

    .line 165
    :cond_74
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->invalidate()V

    goto :goto_f

    .line 170
    :cond_78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_9a

    goto :goto_f

    .line 173
    :pswitch_82
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setPressed(Z)V

    goto :goto_f

    .line 182
    :pswitch_86
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setPressed(Z)V

    goto :goto_f

    .line 187
    :pswitch_8a
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setPressed(Z)V

    goto :goto_f

    .line 118
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_52
        :pswitch_24
        :pswitch_6a
    .end packed-switch

    .line 170
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_82
        :pswitch_86
        :pswitch_f
        :pswitch_8a
    .end packed-switch
.end method
