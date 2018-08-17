.class public Lcom/pantech/app/music/component/ExtendViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ExtendViewPager.java"


# instance fields
.field private mPageFixed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/pantech/app/music/component/ExtendViewPager;->mPageFixed:Z

    if-eqz v0, :cond_6

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/pantech/app/music/component/ExtendViewPager;->mPageFixed:Z

    if-eqz v0, :cond_6

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/pantech/app/music/component/ExtendViewPager;->mPageFixed:Z

    if-eqz v0, :cond_6

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public setPageFixed(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/pantech/app/music/component/ExtendViewPager;->mPageFixed:Z

    .line 42
    return-void
.end method
