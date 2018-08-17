.class public Lcom/pantech/app/music/list/module/CommonThreadHandler;
.super Landroid/os/Handler;
.source "CommonThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;
    }
.end annotation


# static fields
.field static final DEBUG_MEM_USAGE_NOTIFICATION:I = 0x270f

.field public static final EVENT_BASE:I = 0x0

.field public static final EVENT_CHECK_AUDIO_METADATA_TYPE:I = 0x4

.field public static final EVENT_DELETE_FILE_CACHE:I = 0x2

.field public static final EVENT_DISMISS_HELP_DIALOG:I = 0x3

.field public static final EVENT_DISPLAY_MEMORY_USAGE:I = 0x5

.field public static final EVENT_DRM_SYNC:I = 0x1

.field public static final EVENT_MAX:I = 0x6

.field public static final TAG:Ljava/lang/String; = "VMusicCommonThreadHandler"

.field public static mDebugNotification:Z

.field private static mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

.field private static mMetaDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/pantech/app/music/list/module/CommonThreadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static mWorker:Lcom/pantech/app/music/common/MusicWorker;


# instance fields
.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mNotifyManager:Landroid/app/NotificationManager;

.field mOldTotalMemory:J

.field mWorkerProcessingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mStack:Ljava/util/Stack;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mOldTotalMemory:J

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static allocInstance(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonThreadHandler allocInstance()  mInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    if-nez v0, :cond_37

    .line 51
    new-instance v0, Lcom/pantech/app/music/common/MusicWorker;

    const-string v1, "CommonThreadHandler worker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 52
    new-instance v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    invoke-virtual {v2}, Lcom/pantech/app/music/common/MusicWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    .line 56
    :cond_37
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mStack:Ljava/util/Stack;

    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public static clearInstance()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "CommonThreadHandler clearInstance"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 68
    const-string v0, "mStack.isEmpty() == true"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-direct {v0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->clearMessage()V

    .line 70
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    :cond_21
    return-void
.end method

.method private clearMessage()V
    .registers 5

    .prologue
    .line 96
    const-string v1, "VMusicCommonThreadHandler"

    const-string v2, "CommonThreadHandler clearMessage()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->sendEmptyMessage(I)Z

    .line 104
    sget-boolean v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mNotifyManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_24

    .line 106
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    .line 107
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v3, 0x270f

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    :cond_24
    const-string v1, "VMusicCommonThreadHandler"

    const-string v3, "Waiting AlbumartHandler Over"

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_37

    .line 114
    :try_start_2b
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_32
    .catchall {:try_start_2b .. :try_end_30} :catchall_37

    .line 120
    :goto_30
    :try_start_30
    monitor-exit v2

    .line 121
    return-void

    .line 116
    :catch_32
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_30

    .line 120
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public static getAudioMetadataType(Ljava/lang/String;)I
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    if-eqz v2, :cond_49

    if-eqz p0, :cond_49

    .line 194
    sget-object v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    .local v1, "metadataType":Ljava/lang/Integer;
    const-string v2, "VMusicMetaData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioMetadataType() result: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz v1, :cond_49

    .line 200
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->isLowPowerSystemMode()Z

    move-result v0

    .line 203
    .local v0, "isLPMode":Z
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_44

    if-nez v0, :cond_44

    .line 204
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 206
    :cond_44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .end local v0    # "isLPMode":Z
    .end local v1    # "metadataType":Ljava/lang/Integer;
    :goto_48
    return v2

    :cond_49
    const/4 v2, 0x1

    goto :goto_48
.end method

.method public static getInstance()Lcom/pantech/app/music/list/module/CommonThreadHandler;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonThreadHandler getInstance()  mInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    if-eqz v0, :cond_1f

    .line 78
    sget-object v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    return-object v0

    .line 80
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must call allocInstance()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIsHifiAudio(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    if-eqz v2, :cond_4b

    if-eqz p0, :cond_4b

    .line 178
    sget-object v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 179
    .local v1, "metadataType":Ljava/lang/Integer;
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->isLowPowerSystemMode()Z

    move-result v0

    .line 181
    .local v0, "isLPMode":Z
    const-string v2, "VMusicMetaData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsHifiAudio() result: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] isLPMode: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4b

    if-eqz v0, :cond_4b

    .line 184
    const/4 v2, 0x1

    .line 187
    .end local v0    # "isLPMode":Z
    .end local v1    # "metadataType":Ljava/lang/Integer;
    :goto_4a
    return v2

    :cond_4b
    const/4 v2, 0x0

    goto :goto_4a
.end method


# virtual methods
.method public checkAudioMetadata(Ljava/lang/String;J)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "audioID"    # J

    .prologue
    const/4 v4, 0x4

    .line 157
    const-string v1, "VMusicMetaData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsHifiAudio() path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    if-nez v1, :cond_1e

    .line 167
    :goto_1d
    return-void

    .line 162
    :cond_1e
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;-><init>(Lcom/pantech/app/music/list/module/CommonThreadHandler;JLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeMessages(I)V

    .line 166
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d
.end method

.method public deleteCacheUnderSize(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 129
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    .line 137
    :cond_7
    :goto_7
    return-void

    .line 132
    :cond_8
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeMessages(I)V

    .line 136
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 250
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 252
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-ltz v15, :cond_5b

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v15, v0, :cond_5b

    .line 253
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CommonThreadHandler handleMessage:("

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ") arg1:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " arg2:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 255
    :cond_5b
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_224

    .line 337
    :cond_62
    :goto_62
    return-void

    .line 258
    :pswitch_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 260
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorkerProcessingLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 262
    sget-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    invoke-virtual {v15}, Lcom/pantech/app/music/common/MusicWorker;->stopWorkerNoSync()V

    .line 263
    const/4 v15, 0x0

    sput-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    .line 264
    const/4 v15, 0x0

    sput-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 265
    const-string v15, "VMusicCommonThreadHandler"

    const-string v19, "CommonThreadHandler Over"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    monitor-exit v18

    goto :goto_62

    :catchall_87
    move-exception v15

    monitor-exit v18
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_87

    throw v15

    .line 270
    :pswitch_8a
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    invoke-static {v15}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->deleteFileCache(Landroid/content/Context;)V

    goto :goto_62

    .line 274
    :pswitch_94
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_62

    goto :goto_62

    .line 285
    :pswitch_9b
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_62

    .line 287
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;

    iget-wide v4, v15, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;->audioID:J

    .line 288
    .local v4, "audioid":J
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;

    iget-object v13, v15, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;->szPath:Ljava/lang/String;

    .line 289
    .local v13, "path":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 291
    .local v12, "metadataType":Ljava/lang/Integer;
    sget-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    if-eqz v15, :cond_62

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_62

    .line 293
    sget-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "metadataType":Ljava/lang/Integer;
    check-cast v12, Ljava/lang/Integer;

    .line 295
    .restart local v12    # "metadataType":Ljava/lang/Integer;
    if-eqz v12, :cond_d4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_eb

    .line 297
    :cond_d4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-static {v15, v13, v4, v5}, Lcom/pantech/app/music/utils/ContentUtils;->getMetaDataFileType(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 298
    sget-object v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v15, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_eb
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v6, "broadcastIntent":Landroid/content/Intent;
    const-string v15, "com.pantech.app.music.action.AUDIOMETADATACONTROL"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v15, "metadata_type"

    invoke-virtual {v6, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_62

    .line 310
    .end local v4    # "audioid":J
    .end local v6    # "broadcastIntent":Landroid/content/Intent;
    .end local v12    # "metadataType":Ljava/lang/Integer;
    .end local v13    # "path":Ljava/lang/String;
    :pswitch_109
    sget-boolean v15, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    if-eqz v15, :cond_62

    .line 312
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v16

    .line 313
    .local v16, "total":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    .line 314
    .local v8, "free":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    .line 316
    .local v10, "max":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "FREE:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K TOTAL:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v16, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " MAX:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v10, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "memMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "USED:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v16, v8

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "K"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v15, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 322
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mOldTotalMemory:J

    move-wide/from16 v18, v0

    cmp-long v15, v18, v16

    if-eqz v15, :cond_20d

    .line 324
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "F:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K/T:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v16, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/M:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v18, 0x400

    div-long v18, v10, v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "K"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, "tikerMsg":Ljava/lang/String;
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mOldTotalMemory:J

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v15, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 329
    .end local v14    # "tikerMsg":Ljava/lang/String;
    :cond_20d
    const-string v15, "VMusicCommonThreadHandler"

    invoke-static {v15, v7}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeMessages(I)V

    .line 333
    const/4 v15, 0x5

    const-wide/16 v18, 0xfa0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_62

    .line 255
    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_63
        :pswitch_8a
        :pswitch_94
        :pswitch_9b
        :pswitch_109
    .end packed-switch
.end method

.method public toggleDisplayMemStatus(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 221
    const-string v1, "VMusicCommonThreadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSystemWindowView mDebugNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mNotifyManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_2a

    .line 224
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mNotifyManager:Landroid/app/NotificationManager;

    .line 226
    :cond_2a
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 228
    sget-boolean v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mDebugNotification:Z

    if-ne v1, v4, :cond_6a

    .line 230
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 232
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 233
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v2, "Preparing"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 234
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v2, "Preparing"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 235
    iget-object v1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 239
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-virtual {v1, v5}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->removeMessages(I)V

    .line 242
    sget-object v1, Lcom/pantech/app/music/list/module/CommonThreadHandler;->mInstance:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6a
    return-void
.end method
