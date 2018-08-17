.class public Lcom/pantech/app/music/view/SkyMusicPopupNoButton;
.super Lcom/pantech/app/music/view/SkyMusicPopupList;
.source "SkyMusicPopupNoButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 22
    iget-boolean v2, p0, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;->mCloseTouchOutside:Z

    if-eqz v2, :cond_29

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_29

    .line 24
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;->dismiss()V

    .line 35
    :goto_28
    return v1

    .line 29
    :cond_29
    iget-boolean v2, p0, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;->mCloseTouchInside:Z

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 31
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;->dismiss()V

    goto :goto_28

    .line 35
    :cond_41
    invoke-super {p0, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_28
.end method
