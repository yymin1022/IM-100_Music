.class public Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "CustomVerticalSeekBar.java"


# instance fields
.field private mLastProgressPosition:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    .line 29
    return-void
.end method

.method private setPositionChange(Landroid/view/MotionEvent;)I
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 153
    .local v0, "progressVaule":I
    if-gez v0, :cond_1a

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_1a
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_24

    .line 157
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMax()I

    move-result v0

    .line 159
    :cond_24
    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setProgress(I)V

    .line 161
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 44
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 45
    monitor-exit p0

    return-void

    .line 42
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    .line 72
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 140
    :goto_8
    return v1

    .line 82
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_72

    :goto_10
    move v1, v2

    .line 140
    goto :goto_8

    .line 86
    :pswitch_12
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPositionChange(Landroid/view/MotionEvent;)I

    move-result v0

    .line 90
    .local v0, "progressVaule":I
    iget v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    if-eq v0, v3, :cond_28

    .line 92
    iput v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    .line 94
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_28

    .line 96
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 100
    :cond_28
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->onSizeChanged(IIII)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPressed(Z)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setSelected(Z)V

    goto :goto_10

    .line 108
    .end local v0    # "progressVaule":I
    :pswitch_3a
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_43

    .line 110
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 113
    :cond_43
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPressed(Z)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setSelected(Z)V

    goto :goto_10

    .line 119
    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPositionChange(Landroid/view/MotionEvent;)I

    .line 121
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_56

    .line 123
    iget-object v3, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 126
    :cond_56
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->onSizeChanged(IIII)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPressed(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setSelected(Z)V

    goto :goto_10

    .line 134
    :pswitch_68
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setPressed(Z)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setSelected(Z)V

    goto :goto_10

    .line 82
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_3a
        :pswitch_12
        :pswitch_68
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2
    .param p1, "OnSeekBarChangeListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 52
    return-void
.end method

.method public declared-synchronized setProgressAndThumbImage(I)V
    .registers 6
    .param p1, "progressValue"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->setProgress(I)V

    .line 173
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->onSizeChanged(IIII)V

    .line 175
    iget v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    if-eq p1, v0, :cond_21

    .line 177
    iput p1, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mLastProgressPosition:I

    .line 179
    iget-object v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_21

    .line 181
    iget-object v0, p0, Lcom/pantech/app/musicfx/view/CustomVerticalSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 184
    :cond_21
    monitor-exit p0

    return-void

    .line 171
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
