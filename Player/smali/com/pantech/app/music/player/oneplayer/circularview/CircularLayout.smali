.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
.super Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;
.source "CircularLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;,
        Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;,
        Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FLAG_WHEEL_KEY_DOWN:I = 0x2

.field public static final FLAG_WHEEL_KEY_NONE:I = 0x0

.field public static final FLAG_WHEEL_KEY_UP:I = 0x1

.field public static final MSG_KEY_PLAY:I = 0x1

.field public static final MSG_WHEEL_KEY_UPDATE:I = 0x2


# instance fields
.field private DEGREE_PER_1SPIN:I

.field private SPIN_COUNT:I

.field public final TAG:Ljava/lang/String;

.field private draggedAngle:F

.field first_degree:F

.field flagDisplayTextDynamically:Z

.field flagIsSmoothKeySpin:Z

.field private forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

.field private isKeyEventDraw:Z

.field private isLockedSpinDown:Z

.field private isLockedSpinUp:Z

.field private isSpinFull:Z

.field private isWheelKeyLongPress:Z

.field keyDownLock:Z

.field keyUpLock:Z

.field private lastTouchAngle:F

.field private lastTouchX:F

.field private lastTouchY:F

.field last_degree:F

.field private mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

.field private mAngularVelocity:F

.field private mBackground:Landroid/graphics/drawable/RippleDrawable;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field mFirstDownTouchAngle:F

.field private mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

.field private mInsideStrokeColor:I

.field private mLastUpdateTime:J

.field private mPositionOfPlayable:I

.field private mPressed:Z

.field private mPressedViewIndex:I

.field mTranslationX:F

.field mTranslationY:F

.field private mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

.field private mWheelKeyState:I

.field private mWheelRotateAcceleValue:I

.field measure_Count:F

.field private oldWheelSeekPosition:I

.field private orientation:I

.field private playPosition:I

.field private playState:Z

.field playableDegree:F

.field private prevAngle:F

.field private radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

.field private sIsDragging:Z

.field private sIsReqVTimeUpdate:Z

.field private sIsUpdateForAlbumart:Z

.field private sItemDistanceSquare:F

.field private spinCount:I

.field private touchDragLock:Z

