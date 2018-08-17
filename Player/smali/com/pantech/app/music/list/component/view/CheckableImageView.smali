.class public Lcom/pantech/app/music/list/component/view/CheckableImageView;
.super Landroid/widget/ImageView;
.source "CheckableImageView.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable;


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

.field private mPartialChecked:Z

.field mPressDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field startTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->startTransition:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->startTransition:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->startTransition:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 98
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2d

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2d

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->startTransition:Z

    .line 103
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPressDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPressDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 106
    const-string v1, "Start Transition"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 117
    :cond_29
    :goto_29
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 118
    return-void

    .line 108
    .restart local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_2d
    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->startTransition:Z

    if-eqz v1, :cond_29

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPressDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_3a

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPressDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 113
    :cond_3a
    const-string v1, "Reset Transition"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public getPartialChecked()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPartialChecked:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_14

    .line 55
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    .line 56
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->refreshDrawableState()V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_14

    .line 61
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;->onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V

    .line 64
    :cond_14
    return-void
.end method

.method public setCheckedWithoutCallback(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    .line 48
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .line 70
    return-void
.end method

.method public setPartialChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mPartialChecked:Z

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->refreshDrawableState()V

    .line 77
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setChecked(Z)V

    .line 37
    return-void

    .line 36
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
