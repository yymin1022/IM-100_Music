.class public Lcom/pantech/app/music/view/SkyProgressDialog;
.super Landroid/app/AlertDialog;
.source "SkyProgressDialog.java"


# instance fields
.field private mCheckEndTime:J

.field private mCheckStartTime:J

.field private mContext:Landroid/content/Context;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyProgressDialog;->setLayout()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyProgressDialog;->setLayout()V

    .line 37
    return-void
.end method

.method private setLayout()V
    .registers 5

    .prologue
    .line 49
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 50
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "View_loading":Landroid/view/View;
    const v2, 0x7f10014f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->setView(Landroid/view/View;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 83
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public reLayout()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public setBodyMessage(I)V
    .registers 3
    .param p1, "message"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :cond_9
    return-void
.end method

.method public setBodyMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 61
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_b
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkyProgressDialog;->mCheckStartTime:J

    .line 93
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void
.end method