.field private updatePlayPosition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v0, "CircularLayout"

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->TAG:Ljava/lang/String;

    .line 61
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationX:F

    .line 62
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationY:F

    .line 63
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    .line 66
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagDisplayTextDynamically:Z

    .line 70
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    .line 71
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    .line 72
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    .line 73
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    .line 75
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    .line 80
    const v0, 0x46fd2000    # 32400.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sItemDistanceSquare:F

    .line 83
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    .line 84
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsReqVTimeUpdate:Z

    .line 85
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsUpdateForAlbumart:Z

    .line 86
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    .line 87
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 89
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 90
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 96
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    .line 97
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    .line 98
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 99
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    .line 100
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 105
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    .line 108
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 111
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    .line 117
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 119
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 122
    const v0, 0x33ffffff

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mInsideStrokeColor:I

    .line 128
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    .line 129
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 136
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 138
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    .line 139
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    .line 144
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->DEGREE_PER_1SPIN:I

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->SPIN_COUNT:I

    .line 149
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPress:Z

    .line 150
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isSpinFull:Z

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const-string v0, "CircularLayout"

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->TAG:Ljava/lang/String;

    .line 61
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationX:F

    .line 62
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationY:F

    .line 63
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    .line 66
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagDisplayTextDynamically:Z

    .line 70
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    .line 71
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    .line 72
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    .line 73
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    .line 75
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    .line 80
    const v0, 0x46fd2000    # 32400.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sItemDistanceSquare:F

    .line 83
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    .line 84
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsReqVTimeUpdate:Z

    .line 85
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsUpdateForAlbumart:Z

    .line 86
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    .line 87
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 89
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 90
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 96
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    .line 97
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    .line 98
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 99
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    .line 100
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 105
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    .line 108
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 111
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    .line 117
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 119
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 122
    const v0, 0x33ffffff

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mInsideStrokeColor:I

    .line 128
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    .line 129
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 136
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 138
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    .line 139
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    .line 144
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->DEGREE_PER_1SPIN:I

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->SPIN_COUNT:I

    .line 149
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPress:Z

    .line 150
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isSpinFull:Z

    .line 160
    invoke-direct {p0, p1, p2, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-string v0, "CircularLayout"

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->TAG:Ljava/lang/String;

    .line 61
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationX:F

    .line 62
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationY:F

    .line 63
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    .line 66
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    .line 68
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagDisplayTextDynamically:Z

    .line 70
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    .line 71
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    .line 72
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    .line 73
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    .line 75
    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    .line 80
    const v0, 0x46fd2000    # 32400.0f

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sItemDistanceSquare:F

    .line 83
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    .line 84
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsReqVTimeUpdate:Z

    .line 85
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsUpdateForAlbumart:Z

    .line 86
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    .line 87
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 89
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 90
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .line 96
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    .line 97
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    .line 98
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 99
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    .line 100
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 105
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    .line 108
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 111
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    .line 117
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 119
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 122
    const v0, 0x33ffffff

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mInsideStrokeColor:I

    .line 128
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    .line 129
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 136
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 138
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    .line 139
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    .line 144
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->DEGREE_PER_1SPIN:I

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->SPIN_COUNT:I

    .line 149
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPress:Z

    .line 150
    iput-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isSpinFull:Z

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->handleControl(Landroid/os/Message;)V

    return-void
.end method

.method private calculateDefferenceTime()V
    .registers 7

    .prologue
    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 484
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mLastUpdateTime:J

    sub-long v2, v0, v4

    .line 485
    .local v2, "dt":J
    iput-wide v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mLastUpdateTime:J

    .line 486
    long-to-float v4, v2

    invoke-direct {p0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->update(F)V

    .line 487
    return-void
.end method

.method private checkPlayableDegree(F)Z
    .registers 7
    .param p1, "degree"    # F

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 1171
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1172
    .local v0, "absDegree":F
    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v0, v3

    .line 1175
    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    sub-float v2, v3, v4

    .line 1176
    .local v2, "min":F
    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    add-float v1, v3, v4

    .line 1177
    .local v1, "max":F
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1b

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_1b

    const/4 v3, 0x1

    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private checkTouchDraggedAngleisLock()Z
    .registers 4

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "result":Z
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    .line 224
    const-string v1, "CircularLayout"

    const-string v2, "First touch dragged angle is locked."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 226
    const/4 v0, 0x1

    .line 233
    :cond_15
    :goto_15
    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 234
    return v0

    .line 227
    :cond_18
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    .line 229
    const-string v1, "CircularLayout"

    const-string v2, "Last touch dragged angle is locked."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    iput v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 231
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private checkTouchInItem(FF)I
    .registers 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 422
    const/4 v6, 0x0

    .line 423
    .local v6, "viewindex":I
    const/4 v1, 0x0

    .line 424
    .local v1, "isGetRect":Z
    const/4 v0, 0x0

    .line 425
    .local v0, "isFind":Z
    iget v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationX:F

    invoke-direct {p0, v7}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getPixelFromDip(F)I

    move-result v2

    .line 426
    .local v2, "offsetX":I
    iget v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationY:F

    invoke-direct {p0, v7}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getPixelFromDip(F)I

    move-result v3

    .line 429
    .local v3, "offsetY":I
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2f

    .line 430
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 431
    .local v5, "viewgroup":Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 435
    if-eqz v1, :cond_32

    .line 436
    float-to-int v7, p1

    add-int/2addr v7, v2

    float-to-int v8, p2

    add-int/2addr v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 437
    if-eqz v0, :cond_32

    .line 443
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "viewgroup":Landroid/view/View;
    :cond_2f
    if-eqz v0, :cond_35

    .line 447
    .end local v6    # "viewindex":I
    :goto_31
    return v6

    .line 429
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "viewgroup":Landroid/view/View;
    .restart local v6    # "viewindex":I
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 447
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "viewgroup":Landroid/view/View;
    :cond_35
    const/4 v6, -0x1

    goto :goto_31
.end method

.method private checkWheelKeyLockOrNot(FIF)V
    .registers 11
    .param p1, "degree"    # F
    .param p2, "itemIndex"    # I
    .param p3, "angleoffset"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 822
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v2

    .line 823
    .local v2, "itemCount":I
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 824
    .local v3, "lastItemPosition":I
    const/4 v1, 0x0

    .line 850
    .local v1, "firstItemPosition":I
    const/high16 v0, 0x41700000    # 15.0f

    .line 851
    .local v0, "extraAngle":F
    if-ne p2, v1, :cond_29

    .line 852
    iput-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    .line 853
    iput-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    .line 855
    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    sub-float/2addr v4, v0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_29

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    add-float/2addr v4, v0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_29

    .line 856
    iput-boolean v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    .line 860
    :cond_29
    if-ne p2, v3, :cond_3b

    .line 861
    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    sub-float/2addr v4, v0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3b

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    add-float/2addr v4, v0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3b

    .line 862
    iput-boolean v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    .line 866
    :cond_3b
    iget-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyUpLock:Z

    iget-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->keyDownLock:Z

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setWheelKeyLocked(ZZ)V

    .line 869
    return-void
.end method

.method private getPixelFromDip(F)I
    .registers 4
    .param p1, "dip"    # F

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 538
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    return v1
.end method

.method private getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F
    .registers 8
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAngleOffset()F

    move-result v0

    .line 612
    .local v0, "angleoffset":F
    const/high16 v2, 0x43340000    # 180.0f

    int-to-float v3, p2

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float v1, v2, v0

    .line 614
    .local v1, "calculateAngle":F
    const-string v2, "CircularLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get start degree of position from = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], pos = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], return = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return v1
.end method

.method private getVelocity()V
    .registers 12

    .prologue
    .line 452
    const/high16 v0, 0x41b00000    # 22.0f

    .line 453
    .local v0, "ANGULAR_VEL_COEFFICIENT":F
    const v1, 0x3e99999a    # 0.3f

    .line 455
    .local v1, "MAX_ANGULAR_VEL":F
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 456
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 457
    .local v5, "vX":F
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 459
    .local v6, "vY":F
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-virtual {v7, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->set(FF)V

    .line 460
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    iget v8, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    iget v9, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchX:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    iget v10, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchY:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->set(FF)V

    .line 461
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->forceVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    iget-object v8, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->radiusVector:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->crossProduct(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;)F

    move-result v4

    .line 467
    .local v4, "torque":F
    iget v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sItemDistanceSquare:F

    div-float v2, v4, v7

    .line 469
    .local v2, "angularAccel":F
    const/high16 v7, 0x41b00000    # 22.0f

    mul-float v3, v2, v7

    .line 471
    .local v3, "angularVel":F
    const v7, 0x3e99999a    # 0.3f

    cmpl-float v7, v3, v7

    if-lez v7, :cond_50

    .line 472
    const v3, 0x3e99999a    # 0.3f

    .line 476
    :cond_45
    :goto_45
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 478
    iget-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 479
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 480
    return-void

    .line 473
    :cond_50
    const v7, -0x41666666    # -0.3f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_45

    .line 474
    const v3, -0x41666666    # -0.3f

    goto :goto_45
.end method

.method private handleControl(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x2

    .line 1184
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_b

    .line 1186
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->moveToCorrectPosition()V

    .line 1218
    :cond_a
    :goto_a
    return-void

    .line 1187
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_a

    .line 1189
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->SPIN_COUNT:I

    if-lt v0, v1, :cond_32

    .line 1190
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->removeMessages(I)V

    .line 1191
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;->removeMessages(I)V

    .line 1192
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mHandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$ControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1193
    const-string v0, "CircularLayout"

    const-string v1, "spin stop"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iput-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 1195
    iput v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    goto :goto_a

    .line 1197
    :cond_32
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    if-nez v0, :cond_3a

    .line 1198
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    .line 1202
    :cond_3a
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    if-ne v0, v4, :cond_67

    .line 1203
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->DEGREE_PER_1SPIN:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 1208
    :cond_46
    :goto_46
    const-string v0, "KEY_UPDATE"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->removeMessages(I)V

    .line 1210
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->sendEmptyMessage(I)Z

    .line 1212
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagDisplayTextDynamically:Z

    if-eqz v0, :cond_60

    .line 1213
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    invoke-interface {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onWheelRotateChanged(I)V

    .line 1215
    :cond_60
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->spinCount:I

    goto :goto_a

    .line 1204
    :cond_67
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    if-ne v0, v2, :cond_46

    .line 1205
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->DEGREE_PER_1SPIN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    goto :goto_46
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/R$styleable;->CircularLayout:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    .local v0, "attr":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void
.end method

.method private initialRotateVariable(FF)V
    .registers 5
    .param p1, "downx"    # F
    .param p2, "downy"    # F

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    .line 519
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    invoke-static {v0, v1, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->positionToDegree(FFFF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 521
    return-void
.end method

.method private moveToCorrectPosition()V
    .registers 6

    .prologue
    .line 401
    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    sub-float v1, v2, v3

    .line 402
    .local v1, "diffAngle":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_94

    const/16 v2, 0xf

    :goto_d
    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 403
    .local v0, "count":I
    const-string v2, "CircularLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToCorrectPosition [before] dragged angle :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 406
    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_98

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 409
    :cond_4d
    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToCorrectPosition - change position count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    .line 411
    const-string v2, "CircularLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToCorrectPosition [after] dragged angle :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prevAngle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", diffAngle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void

    .line 402
    .end local v0    # "count":I
    :cond_94
    const/16 v2, -0xf

    goto/16 :goto_d

    .line 407
    .restart local v0    # "count":I
    :cond_98
    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    goto :goto_4d
.end method

.method private onTouchRotating()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onTouchRotateChanged(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    .line 534
    return-void
.end method

.method private setAlbumArt(Landroid/view/View;J)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "albumID"    # J

    .prologue
    .line 557
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_7

    .line 588
    .end local p1    # "view":Landroid/view/View;
    :cond_6
    :goto_6
    return-void

    .line 560
    .restart local p1    # "view":Landroid/view/View;
    :cond_7
    new-instance v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 561
    .local v3, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iput-wide p2, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 562
    iput-object p1, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 563
    const/4 v4, 0x0

    iput v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 565
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v2

    .line 566
    .local v2, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v4, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$1;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;J)V

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-nez v1, :cond_6

    .line 583
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020055

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 584
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_6

    .line 585
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    new-instance v4, Lcom/pantech/app/music/player/oneplayer/circularview/CircleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method private setItems(Ljava/lang/CharSequence;)V
    .registers 22
    .param p1, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 703
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setItems "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v11, 0x0

    .line 706
    .local v11, "loggable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v5

    .line 707
    .local v5, "count":I
    const/high16 v16, 0x43b40000    # 360.0f

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v7, v16, v17

    .line 708
    .local v7, "degree_gap":F
    const/4 v13, 0x0

    .line 710
    .local v13, "viewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    if-nez v16, :cond_39

    .line 711
    const-string v16, "CircularLayout"

    const-string v17, "adapter is null."

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_38
    :goto_38
    return-void

    .line 714
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v16

    if-nez v16, :cond_4d

    .line 715
    const-string v16, "CircularLayout"

    const-string v17, "count is 0."

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 718
    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    move/from16 v16, v0

    if-gez v16, :cond_5d

    .line 719
    const-string v16, "CircularLayout"

    const-string v17, "play position < 0."

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 723
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v16

    add-int/lit8 v10, v16, -0x1

    .line 725
    .local v10, "lastItemPosition":I
    if-eqz v11, :cond_e9

    .line 726
    const-string v16, "CircularLayout"

    const-string v17, "===================+++++============================"

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v17, "CircularLayout"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "play song title:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " pos:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setItems: last:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v16, "CircularLayout"

    const-string v17, "===================-----============================"

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_e9
    if-eqz v11, :cond_f2

    .line 733
    const-string v16, "CircularLayout"

    const-string v17, "-=-=-=-=-=-=-=-=-=-=-=-=-=START=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_f2
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAngleOffset()F

    move-result v4

    .line 736
    .local v4, "angleoffset":F
    if-eqz v11, :cond_112

    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setItems: angleoffset:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_112
    const/4 v8, 0x0

    .local v8, "itemIndex":I
    :goto_113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_337

    .line 739
    int-to-float v0, v8

    move/from16 v16, v0

    mul-float v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    move/from16 v17, v0

    add-float v6, v16, v17

    .line 742
    .local v6, "degree":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->checkWheelKeyLockOrNot(FIF)V

    .line 744
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 745
    .local v14, "viewgroup":Landroid/widget/RelativeLayout;
    if-eqz v14, :cond_144

    .line 746
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 749
    :cond_144
    const/16 v16, 0x0

    add-float v16, v16, v4

    cmpg-float v16, v6, v16

    if-gez v16, :cond_191

    .line 750
    if-eqz v11, :cond_18e

    .line 751
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fault. degree < "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    add-float v18, v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ; itemIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " viewIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_18e
    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    .line 753
    :cond_191
    const/high16 v16, 0x43b40000    # 360.0f

    add-float v16, v16, v4

    cmpl-float v16, v6, v16

    if-ltz v16, :cond_21a

    .line 754
    if-eqz v11, :cond_1db

    .line 755
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fault. degree is over "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/high16 v18, 0x43b40000    # 360.0f

    add-float v18, v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ". itemIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " viewIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_1db
    move v15, v13

    .local v15, "vindex":I
    :goto_1dc
    if-ge v15, v5, :cond_337

    .line 758
    if-eqz v11, :cond_206

    .line 759
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Handling unnecessary views. vindex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_206
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 761
    .local v12, "tmpViewGroup":Landroid/widget/RelativeLayout;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v1, v12, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setPositionOfView(ILcom/pantech/app/music/list/MusicItemInfo;Landroid/widget/RelativeLayout;F)V

    .line 757
    add-int/lit8 v15, v15, 0x1

    goto :goto_1dc

    .line 766
    .end local v12    # "tmpViewGroup":Landroid/widget/RelativeLayout;
    .end local v15    # "vindex":I
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 768
    .local v9, "itemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v14, :cond_24e

    .line 769
    const v16, 0x7f100017

    move/from16 v0, v16

    invoke-virtual {v14, v0, v9}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 770
    const v16, 0x7f100016

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 771
    const v16, 0x7f100014

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 779
    :cond_24e
    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v16

    move/from16 v0, v16

    int-to-long v2, v0

    .line 780
    .local v2, "albumid":J
    if-eqz v14, :cond_269

    .line 781
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getCircleItemView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setAlbumArt(Landroid/view/View;J)V

    .line 782
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setPositionOfView(ILcom/pantech/app/music/list/MusicItemInfo;Landroid/widget/RelativeLayout;F)V

    .line 790
    :cond_269
    if-eqz v11, :cond_2ab

    .line 791
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "success. itemIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Title:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_2ab
    add-int/lit8 v13, v13, 0x1

    .line 794
    if-ne v8, v10, :cond_32c

    .line 795
    if-eqz v11, :cond_2e3

    .line 796
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fault. end of list. itemIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " viewIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_2e3
    move v15, v13

    .restart local v15    # "vindex":I
    :goto_2e4
    if-ge v15, v5, :cond_32c

    .line 798
    if-eqz v11, :cond_31a

    .line 799
    const-string v16, "CircularLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Hiding unnecessary views. itemIndex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " degree:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vindex:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_31a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 801
    .restart local v12    # "tmpViewGroup":Landroid/widget/RelativeLayout;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 797
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e4

    .line 804
    .end local v12    # "tmpViewGroup":Landroid/widget/RelativeLayout;
    .end local v15    # "vindex":I
    :cond_32c
    if-lt v13, v5, :cond_18e

    .line 805
    if-eqz v11, :cond_337

    const-string v16, "CircularLayout"

    const-string v17, "fault. viewIndex is over count."

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .end local v2    # "albumid":J
    .end local v6    # "degree":F
    .end local v9    # "itemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v14    # "viewgroup":Landroid/widget/RelativeLayout;
    :cond_337
    if-eqz v11, :cond_38

    .line 810
    const-string v16, "CircularLayout"

    const-string v17, "-=-=-=-=-=-=-=-=-=-=-=-=-=-=END=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

    invoke-static/range {v16 .. v17}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method

.method private setItems(Ljava/lang/CharSequence;J)V
    .registers 6
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "delayMillis"    # J

    .prologue
    .line 689
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;-><init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    return-void
.end method

.method private setPlayView(Ljava/lang/CharSequence;)V
    .registers 11
    .param p1, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 1079
    const-string v6, "CircularLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPlayView "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setPlayView Lock = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPressed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setPlayView Dragging = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/4 v0, 0x0

    .local v0, "in":I
    :goto_3f
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_92

    .line 1083
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1084
    .local v5, "viewgroup":Landroid/widget/RelativeLayout;
    const v6, 0x7f100015

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 1085
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_7f

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7f

    const/4 v1, 0x1

    .line 1087
    .local v1, "isplayview":Z
    :goto_5d
    const v6, 0x7f100016

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 1088
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_81

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1091
    .local v3, "pos":I
    :goto_6c
    if-eqz v1, :cond_7c

    .line 1095
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPressed()Z

    move-result v6

    if-nez v6, :cond_83

    iget-boolean v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    if-nez v6, :cond_83

    iget v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    if-eq v3, v6, :cond_83

    .line 1081
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1085
    .end local v1    # "isplayview":Z
    .end local v3    # "pos":I
    :cond_7f
    const/4 v1, 0x0

    goto :goto_5d

    .line 1088
    .restart local v1    # "isplayview":Z
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_81
    const/4 v3, -0x1

    goto :goto_6c

    .line 1100
    .end local v4    # "tag":Ljava/lang/Object;
    .restart local v3    # "pos":I
    :cond_83
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPressed()Z

    move-result v6

    if-nez v6, :cond_7c

    iget-boolean v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    if-nez v6, :cond_7c

    iget v6, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    if-ne v3, v6, :cond_7c

    goto :goto_7c

    .line 1106
    .end local v1    # "isplayview":Z
    .end local v3    # "pos":I
    .end local v5    # "viewgroup":Landroid/widget/RelativeLayout;
    :cond_92
    return-void
.end method

.method private setPositionOfView(ILcom/pantech/app/music/list/MusicItemInfo;Landroid/widget/RelativeLayout;F)V
    .registers 45
    .param p1, "itemIndex"    # I
    .param p2, "itemInfo"    # Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "viewgroup"    # Landroid/widget/RelativeLayout;
    .param p4, "degree"    # F

    .prologue
    .line 883
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getCircleItemView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v13

    .line 884
    .local v13, "itemView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStrokeView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v30

    .line 885
    .local v30, "strokeImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getCurtainView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v5

    .line 886
    .local v5, "bgView":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getRippleEffectView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v23

    .line 889
    .local v23, "rippleview":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 890
    .local v22, "res":Landroid/content/res/Resources;
    const/high16 v35, 0x43b40000    # 360.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v7, v35, v36

    .line 891
    .local v7, "degreegap":F
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 892
    .local v19, "outValue":Landroid/util/TypedValue;
    const v35, 0x7f0a00e7

    const/16 v36, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    move-object/from16 v2, v19

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 898
    const v35, 0x7f0a00e9

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v26, v0

    .line 899
    .local v26, "sBigDiameter":I
    const v35, 0x7f0a00e9

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v27, v0

    .line 900
    .local v27, "sSmallDiameter":I
    const v35, 0x7f0a00ea

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v28, v0

    .line 901
    .local v28, "sStrokeDiameter":I
    const v35, 0x7f0a00e8

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v25, v0

    .line 902
    .local v25, "sAlbumDiameter":I
    const v35, 0x7f0a00ed

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v29, v0

    .line 906
    .local v29, "sViewGroupDiameter":I
    invoke-virtual/range {p3 .. p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 907
    .local v34, "viewgroupLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 908
    .local v12, "itemLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout$LayoutParams;

    .line 909
    .local v31, "strokeViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 910
    .local v6, "bgViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout$LayoutParams;

    .line 912
    .local v24, "rippleviewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v35, 0x7f100052

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    const/16 v36, 0x4

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 913
    const v35, 0x7f100096

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    const/16 v36, 0x4

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAngleOffset()F

    move-result v35

    const/16 v36, 0x0

    cmpg-float v35, v35, v36

    if-gez v35, :cond_266

    .line 916
    const v35, 0x7f100052

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 922
    .local v32, "title":Landroid/widget/TextView;
    :goto_eb
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 926
    .local v4, "background":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual/range {v19 .. v19}, Landroid/util/TypedValue;->getFloat()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getPixelFromDip(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v8, v0

    .line 930
    .local v8, "dist":F
    const v35, 0x7f100016

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    .line 931
    .local v16, "obj":Ljava/lang/Object;
    if-eqz v16, :cond_275

    check-cast v16, Ljava/lang/Integer;

    .end local v16    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 936
    .local v20, "pos":I
    :goto_113
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->checkPlayableDegree(F)Z

    move-result v35

    if-eqz v35, :cond_27d

    .line 938
    move/from16 v0, v29

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v29

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 939
    move/from16 v0, v25

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 940
    move/from16 v0, v28

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v28

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 941
    move/from16 v0, v26

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v26

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 942
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 943
    if-eqz v4, :cond_15a

    .line 944
    div-int/lit8 v35, v26, 0x2

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 948
    :cond_15a
    const v35, 0x7f100015

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    move-object/from16 v0, p3

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->oldWheelSeekPosition:I

    .line 951
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    .line 954
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_279

    const/16 v35, 0x4

    :goto_19d
    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 961
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mInsideStrokeColor:I

    move/from16 v35, v0

    sget-object v36, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1003
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1c0
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v21, v0

    .line 1004
    .local v21, "radian":F
    float-to-double v0, v8

    move-wide/from16 v36, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v10, v0

    .line 1005
    .local v10, "dx":F
    float-to-double v0, v8

    move-wide/from16 v36, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v11, v0

    .line 1009
    .local v11, "dy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    move/from16 v35, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    add-float v15, v35, v10

    .line 1010
    .local v15, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    move/from16 v35, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    add-float v33, v35, v11

    .line 1013
    .local v33, "top":F
    float-to-int v0, v15

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1014
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1018
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1032
    .local v14, "itemopaque":F
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAngleOffset()F

    move-result v18

    .line 1033
    .local v18, "offset":F
    const/high16 v35, 0x43340000    # 180.0f

    add-float v35, v35, v18

    sub-float v35, v35, p4

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    div-float v35, v35, v7

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1037
    .local v17, "off":I
    packed-switch v17, :pswitch_data_2ea

    .line 1063
    const/4 v14, 0x0

    .line 1069
    :goto_262
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1071
    return-void

    .line 918
    .end local v4    # "background":Landroid/graphics/drawable/RippleDrawable;
    .end local v8    # "dist":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v14    # "itemopaque":F
    .end local v15    # "left":F
    .end local v17    # "off":I
    .end local v18    # "offset":F
    .end local v20    # "pos":I
    .end local v21    # "radian":F
    .end local v32    # "title":Landroid/widget/TextView;
    .end local v33    # "top":F
    :cond_266
    const v35, 0x7f100096

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .restart local v32    # "title":Landroid/widget/TextView;
    goto/16 :goto_eb

    .line 931
    .restart local v4    # "background":Landroid/graphics/drawable/RippleDrawable;
    .restart local v8    # "dist":F
    .restart local v16    # "obj":Ljava/lang/Object;
    :cond_275
    const/16 v20, -0x1

    goto/16 :goto_113

    .line 955
    .end local v16    # "obj":Ljava/lang/Object;
    .restart local v20    # "pos":I
    :cond_279
    const/16 v35, 0x0

    goto/16 :goto_19d

    .line 966
    :cond_27d
    move/from16 v0, v27

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v27

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 967
    move/from16 v0, v27

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v27

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 968
    move/from16 v0, v27

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v27

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 969
    move/from16 v0, v27

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v27

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 970
    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 971
    if-eqz v4, :cond_2ba

    .line 972
    div-int/lit8 v35, v27, 0x2

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 975
    :cond_2ba
    const v35, 0x7f100015

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    move-object/from16 v0, p3

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 977
    const/16 v35, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c0

    .line 1042
    .restart local v10    # "dx":F
    .restart local v11    # "dy":F
    .restart local v14    # "itemopaque":F
    .restart local v15    # "left":F
    .restart local v17    # "off":I
    .restart local v18    # "offset":F
    .restart local v21    # "radian":F
    .restart local v33    # "top":F
    :pswitch_2d7
    const/4 v14, 0x0

    .line 1044
    goto :goto_262

    .line 1047
    :pswitch_2d9
    const v14, 0x3ecccccd    # 0.4f

    .line 1049
    goto :goto_262

    .line 1052
    :pswitch_2dd
    const v14, 0x3f19999a    # 0.6f

    .line 1054
    goto :goto_262

    .line 1057
    :pswitch_2e1
    const v14, 0x3f666666    # 0.9f

    .line 1058
    goto/16 :goto_262

    .line 1060
    :pswitch_2e6
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1061
    goto/16 :goto_262

    .line 1037
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_2e6
        :pswitch_2e1
        :pswitch_2dd
        :pswitch_2d9
        :pswitch_2d7
        :pswitch_2d7
        :pswitch_2d7
    .end packed-switch
.end method

.method private setWheelKeyLocked(ZZ)V
    .registers 3
    .param p1, "lockedUp"    # Z
    .param p2, "lockedDown"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    .line 817
    iput-boolean p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    .line 818
    return-void
.end method

.method private startTouchRotating()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onStartTouchRotate(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    .line 525
    return-void
.end method

.method private stopTouchRotating()V
    .registers 2

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    .line 529
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onStopTouchRotate(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V

    .line 530
    return-void
.end method

.method private update(F)V
    .registers 11
    .param p1, "deltaTime"    # F

    .prologue
    const v8, 0x3b378034    # 0.0028f

    const/4 v7, 0x0

    .line 490
    const v1, 0x3c75c28f    # 0.015f

    .line 491
    .local v1, "VELOCITY_FRICTION_COEFFICIENT":F
    const v0, 0x3b378034    # 0.0028f

    .line 492
    .local v0, "CONSTANT_FRICTION_COEFFICIENT":F
    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 493
    .local v3, "vel":F
    mul-float v4, v3, v3

    .line 494
    .local v4, "velSqr":F
    cmpl-float v5, v3, v7

    if-lez v5, :cond_37

    .line 495
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    const v6, 0x3c75c28f    # 0.015f

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 496
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_24

    .line 497
    iput v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 506
    :cond_24
    :goto_24
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_4e

    .line 507
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    mul-float v2, v5, p1

    .line 508
    .local v2, "deltaTheta":F
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    add-float/2addr v5, v2

    iput v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 509
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->requestLayout()V

    .line 515
    .end local v2    # "deltaTheta":F
    :goto_36
    return-void

    .line 499
    :cond_37
    cmpg-float v5, v3, v7

    if-gez v5, :cond_24

    .line 500
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    const v6, -0x438a3d71    # -0.015f

    mul-float/2addr v6, v4

    sub-float/2addr v6, v8

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 501
    iget v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_24

    .line 502
    iput v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    goto :goto_24

    .line 511
    :cond_4e
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsReqVTimeUpdate:Z

    .line 512
    iput v7, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAngularVelocity:F

    .line 513
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->requestLayout()V

    goto :goto_36
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1111
    invoke-super {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getAdapter()Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    return-object v0
.end method

.method public getAngleOffset()F
    .registers 3

    .prologue
    .line 599
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method public getAnimImageView(Landroid/view/ViewGroup;)Lcom/pantech/app/music/list/component/view/AnimImageView;
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/AnimImageView;

    return-object v0
.end method

.method public getCircleItemView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCurtainView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1275
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRippleEffectView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1285
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStrokeView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public isWheelKeyLongPressed()Z
    .registers 2

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPress:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 200
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    if-eqz v0, :cond_3a

    .line 216
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->sendEmptyMessage(I)Z

    .line 218
    :cond_3a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 192
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->onLayout(ZIIII)V

    .line 194
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    .line 195
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    .line 196
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->onMeasure(II)V

    .line 178
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->orientation:I

    .line 181
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    .line 182
    const-string v0, "onMeasure"

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->last_degree:F

    .line 183
    const-string v0, "onMeasure"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->first_degree:F

    .line 185
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    .line 187
    :cond_33
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 241
    .local v5, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 243
    .local v6, "eventY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_34

    .line 244
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 249
    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mLastUpdateTime:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_2f4

    .line 396
    :cond_31
    :goto_31
    const/16 v17, 0x1

    :goto_33
    return v17

    .line 246
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1a

    .line 253
    :pswitch_3e
    const-string v17, "CircularLayout"

    const-string v18, "ACTION_DOWN"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->prevAngle:F

    .line 258
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    move/from16 v17, v0

    if-nez v17, :cond_c2

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->checkTouchInItem(FF)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 265
    const-string v17, "CircularLayout"

    const-string v18, "Press down"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    if-ltz v17, :cond_fa

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 268
    .local v13, "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getRippleEffectView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v11

    .line 269
    .local v11, "rippleEffectView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 271
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 272
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 278
    .end local v11    # "rippleEffectView":Landroid/widget/ImageView;
    .end local v13    # "viewGroup":Landroid/view/ViewGroup;
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_d2

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->initialRotateVariable(FF)V

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->startTouchRotating()V

    .line 283
    :cond_d2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->positionToDegree(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mFirstDownTouchAngle:F

    goto/16 :goto_31

    .line 274
    :cond_fa
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    goto :goto_c2

    .line 287
    :pswitch_103
    const-string v17, "CircularLayout"

    const-string v18, "ACTION_MOVE"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    move/from16 v17, v0

    if-nez v17, :cond_31

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->checkTouchDraggedAngleisLock()Z

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12a

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 299
    :cond_12a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    if-ltz v17, :cond_16e

    .line 301
    const-string v17, "CircularLayout"

    const-string v18, "Press Move"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 303
    .restart local v13    # "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getRippleEffectView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v11

    .line 304
    .restart local v11    # "rippleEffectView":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 305
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 306
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 309
    .end local v11    # "rippleEffectView":Landroid/widget/ImageView;
    .end local v13    # "viewGroup":Landroid/view/ViewGroup;
    :cond_16e
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->onTouchRotating()V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_192

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->initialRotateVariable(FF)V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->startTouchRotating()V

    .line 316
    const/16 v17, 0x1

    goto/16 :goto_33

    .line 319
    :cond_192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->positionToDegree(FFFF)F

    move-result v12

    .line 320
    .local v12, "touchAngle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->shortestAngle(FF)F

    move-result v4

    .line 321
    .local v4, "dragAngle":F
    move-object/from16 v0, p0

    iput v12, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchAngle:F

    .line 323
    move-object/from16 v0, p0

    iput v5, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchX:F

    .line 324
    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->lastTouchY:F

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getVelocity()V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    move/from16 v17, v0

    if-nez v17, :cond_1d7

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    move/from16 v17, v0

    add-float v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 331
    :cond_1d7
    const-string v17, "ACTION_MOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    .line 333
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->sIsReqVTimeUpdate:Z

    goto/16 :goto_31

    .line 338
    .end local v4    # "dragAngle":F
    .end local v12    # "touchAngle":F
    :pswitch_1ea
    const-string v17, "CircularLayout"

    const-string v18, "ACTION_UP"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_23d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    if-ltz v17, :cond_23d

    .line 343
    const-string v17, "CircularLayout"

    const-string v18, "Press Up"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 345
    .restart local v13    # "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getRippleEffectView(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v11

    .line 346
    .restart local v11    # "rippleEffectView":Landroid/widget/ImageView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 347
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressed:Z

    .line 348
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPressedViewIndex:I

    .line 351
    .end local v11    # "rippleEffectView":Landroid/widget/ImageView;
    .end local v13    # "viewGroup":Landroid/view/ViewGroup;
    :cond_23d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mCenterY:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->positionToDegree(FFFF)F

    move-result v12

    .line 352
    .restart local v12    # "touchAngle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mFirstDownTouchAngle:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->shortestAngle(FF)F

    move-result v4

    .line 356
    .restart local v4    # "dragAngle":F
    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_2b1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_2b1

    .line 357
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->checkTouchInItem(FF)I

    move-result v16

    .line 358
    .local v16, "viewindex":I
    if-ltz v16, :cond_2a9

    .line 359
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 360
    .local v15, "viewgroup":Landroid/view/View;
    const v17, 0x7f100016

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    .line 361
    .local v10, "objPos":Ljava/lang/Object;
    if-eqz v10, :cond_2a9

    .line 362
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "objPos":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 363
    .local v8, "itempos":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onCatchPlayPosition(II)V

    .line 386
    .end local v8    # "itempos":I
    .end local v15    # "viewgroup":Landroid/view/View;
    .end local v16    # "viewindex":I
    :cond_2a9
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->moveToCorrectPosition()V

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->stopTouchRotating()V

    goto/16 :goto_31

    .line 370
    :cond_2b1
    const/4 v14, 0x0

    .local v14, "viewIndex":I
    :goto_2b2
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_2a9

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 373
    .restart local v15    # "viewgroup":Landroid/view/View;
    const v17, 0x7f100015

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 374
    .local v9, "obj":Ljava/lang/Object;
    if-eqz v9, :cond_2e3

    .line 375
    check-cast v9, Ljava/lang/Boolean;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 376
    .local v7, "isplay":Z
    if-eqz v7, :cond_2e3

    .line 377
    const v17, 0x7f100016

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    .line 378
    .restart local v10    # "objPos":Ljava/lang/Object;
    if-eqz v10, :cond_2e3

    .line 379
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "objPos":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 370
    .end local v7    # "isplay":Z
    :cond_2e3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2b2

    .line 391
    .end local v4    # "dragAngle":F
    .end local v12    # "touchAngle":F
    .end local v14    # "viewIndex":I
    .end local v15    # "viewgroup":Landroid/view/View;
    :pswitch_2e6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->touchDragLock:Z

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->stopTouchRotating()V

    goto/16 :goto_31

    .line 251
    nop

    :pswitch_data_2f4
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_1ea
        :pswitch_103
        :pswitch_2e6
    .end packed-switch
.end method

.method public onWheelKeyPressDown(Z)V
    .registers 5
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1239
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWheelKeyPressDown() long press = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setIsWheelKeyLongPress(Z)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .line 1241
    return-void
.end method

.method public onWheelKeyPressUp(Z)V
    .registers 5
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1227
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWheelKeyPressUp() long press = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setIsWheelKeyLongPress(Z)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .line 1229
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;->onCatchPlayPosition(II)V

    .line 1230
    return-void
.end method

.method public onWheelKeySpinDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x2

    .line 1141
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock spin down = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinDown:Z

    if-nez v0, :cond_38

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 1145
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    if-eqz v0, :cond_3d

    .line 1146
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    .line 1150
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->sendEmptyMessage(I)Z

    .line 1160
    :cond_38
    :goto_38
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1153
    :cond_3d
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 1154
    const-string v0, "onWheelKeySpinDown"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method public onWheelKeySpinUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1116
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock spin up = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isLockedSpinUp:Z

    if-nez v0, :cond_38

    .line 1118
    iput-boolean v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isKeyEventDraw:Z

    .line 1120
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->flagIsSmoothKeySpin:Z

    if-eqz v0, :cond_3d

    .line 1121
    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelKeyState:I

    .line 1125
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->removeMessages(I)V

    .line 1126
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mUpdateUIhandler:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->sendEmptyMessage(I)Z

    .line 1136
    :cond_38
    :goto_38
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1128
    :cond_3d
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelRotateAcceleValue:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 1129
    const-string v0, "onWheelKeySpinUp"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method public setAdapter(Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;)V
    .registers 2
    .param p1, "mAdapter"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    .line 548
    return-void
.end method

.method public setAlbumInsideStrokeColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 1289
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mInsideStrokeColor:I

    .line 1290
    return-void
.end method

.method public setIsWheelKeyLongPress(Z)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
    .registers 2
    .param p1, "isWheelKeyLongPress"    # Z

    .prologue
    .line 1315
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->isWheelKeyLongPress:Z

    .line 1316
    return-object p0
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 1306
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->orientation:I

    .line 1307
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->measure_Count:F

    .line 1308
    return-void
.end method

.method public setPlayPosition(IZ)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "isplaying"    # Z

    .prologue
    .line 625
    iput-boolean p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    .line 626
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    .line 627
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    .line 631
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    if-eqz v0, :cond_12

    .line 632
    const-string v0, "setPlayPosition"

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 636
    :cond_12
    const-string v0, "setPlayPosition"

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;J)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 638
    return-void
.end method

.method public setPlayableDegree(F)V
    .registers 2
    .param p1, "degree"    # F

    .prologue
    .line 1301
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playableDegree:F

    .line 1303
    return-void
.end method

.method public setUpdatePlayPosition(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 642
    return-void
.end method

.method public setUpdatePlayPosition(ZI)V
    .registers 6
    .param p1, "set"    # Z
    .param p2, "pos"    # I

    .prologue
    .line 650
    const-string v0, "CircularLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpdatePlayPosition from OnePlayer - playState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPositionOfPlayable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", updatePlayPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldWheelSeekPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->oldWheelSeekPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->oldWheelSeekPosition:I

    if-eq v0, v1, :cond_63

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    .line 655
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    iget-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->playState:Z

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setPlayPosition(IZ)V

    .line 659
    :goto_62
    return-void

    .line 658
    :cond_63
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updatePlayPosition:Z

    goto :goto_62
.end method

.method public setmTranslationX(F)V
    .registers 2
    .param p1, "mTranslationX"    # F

    .prologue
    .line 1293
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationX:F

    .line 1294
    return-void
.end method

.method public setmTranslationY(F)V
    .registers 2
    .param p1, "mTranslationY"    # F

    .prologue
    .line 1297
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mTranslationY:F

    .line 1298
    return-void
.end method

.method public setmWheelChangeListener(Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;)V
    .registers 2
    .param p1, "mWheelChangeListener"    # Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mWheelChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    .line 663
    return-void
.end method

.method public updateLayout()V
    .registers 5

    .prologue
    .line 670
    const-string v0, "CircularLayout"

    const-string v1, "updateLayout"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "updateLayout"

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 675
    const-string v0, "updateLayout"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;J)V

    .line 676
    return-void
.end method

.method public updateLayout(I)V
    .registers 6
    .param p1, "delay"    # I

    .prologue
    .line 678
    const-string v0, "CircularLayout"

    const-string v1, "updateLayout"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "updateLayout"

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->mPositionOfPlayable:I

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getStartDegreeOfPosition(Ljava/lang/CharSequence;I)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->draggedAngle:F

    .line 683
    const-string v0, "updateLayout - delay"

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;J)V

    .line 684
    return-void
.end method
