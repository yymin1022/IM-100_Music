.class public Lcom/pantech/app/music/view/SkyMusicPopupList;
.super Landroid/app/AlertDialog;
.source "SkyMusicPopupList.java"


# instance fields
.field protected mCloseTouchInside:Z

.field protected mCloseTouchOutside:Z

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/lang/Object;

.field private mDuration:J

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mDuration:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchInside:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchOutside:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mData:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setLayout()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mDuration:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchInside:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchOutside:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mData:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setLayout()V

    .line 46
    return-void
.end method

.method private setLayout()V
    .registers 5

    .prologue
    .line 58
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030093

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f10014e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mMessageTextView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method private startTimer(J)V
    .registers 8
    .param p1, "duration"    # J

    .prologue
    .line 91
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_7

    .line 102
    :goto_6
    return-void

    .line 93
    :cond_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 94
    .local v0, "mTimer":Ljava/util/Timer;
    new-instance v1, Lcom/pantech/app/music/view/SkyMusicPopupList$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/view/SkyMusicPopupList$1;-><init>(Lcom/pantech/app/music/view/SkyMusicPopupList;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_6
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public reLayout()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public setCanceledOnTouchInside(Z)V
    .registers 2
    .param p1, "closeInside"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchInside:Z

    .line 132
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "closeInside"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchOutside:Z

    .line 139
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mCloseTouchOutside:Z

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 140
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mData:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public setDispTime(I)V
    .registers 4
    .param p1, "milliSec"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mDuration:J

    .line 79
    return-void
.end method

.method public setMessage(I)V
    .registers 3
    .param p1, "message"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/pantech/app/music/view/SkyMusicPopupList;->mDuration:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->startTimer(J)V

    .line 86
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method
