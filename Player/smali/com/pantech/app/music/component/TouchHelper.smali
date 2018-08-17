.class public Lcom/pantech/app/music/component/TouchHelper;
.super Ljava/lang/Object;
.source "TouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UP:I = 0x3

.field private static final mDCLICK_TIMEOUT:I = 0xfa

.field private static final mREVISION_VALUE:I = 0xa

.field private static final mVELOCITY_VALUE:I = 0x1e


# instance fields
.field private availableDClick:Z

.field private clicktime:[J

.field public distance:D

.field private ignoreSelectAction:Z

.field private ignoreTouchAction:Z

.field private isActionMove:Z

.field private isClicked:Z

.field private mClickAction:Ljava/lang/Runnable;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field public theta:D

.field private touchCnt:I

.field private touchX:[F

.field private touchY:[F

.field public velocity:D


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isClicked:Z

    .line 40
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    .line 41
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreTouchAction:Z

    .line 42
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreSelectAction:Z

    .line 43
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->availableDClick:Z

    .line 45
    iput v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    .line 48
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    .line 275
    new-instance v0, Lcom/pantech/app/music/component/TouchHelper$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$1;-><init>(Lcom/pantech/app/music/component/TouchHelper;)V

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mClickAction:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/pantech/app/music/component/TouchHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/component/TouchHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/pantech/app/music/component/TouchHelper;->isClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/component/TouchHelper;)Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/component/TouchHelper;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    return-object v0
.end method

.method private calibration(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    if-nez v0, :cond_e

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_e

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getDistance()D
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 182
    iget-object v4, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v5, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 183
    .local v0, "spanX":D
    iget-object v4, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v5, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 185
    .local v2, "spanY":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private push(FFJ)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 172
    iget v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_9

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    .line 175
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    aput p1, v0, v1

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    aput p2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    iget v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    aput-wide p3, v0, v1

    .line 178
    iget v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    .line 179
    return-void
.end method


# virtual methods
.method public calculate()V
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    .line 195
    iput-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->distance:D

    .line 196
    iput-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    .line 198
    iget v9, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    if-nez v9, :cond_b

    .line 216
    :goto_a
    return-void

    .line 201
    :cond_b
    iget v9, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v9, -0x1

    .line 202
    .local v3, "lastIdx":I
    const/4 v8, 0x0

    .line 203
    .local v8, "startIdx":I
    move v2, v3

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_23

    .line 204
    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    aget-wide v10, v9, v3

    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    aget-wide v12, v9, v2

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x32

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5b

    .line 205
    move v8, v2

    .line 209
    :cond_23
    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    aget-wide v10, v9, v3

    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->clicktime:[J

    aget-wide v12, v9, v8

    sub-long/2addr v10, v12

    long-to-double v0, v10

    .line 210
    .local v0, "elapsedtime":D
    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    aget v9, v9, v3

    iget-object v10, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    aget v10, v10, v8

    sub-float/2addr v9, v10

    float-to-double v4, v9

    .line 211
    .local v4, "spanX":D
    iget-object v9, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    aget v9, v9, v3

    iget-object v10, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    aget v10, v10, v8

    sub-float/2addr v9, v10

    float-to-double v6, v9

    .line 213
    .local v6, "spanY":D
    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->distance:D

    .line 214
    iget-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->distance:D

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    div-double/2addr v10, v0

    iput-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    .line 215
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    goto :goto_a

    .line 203
    .end local v0    # "elapsedtime":D
    .end local v4    # "spanX":D
    .end local v6    # "spanY":D
    :cond_5b
    add-int/lit8 v2, v2, -0x1

    goto :goto_11
.end method

.method public getDirection()I
    .registers 9

    .prologue
    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    const-wide v4, -0x4016de04abbbd2e8L    # -0.7853981633974483

    .line 112
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    const-wide v2, 0x4002d97c7f3321d2L    # 2.356194490192345

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1d

    .line 113
    const/4 v0, 0x4

    .line 121
    :goto_1c
    return v0

    .line 115
    :cond_1d
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    const-wide v2, -0x3ffd268380ccde2eL    # -2.356194490192345

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_30

    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_30

    .line 116
    const/4 v0, 0x3

    goto :goto_1c

    .line 118
    :cond_30
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3e

    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3e

    .line 119
    const/4 v0, 0x2

    goto :goto_1c

    .line 121
    :cond_3e
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public getDistanceY()D
    .registers 6

    .prologue
    .line 189
    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-double v0, v2

    .line 191
    .local v0, "spanY":D
    return-wide v0
.end method

.method public getSpanX()I
    .registers 5

    .prologue
    .line 129
    iget v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_8

    .line 130
    const/4 v0, 0x0

    .line 139
    :cond_7
    :goto_7
    return v0

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 133
    .local v0, "spanX":I
    if-nez v0, :cond_7

    .line 134
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    .line 135
    const/4 v0, 0x1

    goto :goto_7

    .line 136
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 137
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getSpanY()I
    .registers 5

    .prologue
    .line 143
    iget v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_8

    .line 144
    const/4 v0, 0x0

    .line 153
    :cond_7
    :goto_7
    return v0

    .line 146
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 147
    .local v0, "spanY":I
    if-nez v0, :cond_7

    .line 148
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    .line 149
    const/4 v0, 0x1

    goto :goto_7

    .line 150
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/component/TouchHelper;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 151
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getTheta()D
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    return-wide v0
.end method

.method public getVelocity()I
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    double-to-int v0, v0

    return v0
.end method

.method public getVelocityX()I
    .registers 5

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    iget-wide v2, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getVelocityY()I
    .registers 5

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    iget-wide v2, p0, Lcom/pantech/app/music/component/TouchHelper;->theta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isMoveAction()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    return v0
.end method

.method public isNotSelectAction()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isPrevCurrSameArea()Z
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 165
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2e

    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2e

    .line 167
    const/4 v0, 0x1

    .line 168
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 219
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/component/TouchHelper;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_c0

    .line 273
    :cond_10
    :goto_10
    return-void

    .line 224
    :pswitch_11
    invoke-virtual {p0}, Lcom/pantech/app/music/component/TouchHelper;->reset()V

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/component/TouchHelper;->push(FFJ)V

    .line 226
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchBegin(Lcom/pantech/app/music/component/TouchHelper;)V

    goto :goto_10

    .line 230
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/component/TouchHelper;->push(FFJ)V

    .line 232
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreTouchAction:Z

    if-nez v0, :cond_10

    .line 235
    invoke-virtual {p0}, Lcom/pantech/app/music/component/TouchHelper;->getSpanX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/component/TouchHelper;->calibration(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 238
    iput-boolean v7, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    .line 239
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchMove(Lcom/pantech/app/music/component/TouchHelper;)V

    goto :goto_10

    .line 243
    :pswitch_4e
    iput-boolean v6, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/component/TouchHelper;->push(FFJ)V

    .line 245
    invoke-virtual {p0}, Lcom/pantech/app/music/component/TouchHelper;->calculate()V

    .line 246
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchEnd(Lcom/pantech/app/music/component/TouchHelper;)V

    .line 248
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreTouchAction:Z

    if-nez v0, :cond_10

    .line 251
    iget-wide v0, p0, Lcom/pantech/app/music/component/TouchHelper;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_b8

    .line 252
    invoke-direct {p0}, Lcom/pantech/app/music/component/TouchHelper;->getDistance()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_81

    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreSelectAction:Z

    if-eqz v0, :cond_87

    .line 253
    :cond_81
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchNone(Lcom/pantech/app/music/component/TouchHelper;)V

    goto :goto_10

    .line 255
    :cond_87
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->availableDClick:Z

    if-nez v0, :cond_91

    .line 256
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchSelect(Lcom/pantech/app/music/component/TouchHelper;)V

    goto :goto_10

    .line 258
    :cond_91
    iget-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isClicked:Z

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lcom/pantech/app/music/component/TouchHelper;->isPrevCurrSameArea()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 259
    iput-boolean v6, p0, Lcom/pantech/app/music/component/TouchHelper;->isClicked:Z

    .line 260
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->mClickAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchDClick(Lcom/pantech/app/music/component/TouchHelper;)V

    goto/16 :goto_10

    .line 264
    :cond_ab
    iput-boolean v7, p0, Lcom/pantech/app/music/component/TouchHelper;->isClicked:Z

    .line 265
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper;->mClickAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    .line 269
    :cond_b8
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mListener:Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchFling(Lcom/pantech/app/music/component/TouchHelper;)V

    goto/16 :goto_10

    .line 221
    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/pantech/app/music/component/TouchHelper;->touchCnt:I

    .line 61
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->isActionMove:Z

    .line 62
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreTouchAction:Z

    .line 63
    iput-boolean v0, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreSelectAction:Z

    .line 64
    return-void
.end method

.method public setAvailableDClick(Z)V
    .registers 2
    .param p1, "useDClick"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/pantech/app/music/component/TouchHelper;->availableDClick:Z

    .line 57
    return-void
.end method

.method public setIgnoreSelect(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreSelectAction:Z

    .line 72
    return-void
.end method

.method public setIgnoreTouch(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/pantech/app/music/component/TouchHelper;->ignoreTouchAction:Z

    .line 68
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_19

    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mPrevEvent:Landroid/view/MotionEvent;

    .line 87
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/component/TouchHelper;->mCurrEvent:Landroid/view/MotionEvent;

    .line 89
    :cond_19
    return-void
.end method
