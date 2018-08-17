.class public Lcom/pantech/app/music/list/component/view/CheckableImageButton;
.super Landroid/widget/ImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final PARTIAL_CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

.field private mPartialChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->CHECKED_STATE_SET:[I

    .line 18
    new-array v0, v3, [I

    const v1, 0x7f010080

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->PARTIAL_CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getPartialChecked()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mPartialChecked:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "addedCount":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    .line 30
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mPartialChecked:Z

    if-eqz v2, :cond_2d

    :goto_f
    add-int/2addr v0, v3

    .line 32
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 34
    .local v1, "drawableState":[I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 36
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mergeDrawableStates([I[I)[I

    .line 39
    :cond_21
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mPartialChecked:Z

    if-eqz v2, :cond_2a

    .line 41
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->PARTIAL_CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mergeDrawableStates([I[I)[I

    .line 44
    :cond_2a
    return-object v1

    .end local v1    # "drawableState":[I
    :cond_2b
    move v2, v4

    .line 29
    goto :goto_a

    :cond_2d
    move v3, v4

    .line 30
    goto :goto_f
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mChecked:Z

    if-eq v0, p1, :cond_14

    .line 64
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mChecked:Z

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->refreshDrawableState()V

    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_14

    .line 70
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;->onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V

    .line 73
    :cond_14
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .line 79
    return-void
.end method

.method public setPartialChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mPartialChecked:Z

    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->refreshDrawableState()V

    .line 86
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/CheckableImageButton;->setChecked(Z)V

    .line 51
    return-void

    .line 50
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
