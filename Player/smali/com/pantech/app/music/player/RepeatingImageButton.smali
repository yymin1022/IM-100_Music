.class public Lcom/pantech/app/music/player/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mInterval:J

    .line 128
    new-instance v0, Lcom/pantech/app/music/player/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/RepeatingImageButton$1;-><init>(Lcom/pantech/app/music/player/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setLongClickable(Z)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/RepeatingImageButton;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/RepeatingImageButton;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/RepeatingImageButton;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/RepeatingImageButton;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .registers 9
    .param p1, "last"    # Z

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    .local v0, "now":J
    iget-object v2, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_14

    .line 141
    iget-object v3, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_15

    const/4 v2, -0x1

    :goto_11
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 143
    :cond_14
    return-void

    .line 141
    :cond_15
    iget v2, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeatCount:I

    goto :goto_11
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    sparse-switch p1, :sswitch_data_1c

    .line 125
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 119
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    iget-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->doRepeat(Z)V

    .line 122
    iput-wide v2, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    goto :goto_5

    .line 115
    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    iget-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_19

    .line 106
    invoke-direct {p0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->doRepeat(Z)V

    .line 107
    iput-wide v4, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    .line 110
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeatCount:I

    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public reqStopRepeat()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 68
    iget-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->doRepeat(Z)V

    .line 70
    iput-wide v2, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    .line 72
    :cond_13
    return-void
.end method

.method public resetRepeat()V
    .registers 5

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mStartTime:J

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeatCount:I

    .line 79
    :cond_11
    return-void
.end method

.method public setClickable(Z)V
    .registers 4
    .param p1, "fSet"    # Z

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_b

    .line 56
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setPressed(Z)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->setEnabled(Z)V

    .line 64
    :goto_a
    return-void

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setPressed(Z)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setEnabled(Z)V

    goto :goto_a
.end method

.method public setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V
    .registers 4
    .param p1, "l"    # Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;
    .param p2, "interval"    # J

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 89
    iput-wide p2, p0, Lcom/pantech/app/music/player/RepeatingImageButton;->mInterval:J

    .line 90
    return-void
.end method
