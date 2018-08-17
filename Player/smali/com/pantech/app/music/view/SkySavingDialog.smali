.class public Lcom/pantech/app/music/view/SkySavingDialog;
.super Landroid/app/AlertDialog;
.source "SkySavingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkySavingDialog$Starter;
    }
.end annotation


# static fields
.field private static final ANI_SHOW_NUM:I = 0x10


# instance fields
.field private mCheckEndTime:J

.field private mCheckStartTime:J

.field private mContext:Landroid/content/Context;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

.field private mSavingImageView:[Landroid/widget/ImageView;

.field private mSavingLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkySavingDialog;->setLayout()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkySavingDialog;->setLayout()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/view/SkySavingDialog;)[Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkySavingDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private createSavingAnimation()V
    .registers 7

    .prologue
    const/16 v5, 0x10

    const v4, 0x7f02019b

    .line 99
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_a

    .line 117
    :cond_9
    return-void

    .line 102
    :cond_a
    new-array v1, v5, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v5, :cond_9

    .line 106
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    aput-object v2, v1, v0

    .line 107
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 109
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    mul-int/lit16 v3, v0, 0xfa

    add-int/lit16 v3, v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    mul-int/lit16 v3, v0, 0xfa

    add-int/lit16 v3, v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f
.end method

.method public static inDefaultPixel(I)I
    .registers 2
    .param p0, "hdpi"    # I

    .prologue
    .line 140
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private setLayout()V
    .registers 10

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 52
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 53
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030095

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "View_Loop":Landroid/view/View;
    const v5, 0x7f100150

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f100151

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingLinearLayout:Landroid/widget/LinearLayout;

    .line 58
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingLinearLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkySavingDialog;->createSavingAnimation()V

    .line 62
    new-array v5, v8, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    .line 63
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 64
    .local v3, "margin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x23

    invoke-static {v5}, Lcom/pantech/app/music/view/SkySavingDialog;->inDefaultPixel(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkySavingDialog;->getScaledDimension(I)I

    move-result v5

    const/16 v6, 0x36

    invoke-static {v6}, Lcom/pantech/app/music/view/SkySavingDialog;->inDefaultPixel(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/view/SkySavingDialog;->getScaledDimension(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v5, v3, -0x1

    mul-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_63
    if-ge v1, v8, :cond_9a

    .line 70
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 71
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingAnimation:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    new-instance v6, Lcom/pantech/app/music/view/SkySavingDialog$Starter;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/view/SkySavingDialog$Starter;-><init>(Lcom/pantech/app/music/view/SkySavingDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 75
    iget-object v5, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mSavingImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 78
    :cond_9a
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkySavingDialog;->setView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getScaledDimension(I)I
    .registers 5
    .param p1, "from"    # I

    .prologue
    .line 133
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public reLayout()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method

.method public setBodyMessage(I)V
    .registers 3
    .param p1, "message"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_9
    return-void
.end method

.method public setBodyMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 85
    iget-object v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_b
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkySavingDialog;->mCheckStartTime:J

    .line 157
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 158
    return-void
.end method
