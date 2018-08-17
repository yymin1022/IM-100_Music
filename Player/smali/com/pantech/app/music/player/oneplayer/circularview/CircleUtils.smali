.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;
.super Ljava/lang/Object;
.source "CircleUtils.java"


# static fields
.field public static final ORIENTATION_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CircleUtils"


# instance fields
.field mAngle:F

.field mCenterX:F

.field mCenterY:F

.field mItemView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

.field mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mAngle:F

    .line 24
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mAngle:F

    .line 27
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    .line 28
    iput p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    .line 29
    iput p3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    .line 30
    return-void
.end method

.method static checkSameSign(FF)Z
    .registers 4
    .param p0, "angleA"    # F
    .param p1, "angleB"    # F

    .prologue
    const/4 v1, 0x0

    .line 56
    cmpg-float v0, p0, v1

    if-gez v0, :cond_9

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_11

    :cond_9
    cmpl-float v0, p0, v1

    if-lez v0, :cond_13

    cmpl-float v0, p1, v1

    if-lez v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static clamp(II)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "upperLimit"    # I

    .prologue
    .line 33
    if-gez p0, :cond_10

    .line 34
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    .line 36
    :goto_f
    return v0

    :cond_10
    rem-int v0, p0, p1

    goto :goto_f
.end method

.method static clamp180(F)F
    .registers 4
    .param p0, "value"    # F

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 45
    add-float v0, p0, v2

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method static clamp90(II)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "upperLimit"    # I

    .prologue
    .line 41
    add-int/lit8 v0, p0, -0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, p1

    return v0
.end method

.method static getAngle(FF)F
    .registers 4
    .param p0, "angle"    # F
    .param p1, "offset"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 69
    add-float v0, p0, v1

    sub-float/2addr v0, p1

    rem-float/2addr v0, v1

    return v0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 173
    if-eqz p0, :cond_1e

    .line 174
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 175
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 176
    .local v0, "displayRotation":I
    if-nez v0, :cond_18

    .line 178
    const/4 v2, 0x0

    .line 187
    .end local v0    # "displayRotation":I
    .end local v1    # "mWindowManager":Landroid/view/WindowManager;
    :cond_17
    :goto_17
    return v2

    .line 179
    .restart local v0    # "displayRotation":I
    .restart local v1    # "mWindowManager":Landroid/view/WindowManager;
    :cond_18
    if-eq v0, v2, :cond_17

    .line 182
    if-ne v0, v3, :cond_1e

    move v2, v3

    .line 184
    goto :goto_17

    .line 187
    .end local v0    # "displayRotation":I
    .end local v1    # "mWindowManager":Landroid/view/WindowManager;
    :cond_1e
    const/4 v2, -0x1

    goto :goto_17
.end method

.method public static getPixelFromDip(Landroid/content/Context;F)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .prologue
    .line 191
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 192
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 193
    .local v0, "mDisplay":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 195
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    float-to-int v3, v3

    return v3
.end method

.method static positionToDegree(FFFF)F
    .registers 8
    .param p0, "centerX"    # F
    .param p1, "centerY"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 163
    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static shortestAngle(FF)F
    .registers 5
    .param p0, "angleA"    # F
    .param p1, "angleB"    # F

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 88
    .local v1, "angleoffset":F
    sub-float v0, p0, p1

    .line 90
    .local v0, "angle":F
    invoke-static {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->checkSameSign(FF)Z

    move-result v2

    .line 93
    .local v2, "isSameSign":Z
    if-eqz v2, :cond_e

    .line 94
    invoke-static {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->shortestAngle1(FF)F

    move-result v0

    .line 101
    :goto_d
    return v0

    .line 98
    :cond_e
    invoke-static {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->shortestAngle2(FF)F

    move-result v0

    goto :goto_d
.end method

.method private static shortestAngle1(FF)F
    .registers 5
    .param p0, "angleA"    # F
    .param p1, "angleB"    # F

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 147
    sub-float v0, p0, p1

    .line 148
    .local v0, "angle":F
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    .line 150
    add-float/2addr v0, v2

    .line 155
    :cond_b
    :goto_b
    return v0

    .line 151
    :cond_c
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    .line 153
    sub-float/2addr v0, v2

    goto :goto_b
.end method

.method private static shortestAngle2(FF)F
    .registers 9
    .param p0, "angleA"    # F
    .param p1, "angleB"    # F

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 113
    sub-float v0, p0, p1

    .line 116
    .local v0, "angle":F
    cmpl-float v1, p0, v2

    if-lez v1, :cond_20

    cmpg-float v1, p1, v2

    if-gez v1, :cond_20

    .line 117
    cmpg-float v1, v0, v5

    if-gtz v1, :cond_19

    .line 118
    mul-float/2addr v0, v3

    .line 131
    :cond_18
    :goto_18
    return v0

    .line 119
    :cond_19
    cmpl-float v1, v0, v5

    if-lez v1, :cond_18

    .line 120
    sub-float v0, v6, v0

    goto :goto_18

    .line 124
    :cond_20
    cmpg-float v1, p0, v2

    if-gez v1, :cond_18

    cmpl-float v1, p1, v2

    if-lez v1, :cond_18

    .line 125
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2e

    .line 126
    mul-float/2addr v0, v3

    goto :goto_18

    .line 127
    :cond_2e
    cmpg-float v1, v0, v4

    if-gez v1, :cond_18

    .line 128
    add-float/2addr v0, v6

    goto :goto_18
.end method


# virtual methods
.method angleTo(FF)F
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 222
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    sub-float/2addr v0, p2

    float-to-double v0, v0

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method angleToDegrees(FF)F
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->angleTo(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method contains(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 199
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    sub-float p1, v0, p1

    .line 200
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    sub-float p2, v0, p2

    .line 201
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method getBoundingRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getCenterX()F
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    return v0
.end method

.method public getmAngle()F
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mAngle:F

    return v0
.end method

.method public getmItemView()Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mItemView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    return-object v0
.end method

.method public setmAngle(F)V
    .registers 2
    .param p1, "mAngle"    # F

    .prologue
    .line 239
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mAngle:F

    .line 240
    return-void
.end method

.method public setmItemView(Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;)V
    .registers 2
    .param p1, "mItemView"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mItemView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
