.class public Lcom/pantech/app/music/list/component/view/AnimImageView;
.super Landroid/widget/ImageView;
.source "AnimImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VMusicAnimationView"

.field static final mDebug:Z


# instance fields
.field mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;-><init>(Lcom/pantech/app/music/list/component/view/AnimImageView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView;->mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;-><init>(Lcom/pantech/app/music/list/component/view/AnimImageView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView;->mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;-><init>(Lcom/pantech/app/music/list/component/view/AnimImageView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView;->mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/component/view/AnimImageView;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/AnimImageView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/AnimImageView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    .line 63
    :cond_5
    :goto_5
    return-void

    .line 41
    :pswitch_6
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_5

    .line 42
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    .local v0, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 39
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private pauseAnimation()V
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1d

    .line 136
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    .local v0, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 140
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 143
    .end local v0    # "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1d
    return-void
.end method

.method private resumeAnimation()V
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1d

    .line 151
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 153
    .local v0, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 155
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStart()V

    .line 158
    .end local v0    # "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1d
    return-void
.end method


# virtual methods
.method public animStart()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView;->mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView;->mHandler:Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    return-void
.end method

.method public animStop()V
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1a

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 88
    .local v0, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 91
    .end local v0    # "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 167
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 168
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 100
    if-nez p1, :cond_9

    .line 103
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->pauseAnimation()V

    .line 110
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 111
    return-void

    .line 107
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->resumeAnimation()V

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStart()V

    .line 73
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 121
    if-eqz p2, :cond_9

    .line 122
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->pauseAnimation()V

    .line 127
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    return-void

    .line 124
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/AnimImageView;->resumeAnimation()V

    goto :goto_5
.end method
