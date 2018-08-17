.class public Lcom/pantech/app/music/common/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;,
        Lcom/pantech/app/music/common/MusicUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 221
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 222
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static GetClassName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    if-eqz p0, :cond_23

    .line 284
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 285
    .local v0, "activitymanager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "runningtaskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 287
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 290
    .end local v0    # "activitymanager":Landroid/app/ActivityManager;
    .end local v1    # "runningtaskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static addQueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    .registers 4
    .param p0, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p1, "play"    # Z

    .prologue
    .line 438
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 440
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p0, p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 445
    :cond_9
    :goto_9
    return-void

    .line 441
    :catch_a
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static bindToService(Landroid/app/Activity;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;
    .registers 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;
    .registers 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/content/ServiceConnection;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 52
    .local v1, "realActivity":Landroid/app/Activity;
    if-nez v1, :cond_8

    .line 53
    move-object v1, p0

    .line 56
    :cond_8
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "cw":Landroid/content/ContextWrapper;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    new-instance v2, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;

    invoke-direct {v2, p1}, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 59
    .local v2, "sb":Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 60
    sget-object v4, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v4, "MusicUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindToService() size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    if-nez v6, :cond_54

    :goto_43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v3, Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-direct {v3, v0}, Lcom/pantech/app/music/common/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 65
    :goto_53
    return-object v3

    .line 61
    :cond_54
    sget-object v3, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_43

    .line 64
    :cond_5b
    const-string v3, "MusicUtils"

    const-string v4, "Failed to bind to service"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v3, 0x0

    goto :goto_53
.end method

.method public static compareEachList([Lcom/pantech/app/music/list/MusicItemInfo;[Lcom/pantech/app/music/list/MusicItemInfo;)Z
    .registers 8
    .param p0, "item1"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p1, "item2"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_1d

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_21

    .line 184
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    .line 190
    .end local v0    # "i":I
    :cond_1d
    :goto_1d
    return v1

    .line 183
    .restart local v0    # "i":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 188
    :cond_21
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method public static enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)I
    .registers 5
    .param p0, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p1, "fPlay"    # Z

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "countAdded":I
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_18

    .line 417
    :try_start_5
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueLength()I

    move-result v0

    .line 418
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2, p0, p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 419
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueLength()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_19

    move-result v2

    sub-int v0, v2, v0

    .line 424
    :cond_18
    :goto_18
    return v0

    .line 420
    :catch_19
    move-exception v1

    .line 421
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method

.method public static getAlbumID()J
    .registers 4

    .prologue
    .line 367
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_f

    .line 369
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAlbumId()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    :goto_a
    return-wide v2

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 371
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 374
    :cond_f
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public static getDuration()J
    .registers 4

    .prologue
    .line 390
    const-wide/16 v0, 0x0

    .line 391
    .local v0, "duration":J
    sget-object v3, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v3, :cond_c

    .line 393
    :try_start_6
    sget-object v3, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->duration()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 398
    :cond_c
    :goto_c
    return-wide v0

    .line 394
    :catch_d
    move-exception v2

    .line 395
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 309
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 310
    .local v1, "start":I
    if-gez v1, :cond_9

    .line 311
    const/4 v1, 0x0

    .line 313
    :cond_9
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 314
    .local v0, "end":I
    if-gez v0, :cond_15

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 317
    :cond_15
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMusicPlaying()Z
    .registers 3

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, "is_playing":Z
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    .line 269
    :try_start_5
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 277
    :cond_b
    :goto_b
    return v1

    .line 271
    :catch_c
    move-exception v0

    .line 273
    .local v0, "e1":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getPlayingID()J
    .registers 4

    .prologue
    .line 345
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_f

    .line 347
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    :goto_a
    return-wide v2

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 349
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 352
    :cond_f
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public static getPosition()J
    .registers 4

    .prologue
    .line 402
    const-wide/16 v2, 0x0

    .line 403
    .local v2, "position":J
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    .line 405
    :try_start_6
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->position()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 410
    :cond_c
    :goto_c
    return-wide v2

    .line 406
    :catch_d
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "musicList":[Lcom/pantech/app/music/list/MusicItemInfo;
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    .line 381
    :try_start_5
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 386
    :cond_b
    :goto_b
    return-object v1

    .line 382
    :catch_c
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public static getQueueLength()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 321
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v2, :cond_6

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    return v1

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_6
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueLength()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 326
    :catch_d
    move-exception v0

    .line 327
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static getQueuePosition()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 333
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v2, :cond_6

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    return v1

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_6
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueuePosition()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 338
    :catch_d
    move-exception v0

    .line 339
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static isPlaying()Z
    .registers 2

    .prologue
    .line 356
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_f

    .line 358
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    :goto_a
    return v1

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 360
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 363
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static make24TimeString(Landroid/content/Context;III)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hours"    # I
    .param p2, "mins"    # I
    .param p3, "secs"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    const v2, 0x7f0801c4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "durationFormat":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 251
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 252
    .local v1, "timeArgs":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 253
    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 254
    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 255
    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 256
    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeTextToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I
    .param p2, "duration"    # I

    .prologue
    .line 521
    if-eqz p0, :cond_f

    .line 522
    const v1, 0x10306db

    .line 523
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 525
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 527
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 511
    if-eqz p0, :cond_f

    .line 512
    const v1, 0x10306db

    .line 513
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 515
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 517
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # J

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    .line 225
    cmp-long v2, p1, v8

    if-gez v2, :cond_4d

    const v2, 0x7f0801c5

    :goto_c
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "durationFormat":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 234
    .local v1, "timeArgs":[Ljava/lang/Object;
    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 235
    const/4 v2, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 236
    const/4 v2, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 237
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 238
    const/4 v2, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 240
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 225
    .end local v0    # "durationFormat":Ljava/lang/String;
    .end local v1    # "timeArgs":[Ljava/lang/Object;
    :cond_4d
    const v2, 0x7f0801c4

    goto :goto_c
.end method

.method public static nextRequest()V
    .registers 6

    .prologue
    .line 478
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    .line 480
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const/4 v2, 0x1

    const-wide/16 v4, 0x1f4

    invoke-interface {v1, v2, v4, v5}, Lcom/pantech/app/music/service/IMusicPlaybackService;->next(ZJ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    :cond_c
    :goto_c
    return-void

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 482
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "nextRequest() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static playAll(Landroid/content/Context;Lcom/pantech/app/music/service/IMusicPlaybackService;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p2, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 128
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playAll(position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-nez p1, :cond_24

    .line 179
    :goto_23
    return-void

    .line 134
    :cond_24
    if-eqz p2, :cond_29

    :try_start_26
    array-length v6, p2

    if-nez v6, :cond_45

    .line 135
    :cond_29
    const-string v5, "MusicUtils"

    const-string v6, "attempt to play empty song list"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const v5, 0x7f0800b4

    invoke-static {p0, v5}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 138
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Lcom/pantech/app/music/service/IMusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3b} :catch_3c

    goto :goto_23

    .line 176
    :catch_3c
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "MusicUtils"

    const-string v6, "MusicUtils : RemoteException..."

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 158
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_45
    :try_start_45
    const-string v6, "PlayAll check duplicate"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 159
    if-eq p3, v9, :cond_b5

    array-length v6, p2

    if-le v6, p3, :cond_b5

    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b5

    .line 160
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    .line 161
    .local v4, "uri":Landroid/net/Uri;
    aget-object v6, p2, p3

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "id":Ljava/lang/String;
    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    .line 163
    .local v2, "playlist":[Lcom/pantech/app/music/list/MusicItemInfo;
    aget-object v6, p2, p3

    invoke-virtual {v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b3

    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, p3

    invoke-virtual {v7, p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 164
    .local v3, "streamCheck":Z
    :goto_85
    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    if-eqz v3, :cond_b5

    :cond_a8
    invoke-static {p2, v2}, Lcom/pantech/app/music/common/MusicUtils;->compareEachList([Lcom/pantech/app/music/list/MusicItemInfo;[Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 165
    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->play()V

    goto/16 :goto_23

    .end local v3    # "streamCheck":Z
    :cond_b3
    move v3, v5

    .line 163
    goto :goto_85

    .line 170
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "playlist":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_b5
    if-gez p3, :cond_b8

    .line 171
    const/4 p3, 0x0

    .line 173
    :cond_b8
    invoke-interface {p1, p2, p3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 174
    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->play()V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_be} :catch_3c

    goto/16 :goto_23
.end method

.method public static playAll(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 124
    sget-object v0, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-static {p0, v0, p1, p2}, Lcom/pantech/app/music/common/MusicUtils;->playAll(Landroid/content/Context;Lcom/pantech/app/music/service/IMusicPlaybackService;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 125
    return-void
.end method

.method public static prevRequest()V
    .registers 6

    .prologue
    .line 488
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    .line 490
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const/4 v2, 0x1

    const-wide/16 v4, 0x1f4

    invoke-interface {v1, v2, v4, v5}, Lcom/pantech/app/music/service/IMusicPlaybackService;->prev(ZJ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    :cond_c
    :goto_c
    return-void

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 492
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "prevRequest() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/common/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # I

    .prologue
    const/4 v7, 0x0

    .line 195
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 205
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .line 199
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_9
    if-lez p6, :cond_2c

    .line 200
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_2c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 202
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_34} :catch_36

    move-result-object v1

    goto :goto_8

    .line 204
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_36
    move-exception v6

    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 205
    goto :goto_8
.end method

.method public static rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 4
    .param p0, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 448
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 450
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 455
    :cond_9
    :goto_9
    return-void

    .line 451
    :catch_a
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "rearrangeQueue() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static refreshQueue()V
    .registers 3

    .prologue
    .line 458
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 460
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->refreshQueue()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    :cond_9
    :goto_9
    return-void

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 462
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "rearrangeQueue() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static removeQueue([J)V
    .registers 3
    .param p0, "audioIds"    # [J

    .prologue
    .line 428
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 430
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->removeQueues([J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 435
    :cond_9
    :goto_9
    return-void

    .line 431
    :catch_a
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public static setQueuePosition(I)V
    .registers 5
    .param p0, "position"    # I

    .prologue
    .line 468
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_b

    .line 470
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const-wide/16 v2, 0x1f4

    invoke-interface {v1, p0, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->setQueuePosition(IJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 475
    :cond_b
    :goto_b
    return-void

    .line 471
    :catch_c
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "setQueuePosition() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 549
    if-eqz p0, :cond_12

    .line 550
    const v1, 0x10306db

    .line 551
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 553
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 555
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_12
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I
    .param p2, "duration"    # I

    .prologue
    .line 558
    if-eqz p0, :cond_11

    .line 559
    const v1, 0x10306db

    .line 560
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 562
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 564
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_11
    return-void
.end method

.method public static showToast(Landroid/content/Context;Landroid/widget/Toast;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "resID"    # I

    .prologue
    const/4 v2, 0x0

    .line 567
    if-eqz p0, :cond_14

    .line 568
    const v1, 0x10306db

    .line 569
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 571
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    if-nez p1, :cond_15

    .line 572
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 578
    :goto_11
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 580
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_14
    return-void

    .line 574
    .restart local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .restart local v1    # "theme":I
    :cond_15
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 576
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_11
.end method

.method public static showToast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 583
    if-eqz p0, :cond_14

    .line 584
    const v1, 0x10306db

    .line 585
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 587
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    if-nez p1, :cond_15

    .line 588
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 594
    :goto_11
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 596
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_14
    return-void

    .line 590
    .restart local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .restart local v1    # "theme":I
    :cond_15
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 592
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_11
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 531
    if-eqz p0, :cond_12

    .line 532
    const v1, 0x10306db

    .line 533
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 535
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 537
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_12
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 540
    if-eqz p0, :cond_11

    .line 541
    const v1, 0x10306db

    .line 542
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 544
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 546
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_11
    return-void
.end method

.method public static togglePlay()V
    .registers 3

    .prologue
    .line 498
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_11

    .line 500
    :try_start_4
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 501
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->pause()V

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->play()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_11

    .line 504
    :catch_18
    move-exception v0

    .line 505
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    const-string v2, "togglePlay() service is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V
    .registers 6
    .param p0, "token"    # Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .prologue
    .line 69
    if-nez p0, :cond_a

    .line 70
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_9
    :goto_9
    return-void

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 74
    .local v0, "cw":Landroid/content/ContextWrapper;
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;

    .line 76
    .local v1, "sb":Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;
    if-nez v1, :cond_1e

    .line 77
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 81
    :cond_1e
    const-string v3, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindFromService sConnectionMap Size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    if-nez v2, :cond_4a

    const/4 v2, 0x0

    :goto_30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 84
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 89
    const/4 v2, 0x0

    sput-object v2, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    goto :goto_9

    .line 81
    :cond_4a
    sget-object v2, Lcom/pantech/app/music/common/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    goto :goto_30
.end method
