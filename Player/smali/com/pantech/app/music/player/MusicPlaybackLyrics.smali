.class public Lcom/pantech/app/music/player/MusicPlaybackLyrics;
.super Ljava/lang/Object;
.source "MusicPlaybackLyrics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/pantech/app/music/lyrics/ILyricsParserListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;,
        Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;
    }
.end annotation


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "LyricsTextSize"

.field private static final TAG:Ljava/lang/String; = "MusicPlaybackLyrics"


# instance fields
.field private mCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

.field private mContext:Landroid/content/Context;

.field private mDimLayout:Landroid/widget/LinearLayout;

.field private mInfoLayout:Landroid/widget/RelativeLayout;

.field private mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

.field private mMainLayout:Landroid/view/View;

.field private mMyPath:Ljava/lang/String;

.field private mParser:Lcom/pantech/app/music/lyrics/LyricsParser;

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mScrollLayout:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowLayout:Z

.field private mStartOffset:I

.field private mTextLyrics:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    .line 216
    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mStartOffset:I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMyPath:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;-><init>(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    .line 73
    invoke-static {p1}, Lcom/pantech/app/music/lyrics/LyricsParser;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/lyrics/LyricsParser;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mParser:Lcom/pantech/app/music/lyrics/LyricsParser;

    .line 74
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mParser:Lcom/pantech/app/music/lyrics/LyricsParser;

    invoke-virtual {v0, p1, p0}, Lcom/pantech/app/music/lyrics/LyricsParser;->setListener(Landroid/content/Context;Lcom/pantech/app/music/lyrics/ILyricsParserListener;)V

    .line 76
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScale:Landroid/view/ScaleGestureDetector;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackLyrics;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->setLayoutInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/MusicPlaybackLyrics;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/player/MusicPlaybackLyrics;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackLyrics;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->showMainLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/player/MusicPlaybackLyrics;)Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    return-object v0
.end method

.method private setLayoutInfo(Ljava/lang/String;)V
    .registers 7
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 166
    const-string v0, "MusicPlaybackLyrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutInfo()  lyrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_40

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 168
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 171
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 179
    :goto_3f
    return-void

    .line 175
    :cond_40
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3f
.end method

.method private showMainLayout(Z)V
    .registers 10
    .param p1, "bShow"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/16 v5, 0x8

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 191
    const-string v1, "MusicPlaybackLyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMainLayout()  bShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_55

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_55

    .line 193
    const-string v1, "MusicPlaybackLyrics"

    const-string v2, "bShow == true && mMainLayout.getVisibility() == View.GONE"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 195
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 196
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mStartOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 197
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_54
    return-void

    .line 201
    :cond_55
    if-nez p1, :cond_8b

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8b

    .line 202
    const-string v1, "MusicPlaybackLyrics"

    const-string v2, "bShow == false && mMainLayout.getVisibility() == View.VISIBLE"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 204
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mStartOffset:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 206
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54

    .line 211
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_8b
    const-string v1, "MusicPlaybackLyrics"

    const-string v2, "else  nothing!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method private updateTextSizeByScale(F)V
    .registers 6
    .param p1, "scale"    # F

    .prologue
    .line 335
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 336
    .local v0, "size":F
    mul-float/2addr v0, p1

    .line 337
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_21

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_21

    .line 338
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    const-string v2, "LyricsTextSize"

    float-to-int v3, v0

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 341
    :cond_21
    return-void
.end method


# virtual methods
.method public isShow()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    const-string v0, "MusicPlaybackLyrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick()  v: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 143
    :cond_30
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;->onLayoutShow(Z)V

    .line 163
    :cond_36
    return-void
.end method

.method public onLyricsParseEnd(Ljava/lang/String;)V
    .registers 5
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->updateTextSizeByScale(F)V

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 356
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSync()V
    .registers 1

    .prologue
    .line 358
    return-void
.end method

.method public registerCallback(Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    .line 66
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v0, "MusicPlaybackLyrics"

    const-string v1, "release()  mCallback = null, mMainLayout.setOnClickListener(null)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    .line 82
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    if-eqz v0, :cond_1d

    .line 86
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainHandler:Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics$MainHandler;->quit()V

    .line 89
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/lyrics/LyricsParser;->releaseInstance(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public requestShow(ZI)V
    .registers 6
    .param p1, "bShow"    # Z
    .param p2, "startoffset"    # I

    .prologue
    .line 232
    const-string v0, "MusicPlaybackLyrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestShow()  bShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startoffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    .line 234
    iput p2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mStartOffset:I

    .line 235
    if-eqz p1, :cond_2f

    .line 236
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMyPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->updateTagInfo(Ljava/lang/String;Z)V

    .line 239
    :goto_2e
    return-void

    .line 238
    :cond_2f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->showMainLayout(Z)V

    goto :goto_2e
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 182
    if-nez p1, :cond_b

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    .line 187
    :goto_5
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void

    .line 185
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    goto :goto_5
.end method

.method public toggle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->isShow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    invoke-virtual {p0, v1, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->requestShow(ZI)V

    .line 225
    :goto_a
    return-void

    .line 223
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->requestShow(ZI)V

    goto :goto_a
.end method

.method public updateSync(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 332
    return-void
.end method

.method public updateTagInfo(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bLyricsForce"    # Z

    .prologue
    .line 260
    const-string v1, "MusicPlaybackLyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTagInfo()  path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bLyricsForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShowLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMyPath:Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    .line 268
    .local v0, "lyrics":Ljava/lang/String;
    if-nez p2, :cond_37

    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    if-eqz v1, :cond_65

    .line 269
    :cond_37
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 270
    :cond_45
    const-string v1, "MusicPlaybackLyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>path error!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->setLayoutInfo(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->showMainLayout(Z)V

    .line 279
    :cond_65
    :goto_65
    return-void

    .line 277
    :cond_66
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mParser:Lcom/pantech/app/music/lyrics/LyricsParser;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/lyrics/LyricsParser;->startGetLyrics(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_65
.end method

.method public updateViewInstance(Landroid/view/View;)V
    .registers 8
    .param p1, "mainview"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const-string v1, "MusicPlaybackLyrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewInstance()  mainview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mShowLayout:Z

    if-eqz v1, :cond_2a

    .line 103
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_2a
    const v1, 0x7f100181

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f100180

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollView:Landroid/widget/ScrollView;

    .line 112
    const v1, 0x7f100183

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f10017f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 119
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/ActivityUtils;->rePositioning4FullScreen(Landroid/app/Activity;Landroid/view/View;)V

    .line 122
    const v1, 0x7f100182

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mDimLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mDimLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8e

    .line 124
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mDimLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 127
    :cond_8e
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 129
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mContext:Landroid/content/Context;

    const-string v2, "LyricsTextSize"

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "size":I
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->mTextLyrics:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    return-void
.end method
