.class public Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ScrollLockViewPager.java"


# static fields
.field public static mViewPagerScrollFix:Z


# instance fields
.field private mScrollLock:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mViewPagerScrollFix:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mScrollLock:Z

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 109
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_f
    return v0

    .line 105
    :sswitch_10
    const/4 v0, 0x0

    goto :goto_f

    .line 100
    :sswitch_data_12
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x3d -> :sswitch_10
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    iget-boolean v5, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mScrollLock:Z

    if-nez v5, :cond_37

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 61
    .local v2, "response":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 62
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 64
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_3a

    .line 91
    .end local v2    # "response":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_17
    :goto_17
    :pswitch_17
    return v2

    .line 67
    .restart local v2    # "response":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :pswitch_18
    iput v3, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mTouchX:F

    .line 68
    iput v4, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mTouchY:F

    goto :goto_17

    .line 72
    :pswitch_1d
    sget-boolean v5, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mViewPagerScrollFix:Z

    if-eqz v5, :cond_17

    .line 74
    iget v5, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 75
    .local v0, "dX":F
    iget v5, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 78
    .local v1, "dY":F
    cmpl-float v5, v0, v1

    if-lez v5, :cond_17

    .line 82
    const/4 v2, 0x1

    goto :goto_17

    .line 91
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    .end local v2    # "response":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_37
    const/4 v2, 0x0

    goto :goto_17

    .line 64
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mScrollLock:Z

    if-nez v1, :cond_d

    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 31
    :goto_8
    return v1

    .line 27
    :catch_9
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setScrollLock()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mScrollLock:Z

    .line 115
    return-void
.end method

.method public setScrollUnLock()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mScrollLock:Z

    .line 120
    return-void
.end method
