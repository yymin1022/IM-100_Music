.class public Lcom/pantech/app/music/assist/MusicTouchControl;
.super Ljava/lang/Object;
.source "MusicTouchControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;
    }
.end annotation


# static fields
.field private static final mDCLICK_TIMEOUT:I = 0xfa

.field private static final mREVISION_VALUE:I = 0xa

.field private static final mVELOCITY_VALUE:I = 0x1e


# instance fields
.field private availableDClick:Z

.field private clicktime:[J

.field public distance:D

.field private firstRawX:F

.field private firstRawY:F

.field private ignoreSelectAction:Z

.field private ignoreTouchAction:Z

.field private isActionMove:Z

.field private isClicked:Z

.field private mClickAction:Ljava/lang/Runnable;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field public theta:D

.field private touchCnt:I

.field private touchX:[F

.field private touchY:[F

.field public velocity:D


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isClicked:Z

    .line 35
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    .line 36
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreTouchAction:Z

    .line 37
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreSelectAction:Z

    .line 38
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->availableDClick:Z

    .line 40
    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    .line 45
    iput v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->firstRawX:F

    iput v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->firstRawY:F

    .line 273
    new-instance v0, Lcom/pantech/app/music/assist/MusicTouchControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$1;-><init>(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mClickAction:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/pantech/app/music/assist/MusicTouchControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicTouchControl;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/assist/MusicTouchControl;)Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicTouchControl;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    return-object v0
.end method

.method private calibration(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    if-nez v0, :cond_e

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_e

    .line 73
    const/4 v0, 0x1

    .line 75
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

    .line 162
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 163
    .local v0, "spanX":D
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 165
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
    .line 152
    iget v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_9

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    .line 155
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    aput p1, v0, v1

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    aput p2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    iget v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    aput-wide p3, v0, v1

    .line 158
    iget v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    .line 159
    return-void
.end method


# virtual methods
.method public calculate()V
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    .line 169
    iput-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->distance:D

    .line 170
    iput-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->velocity:D

    .line 172
    iget v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    if-nez v9, :cond_b

    .line 190
    :goto_a
    return-void

    .line 175
    :cond_b
    iget v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v9, -0x1

    .line 176
    .local v3, "lastIdx":I
    const/4 v8, 0x0

    .line 177
    .local v8, "startIdx":I
    move v2, v3

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_23

    .line 178
    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    aget-wide v10, v9, v3

    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    aget-wide v12, v9, v2

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x32

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5b

    .line 179
    move v8, v2

    .line 183
    :cond_23
    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    aget-wide v10, v9, v3

    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->clicktime:[J

    aget-wide v12, v9, v8

    sub-long/2addr v10, v12

    long-to-double v0, v10

    .line 184
    .local v0, "elapsedtime":D
    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    aget v9, v9, v3

    iget-object v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    aget v10, v10, v8

    sub-float/2addr v9, v10

    float-to-double v4, v9

    .line 185
    .local v4, "spanX":D
    iget-object v9, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    aget v9, v9, v3

    iget-object v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    aget v10, v10, v8

    sub-float/2addr v9, v10

    float-to-double v6, v9

    .line 187
    .local v6, "spanY":D
    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->distance:D

    .line 188
    iget-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->distance:D

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    div-double/2addr v10, v0

    iput-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->velocity:D

    .line 189
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->theta:D

    goto :goto_a

    .line 177
    .end local v0    # "elapsedtime":D
    .end local v4    # "spanX":D
    .end local v6    # "spanY":D
    :cond_5b
    add-int/lit8 v2, v2, -0x1

    goto :goto_11
.end method

.method public getSpanX()I
    .registers 5

    .prologue
    .line 109
    iget v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_8

    .line 110
    const/4 v0, 0x0

    .line 119
    :cond_7
    :goto_7
    return v0

    .line 112
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 113
    .local v0, "spanX":I
    if-nez v0, :cond_7

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    .line 115
    const/4 v0, 0x1

    goto :goto_7

    .line 116
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchX:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 117
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getSpanY()I
    .registers 5

    .prologue
    .line 123
    iget v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_8

    .line 124
    const/4 v0, 0x0

    .line 133
    :cond_7
    :goto_7
    return v0

    .line 126
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 127
    .local v0, "spanY":I
    if-nez v0, :cond_7

    .line 128
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_32

    .line 129
    const/4 v0, 0x1

    goto :goto_7

    .line 130
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchY:[F

    iget v3, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 131
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getTheta()D
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->theta:D

    return-wide v0
.end method

.method public getVelocity()I
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->velocity:D

    double-to-int v0, v0

    return v0
.end method

.method public getVelocityX()I
    .registers 5

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->velocity:D

    iget-wide v2, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->theta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isMoveAction()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    return v0
.end method

.method public isNotSelectAction()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isPrevCurrSameArea()Z
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 145
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2e

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2e

    .line 147
    const/4 v0, 0x1

    .line 148
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/assist/MusicTouchControl;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_ce

    .line 269
    :cond_10
    :goto_10
    return v4

    .line 219
    :pswitch_11
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicTouchControl;->reset()V

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->firstRawX:F

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->firstRawY:F

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/assist/MusicTouchControl;->push(FFJ)V

    .line 223
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchBegin(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto :goto_10

    .line 227
    :pswitch_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/assist/MusicTouchControl;->push(FFJ)V

    .line 229
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreTouchAction:Z

    if-nez v0, :cond_10

    .line 231
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicTouchControl;->getSpanX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/assist/MusicTouchControl;->calibration(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 234
    iput-boolean v4, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    .line 235
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchMove(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto :goto_10

    .line 239
    :pswitch_5a
    iput-boolean v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/assist/MusicTouchControl;->push(FFJ)V

    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicTouchControl;->calculate()V

    .line 242
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchEnd(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    .line 244
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreTouchAction:Z

    if-nez v0, :cond_10

    .line 247
    iget-wide v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_c6

    .line 248
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicTouchControl;->getDistance()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-gtz v0, :cond_8d

    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreSelectAction:Z

    if-eqz v0, :cond_94

    .line 249
    :cond_8d
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchNone(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto/16 :goto_10

    .line 251
    :cond_94
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->availableDClick:Z

    if-nez v0, :cond_9f

    .line 252
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchSelect(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto/16 :goto_10

    .line 254
    :cond_9f
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isClicked:Z

    if-eqz v0, :cond_b9

    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicTouchControl;->isPrevCurrSameArea()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 255
    iput-boolean v5, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isClicked:Z

    .line 256
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mClickAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchDClick(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto/16 :goto_10

    .line 260
    :cond_b9
    iput-boolean v4, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isClicked:Z

    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mClickAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    .line 265
    :cond_c6
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mListener:Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchFling(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    goto/16 :goto_10

    .line 216
    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_11
        :pswitch_5a
        :pswitch_35
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->touchCnt:I

    .line 58
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->isActionMove:Z

    .line 59
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreTouchAction:Z

    .line 60
    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreSelectAction:Z

    .line 61
    return-void
.end method

.method public setAvailableDClick(Z)V
    .registers 2
    .param p1, "useDClick"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->availableDClick:Z

    .line 54
    return-void
.end method

.method public setIgnoreSelect(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreSelectAction:Z

    .line 69
    return-void
.end method

.method public setIgnoreTouch(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->ignoreTouchAction:Z

    .line 65
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_19

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mPrevEvent:Landroid/view/MotionEvent;

    .line 84
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl;->mCurrEvent:Landroid/view/MotionEvent;

    .line 86
    :cond_19
    return-void
.end method
