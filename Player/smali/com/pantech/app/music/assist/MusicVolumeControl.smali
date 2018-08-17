.class public Lcom/pantech/app/music/assist/MusicVolumeControl;
.super Ljava/lang/Object;
.source "MusicVolumeControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MusicVolumeControl"

.field private static final VOLUME_DISPLAY_TIMEOUT:I = 0xbb8


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mControlLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHideTimeout:Ljava/lang/Runnable;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mMaxProgress:I

.field private mMaxVolume:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStateMainControl:Z

.field private mVolumeBtn:Landroid/widget/ImageButton;

.field private mVolumeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHandler:Landroid/os/Handler;

    .line 36
    const/16 v0, 0xf

    iput v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    .line 37
    iput v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxProgress:I

    .line 45
    iput-boolean v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mStateMainControl:Z

    .line 46
    new-instance v0, Lcom/pantech/app/music/assist/MusicVolumeControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicVolumeControl$1;-><init>(Lcom/pantech/app/music/assist/MusicVolumeControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHideTimeout:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    .line 57
    iget v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxProgress:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicVolumeControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicVolumeControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setTimeOut()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/assist/MusicVolumeControl;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicVolumeControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private setTimeOut()V
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHideTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mHideTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void
.end method

.method private showControl()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 170
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :cond_10
    return-void
.end method

.method private updateVolume(IZ)V
    .registers 6
    .param p1, "volume"    # I
    .param p2, "bProgress"    # Z

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 260
    invoke-direct {p0, p1, v2, v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZZ)V

    .line 264
    :goto_b
    return-void

    .line 262
    :cond_c
    invoke-direct {p0, p1, p2, v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZZ)V

    goto :goto_b
.end method

.method private updateVolume(IZZ)V
    .registers 11
    .param p1, "volume"    # I
    .param p2, "bProgress"    # Z
    .param p3, "isHeadsetPlugged"    # Z

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0201e8

    const v4, 0x7f0201e6

    const v3, 0x7f0201e5

    .line 270
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useLastConnection()Z

    move-result v2

    if-ne v2, v6, :cond_7b

    .line 276
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz p3, :cond_57

    :cond_1a
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 277
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->getLastConnection()I

    move-result v1

    .line 278
    .local v1, "lastConnection":I
    if-ne v1, v6, :cond_48

    .line 279
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 309
    .end local v1    # "lastConnection":I
    :goto_2d
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    if-eqz p2, :cond_47

    .line 311
    iget v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxProgress:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    div-int v0, v2, v3

    .line 312
    .local v0, "barPos":I
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 313
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setTimeOut()V

    .line 315
    .end local v0    # "barPos":I
    :cond_47
    return-void

    .line 280
    .restart local v1    # "lastConnection":I
    :cond_48
    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    .line 281
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 283
    :cond_51
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 286
    .end local v1    # "lastConnection":I
    :cond_57
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_61

    if-eqz p3, :cond_67

    .line 287
    :cond_61
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 288
    :cond_67
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 289
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 291
    :cond_75
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 300
    :cond_7b
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_85

    if-eqz p3, :cond_8b

    .line 301
    :cond_85
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 302
    :cond_8b
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 303
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d

    .line 305
    :cond_99
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2d
.end method


# virtual methods
.method public closeControl()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    :cond_f
    return-void
.end method

.method public hide(JJ)V
    .registers 10
    .param p1, "startOffset"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->closeControl()V

    .line 156
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_33

    .line 158
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3d380000    # -100.0f

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 159
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 160
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 162
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_33
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mStateMainControl:Z

    .line 166
    return-void
.end method

.method public isControlShow()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMaxVolume()Z
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 182
    .local v0, "volume":I
    iget v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isMiniVolume()Z
    .registers 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 187
    .local v0, "volume":I
    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x3

    .line 324
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isControlShow()Z

    move-result v1

    if-nez v1, :cond_8

    .line 340
    :cond_7
    :goto_7
    return-void

    .line 328
    :cond_8
    if-eqz p3, :cond_7

    .line 330
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 331
    iget v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxProgress:I

    div-int v0, v1, v2

    .line 332
    .local v0, "volume":I
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 334
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 338
    :goto_27
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    goto :goto_7

    .line 336
    .end local v0    # "volume":I
    :cond_2c
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .restart local v0    # "volume":I
    goto :goto_27
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 344
    const-string v0, "MusicVolumeControl"

    const-string v1, "onStartTrackingTouch()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 349
    const-string v0, "MusicVolumeControl"

    const-string v1, "onStopTrackingTouch()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 10
    .param p1, "mainview"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 61
    const v1, 0x7f10009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 62
    const v1, 0x7f10009a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeText:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f100098

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 64
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 65
    const v1, 0x7f100099

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    .line 66
    const v1, 0x7f100097

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    .line 68
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 69
    .local v0, "volume":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    .line 72
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/pantech/app/music/assist/MusicVolumeControl$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/assist/MusicVolumeControl$2;-><init>(Lcom/pantech/app/music/assist/MusicVolumeControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mVolumeBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/pantech/app/music/assist/MusicVolumeControl$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/assist/MusicVolumeControl$3;-><init>(Lcom/pantech/app/music/assist/MusicVolumeControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_75

    .line 91
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 92
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 96
    :cond_75
    iget-boolean v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mStateMainControl:Z

    if-eqz v1, :cond_7d

    .line 97
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/pantech/app/music/assist/MusicVolumeControl;->show(JJ)V

    .line 101
    :goto_7c
    return-void

    .line 99
    :cond_7d
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/pantech/app/music/assist/MusicVolumeControl;->hide(JJ)V

    goto :goto_7c
.end method

.method public setSystemVolumeDown()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 251
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 252
    .local v0, "volume":I
    if-lez v0, :cond_11

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 254
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 256
    :cond_11
    return-void
.end method

.method public setSystemVolumeUp()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 242
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 243
    .local v1, "volume":I
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 244
    .local v0, "maxVolume":I
    if-ge v1, v0, :cond_17

    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 248
    :cond_17
    return-void
.end method

.method public setVolumeDown(Z)Z
    .registers 8
    .param p1, "bForce"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 216
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-nez v3, :cond_c

    .line 238
    :goto_b
    return v1

    .line 219
    :cond_c
    const-string v3, "MusicVolumeControl"

    const-string v4, "setVolumeDown()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 222
    .local v0, "volume":I
    if-lez v0, :cond_2e

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 225
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 229
    :goto_28
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 231
    :cond_2e
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 232
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->showControl()V

    .line 233
    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    :goto_3a
    move v1, v2

    .line 238
    goto :goto_b

    .line 227
    :cond_3c
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_28

    .line 235
    :cond_42
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    goto :goto_3a
.end method

.method public setVolumeUp(Z)Z
    .registers 8
    .param p1, "bForce"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 191
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-nez v3, :cond_c

    .line 212
    :goto_b
    return v1

    .line 194
    :cond_c
    const-string v3, "MusicVolumeControl"

    const-string v4, "setVolumeUp()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 197
    .local v0, "volume":I
    iget v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMaxVolume:I

    if-ge v0, v3, :cond_32

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 200
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x400

    invoke-virtual {v3, v5, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 204
    :goto_2c
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 206
    :cond_32
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 207
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->showControl()V

    .line 208
    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    :goto_3e
    move v1, v2

    .line 212
    goto :goto_b

    .line 202
    :cond_40
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x401

    invoke-virtual {v3, v5, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2c

    .line 210
    :cond_48
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    goto :goto_3e
.end method

.method public show(JJ)V
    .registers 10
    .param p1, "startOffset"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v4, 0x0

    .line 141
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_30

    .line 143
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3d380000    # -100.0f

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 144
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 145
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_30
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mStateMainControl:Z

    .line 151
    return-void
.end method

.method public toggleView()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    .line 105
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->showControl()V

    .line 106
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    .line 110
    :goto_18
    return-void

    .line 108
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->closeControl()V

    goto :goto_18
.end method

.method public update()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 121
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 122
    .local v0, "volume":I
    const-string v1, "MusicVolumeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update()  volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v1

    if-ne v1, v4, :cond_2b

    .line 124
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    .line 128
    :goto_2a
    return-void

    .line 126
    :cond_2b
    invoke-direct {p0, v0, v4}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZ)V

    goto :goto_2a
.end method

.method public update(Z)V
    .registers 7
    .param p1, "isplugged"    # Z

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 132
    .local v0, "volume":I
    const-string v1, "MusicVolumeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update()  isplugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v1

    if-ne v1, v4, :cond_35

    .line 134
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZZ)V

    .line 138
    :goto_34
    return-void

    .line 136
    :cond_35
    invoke-direct {p0, v0, v4, p1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->updateVolume(IZZ)V

    goto :goto_34
.end method
