.class public Lcom/pantech/app/music/player/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/AudioPreview$ffRepeatListener;,
        Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;,
        Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;,
        Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;,
        Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;,
        Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final APP_FINISH:I = 0x1

.field private static final FADEIN:I = 0x2

.field private static final SEEK_INTERVAL:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AudioPreview"


# instance fields
.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

.field private mBm:Landroid/graphics/Bitmap;

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field mComplete:Z

.field private mDuration:I

.field private mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mLoadingText:Landroid/widget/TextView;

.field private mMimeType:Ljava/lang/String;

.field private mNowAlbum:Landroid/widget/ImageView;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayPause:Landroid/widget/ImageView;

.field private mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

.field private mPosOverride:J

.field private mProgressRefresher:Landroid/os/Handler;

.field private mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSongId:J

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mText_currenttduration:Landroid/widget/TextView;

.field private mText_duration:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    .line 84
    iput-boolean v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mComplete:Z

    .line 91
    iput-boolean v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeeking:Z

    .line 101
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mNowAlbum:Landroid/widget/ImageView;

    .line 102
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    .line 103
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    .line 105
    iput-wide v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mPosOverride:J

    .line 107
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    .line 108
    iput-wide v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/pantech/app/music/player/AudioPreview$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/AudioPreview$1;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 150
    new-instance v0, Lcom/pantech/app/music/player/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/AudioPreview$2;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 181
    new-instance v0, Lcom/pantech/app/music/player/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/AudioPreview$3;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1211
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/AudioPreview;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/player/AudioPreview;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/pantech/app/music/player/AudioPreview;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/player/AudioPreview;ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Landroid/database/Cursor;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/AudioPreview;->onQueryCompleted(ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/player/AudioPreview;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/player/AudioPreview;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/player/AudioPreview;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/player/AudioPreview;Landroid/content/Context;)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/AudioPreview;->checkFinish(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/music/player/AudioPreview;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$402(Lcom/pantech/app/music/player/AudioPreview;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$500(Lcom/pantech/app/music/player/AudioPreview;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/pantech/app/music/player/AudioPreview;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p1, "x1"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkFinish(Landroid/content/Context;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1013
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1014
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 1015
    .local v8, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    .line 1017
    .local v7, "ret_val":Z
    if-eqz v8, :cond_1f9

    .line 1018
    const/4 v3, 0x0

    .line 1019
    .local v3, "i":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v2, "cl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1022
    .local v0, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkFinish getClassName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1023
    iget-object v10, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f2

    .line 1028
    iget-object v10, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1030
    .local v5, "idx":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "al.get("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1032
    const/4 v10, -0x1

    if-eq v5, v10, :cond_1f6

    .line 1033
    const/4 v9, 0x0

    .local v9, "skip":I
    const/4 v6, 0x1

    .line 1035
    .local v6, "j":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runningTasks.get("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ").getClassName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " runningTasks.size():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " idx:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1037
    :goto_df
    add-int v10, v3, v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1f6

    add-int v10, v5, v6

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1f6

    if-nez v7, :cond_1f6

    .line 1038
    :goto_f4
    add-int v10, v3, v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d9

    add-int v10, v5, v6

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d9

    .line 1039
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "al.get("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v5, v6

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    add-int v12, v5, v6

    add-int/2addr v12, v9

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " runningTasks.get("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v3, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ").getClassName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int v10, v3, v6

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " al.size():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1040
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " j:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " skip:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " idx:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1041
    iget-object v10, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    add-int v11, v5, v6

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    add-int v11, v3, v6

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d9

    .line 1042
    const-string v10, "different...."

    invoke-static {v10}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1043
    add-int v10, v3, v6

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1dd

    .line 1044
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 1037
    :cond_1d9
    :goto_1d9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_df

    .line 1047
    :cond_1dd
    iget-object v10, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    add-int v11, v5, v6

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ee

    .line 1048
    const/4 v7, 0x1

    .line 1049
    goto :goto_1d9

    .line 1051
    :cond_1ee
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f4

    .line 1061
    .end local v5    # "idx":I
    .end local v6    # "j":I
    .end local v9    # "skip":I
    :cond_1f2
    add-int/lit8 v3, v3, 0x1

    .line 1062
    goto/16 :goto_1b

    .line 1064
    .end local v0    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1f6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1066
    .end local v2    # "cl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1f9
    return v7
.end method

.method private displayAlbum(Ljava/lang/Long;)V
    .registers 15
    .param p1, "songid"    # Ljava/lang/Long;

    .prologue
    .line 621
    const-wide/16 v6, -0x1

    .line 623
    .local v6, "albumID":J
    const/4 v11, 0x0

    .line 626
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v12, 0x0

    .line 627
    .local v12, "uri":Landroid/net/Uri;
    :try_start_4
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 630
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_95

    .line 631
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_92

    .line 632
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 633
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 635
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 637
    if-eqz v12, :cond_86

    .line 638
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 641
    :cond_86
    if-eqz v11, :cond_92

    .line 642
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 643
    .local v10, "fd":Ljava/io/FileDescriptor;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    .line 647
    .end local v10    # "fd":Ljava/io/FileDescriptor;
    :cond_92
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_95} :catch_ab
    .catchall {:try_start_4 .. :try_end_95} :catchall_cd

    .line 653
    :cond_95
    if-eqz v11, :cond_9a

    .line 654
    :try_start_97
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a6

    .line 660
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d9

    .line 661
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mNowAlbum:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 665
    :goto_a5
    return-void

    .line 655
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_a6
    move-exception v9

    .line 656
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 649
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_ab
    move-exception v9

    .line 650
    .local v9, "e":Ljava/io/FileNotFoundException;
    :try_start_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Albumart exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_ac .. :try_end_c2} :catchall_cd

    .line 653
    if-eqz v11, :cond_9a

    .line 654
    :try_start_c4
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_9a

    .line 655
    :catch_c8
    move-exception v9

    .line 656
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 652
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_cd
    move-exception v0

    .line 653
    if-eqz v11, :cond_d3

    .line 654
    :try_start_d0
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    .line 657
    :cond_d3
    :goto_d3
    throw v0

    .line 655
    :catch_d4
    move-exception v9

    .line 656
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d3

    .line 663
    .end local v9    # "e":Ljava/io/IOException;
    :cond_d9
    invoke-direct {p0, v6, v7}, Lcom/pantech/app/music/player/AudioPreview;->setDefaultAlbumArt(J)V

    goto :goto_a5
.end method

.method private initlayout()V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "scheme":Ljava/lang/String;
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>mUri.getScheme():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mNowAlbum:Landroid/widget/ImageView;

    .line 406
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f10008d

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 408
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    .line 409
    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    .line 410
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 412
    const-string v0, "http"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 413
    const v0, 0x7f0801aa

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .end local v9    # "msg":Ljava/lang/String;
    :goto_86
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 419
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 421
    const v0, 0x7f100092

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 422
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 423
    const v0, 0x7f100094

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 424
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 426
    const v0, 0x7f100093

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    .line 427
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 429
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 430
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->showPostPrepareUI()V

    .line 431
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 435
    :cond_f4
    const-string v0, "content"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 437
    :try_start_fc
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_13b

    const-string v0, "media"

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 439
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "artist"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "album"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_131} :catch_149

    .line 490
    :cond_131
    :goto_131
    return-void

    .line 416
    :cond_132
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_86

    .line 446
    :cond_13b
    :try_start_13b
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_148} :catch_149

    goto :goto_131

    .line 448
    :catch_149
    move-exception v8

    .line 449
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_131

    .line 452
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_166
    const-string v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 455
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, "path":Ljava/lang/String;
    :try_start_174
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "artist"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "album"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1a2} :catch_1a3

    goto :goto_131

    .line 470
    :catch_1a3
    move-exception v8

    .line 471
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto/16 :goto_131

    .line 475
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "path":Ljava/lang/String;
    :cond_1c1
    const-string v0, "http"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 476
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 481
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->setNames()V

    goto/16 :goto_131

    .line 486
    :cond_1e1
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 487
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->setNames()V

    goto/16 :goto_131
.end method

.method private onQueryCompleted(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 20
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 324
    if-eqz p3, :cond_185

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_185

    .line 326
    const-string v12, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 327
    .local v11, "titleIdx":I
    const-string v12, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 328
    .local v5, "artistIdx":I
    const-string v12, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 329
    .local v2, "albumIdx":I
    const-string v12, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 330
    .local v7, "idIdx":I
    const-string v12, "_display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 332
    .local v6, "displaynameIdx":I
    const-string v12, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 333
    .local v8, "mimetypeIdx":I
    if-ltz v8, :cond_44

    .line 334
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mMimeType:Ljava/lang/String;

    .line 336
    :cond_44
    if-ltz v7, :cond_6c

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_66

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_151

    .line 338
    :cond_66
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    .line 343
    :cond_6c
    :goto_6c
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=>mUri.getAuthority():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=>mUri.getPath():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=>mSongId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-ltz v11, :cond_16d

    .line 348
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    if-gez v2, :cond_15d

    const-string v3, "<unknown>"

    .line 351
    .local v3, "albumName":Ljava/lang/String;
    :goto_db
    if-gez v5, :cond_165

    const-string v4, "<unknown>"

    .line 352
    .local v4, "artist":Ljava/lang/String;
    :goto_df
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=>albumName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=>artist:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    if-eqz v3, :cond_119

    const-string v12, "null"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11b

    .line 356
    :cond_119
    const-string v3, "<unknown>"

    .line 358
    :cond_11b
    if-eqz v4, :cond_125

    const-string v12, "null"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_127

    .line 359
    :cond_125
    const-string v4, "<unknown>"

    .line 361
    :cond_127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .end local v2    # "albumIdx":I
    .end local v3    # "albumName":Ljava/lang/String;
    .end local v4    # "artist":Ljava/lang/String;
    .end local v5    # "artistIdx":I
    .end local v6    # "displaynameIdx":I
    .end local v7    # "idIdx":I
    .end local v8    # "mimetypeIdx":I
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "titleIdx":I
    :goto_145
    if-eqz p3, :cond_14a

    .line 376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_14a
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/AudioPreview;->setNames()V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/AudioPreview;->setAlbumArt()V

    .line 380
    return-void

    .line 340
    .restart local v2    # "albumIdx":I
    .restart local v5    # "artistIdx":I
    .restart local v6    # "displaynameIdx":I
    .restart local v7    # "idIdx":I
    .restart local v8    # "mimetypeIdx":I
    .restart local v11    # "titleIdx":I
    :cond_151
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    goto/16 :goto_6c

    .line 350
    .restart local v10    # "title":Ljava/lang/String;
    :cond_15d
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_db

    .line 351
    .restart local v3    # "albumName":Ljava/lang/String;
    :cond_165
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_df

    .line 362
    .end local v3    # "albumName":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_16d
    if-ltz v6, :cond_17d

    .line 363
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_145

    .line 367
    .end local v9    # "name":Ljava/lang/String;
    :cond_17d
    const-string v12, "AudioPreview"

    const-string v13, "Cursor had no names for us"

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    .line 370
    .end local v2    # "albumIdx":I
    .end local v5    # "artistIdx":I
    .end local v6    # "displaynameIdx":I
    .end local v7    # "idIdx":I
    .end local v8    # "mimetypeIdx":I
    .end local v11    # "titleIdx":I
    :cond_185
    const-string v12, "AudioPreview"

    const-string v13, "empty cursor"

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v12, "AudioPreview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mUri.getPath :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_145
.end method

.method private runningTask(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 998
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1000
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1001
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1002
    if-eqz v3, :cond_55

    .line 1003
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1004
    .local v0, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 1005
    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runningTask:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto :goto_19

    .line 1010
    .end local v0    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_55
    return-void
.end method

.method private scanBackword()V
    .registers 3

    .prologue
    .line 949
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v0

    .line 950
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x2710

    .line 951
    if-gez v0, :cond_b

    .line 952
    const/4 v0, 0x0

    .line 954
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 955
    return-void
.end method

.method private scanForward()V
    .registers 4

    .prologue
    .line 919
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v0

    .line 920
    .local v0, "pos":I
    add-int/lit16 v0, v0, 0x2710

    .line 921
    iget v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    add-int/lit16 v1, v1, -0x7d0

    if-ge v0, v1, :cond_19

    .line 922
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 924
    :cond_19
    return-void
.end method

.method private setAlbumArt()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 574
    .local v6, "cur":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 575
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    iput-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    .line 578
    :cond_19
    const-string v0, "AudioPreview"

    const-string v1, "setAlbumArt"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz v6, :cond_82

    .line 580
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_7f

    .line 581
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri get Path :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, "uripath":Ljava/lang/String;
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uripath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-wide v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_83

    .line 587
    iget-wide v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mSongId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->displayAlbum(Ljava/lang/Long;)V

    .line 616
    .end local v10    # "uripath":Ljava/lang/String;
    :cond_7f
    :goto_7f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 618
    :cond_82
    return-void

    .line 588
    .restart local v10    # "uripath":Ljava/lang/String;
    :cond_83
    if-eqz v10, :cond_7f

    .line 596
    :cond_85
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 599
    :try_start_95
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 600
    .local v9, "songid":Ljava/lang/Long;
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "songid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-direct {p0, v9}, Lcom/pantech/app/music/player/AudioPreview;->displayAlbum(Ljava/lang/Long;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_be} :catch_bf

    goto :goto_7f

    .line 603
    .end local v9    # "songid":Ljava/lang/Long;
    :catch_bf
    move-exception v7

    .line 604
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "AudioPreview"

    const-string v1, "setAlbumArt Exception"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 607
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c8
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 608
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->setDefaultAlbumArt(J)V

    goto :goto_7f

    .line 611
    :cond_e8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->setDefaultAlbumArt(J)V

    .line 613
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_7f
.end method

.method private setDefaultAlbumArt(J)V
    .registers 6
    .param p1, "albumID"    # J

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getDefaultBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mNowAlbum:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 670
    return-void
.end method

.method private setVolumeDown()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 967
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 968
    .local v0, "volume":I
    if-lez v0, :cond_11

    .line 969
    add-int/lit8 v0, v0, -0x1

    .line 970
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 972
    :cond_11
    return-void
.end method

.method private setVolumeUp()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 958
    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 959
    .local v1, "volume":I
    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 960
    .local v0, "maxVolume":I
    if-ge v1, v0, :cond_17

    .line 961
    add-int/lit8 v1, v1, 0x1

    .line 962
    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 964
    :cond_17
    return-void
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    new-instance v1, Lcom/pantech/app/music/player/AudioPreview$5;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/player/AudioPreview$5;-><init>(Lcom/pantech/app/music/player/AudioPreview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->post(Ljava/lang/Runnable;)Z

    .line 994
    return-void
.end method

.method private showPostPrepareUI()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x104

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 673
    const v3, 0x7f100087

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 674
    .local v0, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 675
    const v3, 0x7f100086

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 676
    .local v1, "sl":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    add-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    const v4, 0x36ee80

    if-le v3, v4, :cond_ac

    .line 684
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 685
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0xb

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 694
    :goto_59
    iget v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    if-eqz v3, :cond_69

    .line 695
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 696
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 700
    :cond_69
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 702
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    new-instance v4, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;

    invoke-direct {v4, p0, v10}, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;-><init>(Lcom/pantech/app/music/player/AudioPreview;Lcom/pantech/app/music/player/AudioPreview$1;)V

    invoke-virtual {v3, v4, v12, v13}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 703
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    new-instance v4, Lcom/pantech/app/music/player/AudioPreview$ffRepeatListener;

    invoke-direct {v4, p0, v10}, Lcom/pantech/app/music/player/AudioPreview$ffRepeatListener;-><init>(Lcom/pantech/app/music/player/AudioPreview;Lcom/pantech/app/music/player/AudioPreview$1;)V

    invoke-virtual {v3, v4, v12, v13}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 705
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    const v3, 0x7f100089

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 707
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 710
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    .line 712
    return-void

    .line 686
    .end local v2    # "v":Landroid/view/View;
    :cond_ac
    iget v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    const v4, 0x927c0

    if-le v3, v4, :cond_d4

    .line 687
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 688
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_59

    .line 690
    :cond_d4
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 691
    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_59
.end method

.method private start()V
    .registers 7

    .prologue
    const-wide/16 v4, 0xc8

    .line 716
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 718
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_14

    .line 719
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->start()V

    .line 722
    :cond_14
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    .line 726
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    new-instance v1, Lcom/pantech/app/music/player/AudioPreview$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/AudioPreview$4;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    :cond_2c
    return-void
.end method

.method private updatePlayPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 752
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    .line 753
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 754
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 755
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 756
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    :cond_24
    :goto_24
    return-void

    .line 758
    :cond_25
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 759
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 760
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 761
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private updatePlaytoPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    .line 768
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_21

    .line 769
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mRewind:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 770
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mFastforward:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 771
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 772
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 775
    :cond_21
    return-void
.end method


# virtual methods
.method public closeButtonClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->stopPlayback()V

    .line 829
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    .line 830
    return-void
.end method

.method public fastforwardClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 855
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 861
    :cond_10
    :goto_10
    return-void

    .line 856
    :cond_11
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 857
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, 0xbb8

    .line 858
    .local v0, "newpos":I
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_33

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v0

    .line 859
    :cond_33
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_10
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "AudioPreview"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 239
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 243
    const-string v0, "AudioPreview"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 245
    return-void
.end method

.method public handleAudioPreview(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 233
    :goto_6
    return-void

    .line 216
    :pswitch_7
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_6

    .line 220
    :pswitch_b
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 221
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 224
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->checkFinish(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.pantech.app.mms.ui.ComposeMessageActivity"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 225
    :cond_31
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_6

    .line 229
    :cond_35
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->start()V

    goto :goto_6

    .line 214
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public isCallState()Z
    .registers 7

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "callstate":I
    const-string v1, "phone"

    .line 780
    .local v1, "srvName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 781
    .local v2, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 782
    const-string v3, "AudioPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callstate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    if-eqz v0, :cond_29

    const/4 v3, 0x1

    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 976
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 977
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->stopPlayback()V

    .line 978
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 800
    const-string v1, "AudioPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---onCompletion--- mimeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mMimeType:Ljava/lang/String;

    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 810
    :cond_2c
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 813
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 814
    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 815
    .local v0, "b":Landroid/widget/ImageView;
    if-eqz v0, :cond_4d

    .line 817
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlaytoPause()V

    .line 820
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 822
    :cond_4d
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    if-eqz v1, :cond_65

    .line 823
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mText_currenttduration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    add-int/lit16 v3, v3, 0x1f4

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :cond_65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 249
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    const-string v5, "AudioPreview"

    const-string v6, "onCreate()"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "commandFilter":Landroid/content/IntentFilter;
    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/pantech/app/music/player/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 258
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_38

    .line 259
    const v5, 0x7f08010d

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    .line 321
    :goto_37
    return-void

    .line 264
    :cond_38
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 265
    const v5, 0x7f080126

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_37

    .line 269
    :cond_4c
    if-nez v2, :cond_52

    .line 270
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_37

    .line 273
    :cond_52
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    .line 274
    const-string v5, "AudioPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=>mUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_7a

    .line 277
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_37

    .line 281
    :cond_7a
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->setVolumeControlStream(I)V

    .line 282
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->requestWindowFeature(I)Z

    .line 283
    const v5, 0x7f030022

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->setContentView(I)V

    .line 285
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 286
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 289
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 290
    .local v3, "player":Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;
    if-nez v3, :cond_f3

    .line 291
    new-instance v5, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;-><init>(Lcom/pantech/app/music/player/AudioPreview$1;)V

    iput-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 292
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v5, p0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setActivity(Lcom/pantech/app/music/player/AudioPreview;)V

    .line 294
    :try_start_ae
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    iget-object v6, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_d5

    .line 310
    :cond_b5
    :goto_b5
    new-instance v5, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;-><init>(Lcom/pantech/app/music/player/AudioPreview;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mAsyncQueryHandler:Lcom/pantech/app/music/player/AudioPreview$APAsyncQueryHandler;

    .line 311
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->initlayout()V

    .line 314
    const-string v5, "com.pantech.app.music.content_title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_d0

    .line 316
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_d0
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->registerExternalStorageListener()V

    goto/16 :goto_37

    .line 295
    .end local v4    # "title":Ljava/lang/String;
    :catch_d5
    move-exception v1

    .line 296
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "AudioPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto/16 :goto_37

    .line 301
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_f3
    iput-object v3, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 302
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v5, p0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setActivity(Lcom/pantech/app/music/player/AudioPreview;)V

    .line 303
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v5}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v5

    iput v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    .line 304
    iget-object v5, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v5}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 305
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->initlayout()V

    .line 306
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->showPostPrepareUI()V

    goto :goto_b5
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 509
    const-string v0, "AudioPreview"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 511
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 512
    iput-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mBm:Landroid/graphics/Bitmap;

    .line 515
    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1e

    .line 516
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    iput-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 520
    :cond_1e
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_29

    .line 521
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 522
    iput-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    :cond_29
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->stopPlayback()V

    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 526
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    .line 788
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError(what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 865
    sparse-switch p1, :sswitch_data_66

    .line 915
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    :sswitch_8
    return v0

    .line 868
    :sswitch_9
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 869
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 875
    :goto_19
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 870
    :cond_1d
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 871
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_19

    .line 873
    :cond_2b
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->start()V

    goto :goto_19

    .line 879
    :sswitch_2f
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 880
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->start()V

    .line 882
    :cond_3a
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 886
    :sswitch_3e
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 887
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    .line 889
    :cond_4b
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 898
    :sswitch_4f
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->stopPlayback()V

    .line 899
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto :goto_8

    .line 903
    :sswitch_56
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->scanForward()V

    goto :goto_4

    .line 906
    :sswitch_5a
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->scanBackword()V

    goto :goto_4

    .line 909
    :sswitch_5e
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->setVolumeUp()V

    goto :goto_4

    .line 912
    :sswitch_62
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->setVolumeDown()V

    goto :goto_4

    .line 865
    :sswitch_data_66
    .sparse-switch
        0x13 -> :sswitch_5e
        0x14 -> :sswitch_62
        0x15 -> :sswitch_5a
        0x16 -> :sswitch_56
        0x4f -> :sswitch_9
        0x55 -> :sswitch_9
        0x56 -> :sswitch_4f
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x7e -> :sswitch_2f
        0x7f -> :sswitch_3e
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 570
    .end local p1    # "mp":Landroid/media/MediaPlayer;
    :goto_6
    return-void

    .line 554
    .restart local p1    # "mp":Landroid/media/MediaPlayer;
    :cond_7
    check-cast p1, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .end local p1    # "mp":Landroid/media/MediaPlayer;
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 555
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->setNames()V

    .line 557
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mDuration:I

    .line 559
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->start()V

    .line 560
    invoke-direct {p0, p0}, Lcom/pantech/app/music/player/AudioPreview;->runningTask(Landroid/content/Context;)V

    .line 565
    const-wide/16 v2, 0x32

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_27

    .line 569
    :goto_23
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->showPostPrepareUI()V

    goto :goto_6

    .line 566
    :catch_27
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 392
    const-string v0, "AudioPreview"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 394
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    .line 398
    :cond_1d
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 494
    const-string v1, "AudioPreview"

    const-string v2, "--onRetainNonConfigurationInstance-"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 496
    .local v0, "player":Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 497
    return-object v0
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 385
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 386
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 502
    const-string v0, "AudioPreview"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 504
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 505
    return-void
.end method

.method public onUserLeaveHint()V
    .registers 3

    .prologue
    .line 545
    const-string v0, "AudioPreview"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->stopPlayback()V

    .line 547
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    .line 548
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 549
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 834
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 840
    :goto_10
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->updatePlayPause()V

    .line 841
    return-void

    .line 835
    :cond_14
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 836
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_10

    .line 838
    :cond_26
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview;->start()V

    goto :goto_10
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1102
    :goto_4
    return-void

    .line 1079
    :cond_5
    new-instance v1, Lcom/pantech/app/music/player/AudioPreview$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/AudioPreview$6;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1095
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1096
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/player/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public rewClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 845
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V

    .line 851
    :cond_10
    :goto_10
    return-void

    .line 846
    :cond_11
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 847
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, -0xbb8

    .line 848
    .local v0, "newpos":I
    if-lez v0, :cond_2d

    .line 849
    :goto_27
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_10

    .line 848
    :cond_2d
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setNames()V
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 737
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 738
    :cond_26
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 744
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    :goto_47
    return-void

    .line 740
    :cond_48
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 747
    :cond_54
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47
.end method

.method public stopPlayback()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 529
    const-string v0, "AudioPreview"

    const-string v1, "stopPlayback()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 531
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1c

    .line 534
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->release()V

    .line 535
    iput-object v2, p0, Lcom/pantech/app/music/player/AudioPreview;->mPlayer:Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    .line 537
    :cond_1c
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_27

    .line 538
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 540
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    return-void
.end method
