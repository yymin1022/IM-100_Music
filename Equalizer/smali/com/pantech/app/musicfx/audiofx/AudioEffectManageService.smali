.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.super Landroid/app/Service;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;,
        Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;,
        Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field public static final BASSBOOST_DEFAULT_VALUE:I = 0x1f4

.field public static final LOUDNESSMAXIMIZER_DEFAULT_VALUE:I = 0x0

.field public static final TREBLEENHANCE_DEFAULT_VALUE:I = 0x1f4

.field public static final VIRTUALIZER_DEFAULT_VALUE:I = 0x1f4

.field static final mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;",
            ">;"
        }
    .end annotation
.end field

.field static final mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;",
            ">;"
        }
    .end annotation
.end field

.field static final mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isChangeDevice:Z

.field private mAudioEffectServiceHandler:Landroid/os/Handler;

.field private mBTHeadsetPluged:Z

.field private mBackupEJHeadsetFlag:Z

.field private mBackupSTONEFlag:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mDirectEQSettingReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;

.field private mEJHeadsetPluged:Z

.field private mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

.field private mHeadsetConnectionReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

.field private mSTONEPluged:Z

.field private mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mToastHandler:Landroid/os/Handler;

.field serviceConnectListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBinder:Landroid/os/IBinder;

    .line 74
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 76
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    .line 77
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    .line 80
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    .line 81
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupSTONEFlag:Z

    .line 82
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupEJHeadsetFlag:Z

    .line 84
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isChangeDevice:Z

    .line 89
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mHeadsetConnectionReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    .line 91
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mDirectEQSettingReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mAudioEffectServiceHandler:Landroid/os/Handler;

    .line 744
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mToastHandler:Landroid/os/Handler;

    .line 1500
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->serviceConnectListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->switchStoneEQ(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mAudioEffectServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setStoneConnection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setProcessKill(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->backupEffect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->restoreEffect(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupEJHeadsetFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupEJHeadsetFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupSTONEFlag:Z

    return v0
.end method

.method static synthetic access$902(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupSTONEFlag:Z

    return p1
.end method

.method private declared-synchronized backupEffect(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 934
    monitor-enter p0

    :try_start_1
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 936
    .local v0, "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 938
    .local v2, "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    invoke-virtual {v2, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->backupEffect(I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 934
    .end local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_1b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 940
    .restart local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized clearAudioEffectInstance()V
    .registers 3

    .prologue
    .line 973
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    const-string v1, "clearAudioEffectInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffectAll()V

    .line 977
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_14

    .line 978
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 980
    :cond_14
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1d

    .line 981
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 982
    :cond_1d
    monitor-exit p0

    return-void

    .line 973
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disableEffects(I)V
    .registers 6
    .param p1, "audioSessionID"    # I

    .prologue
    .line 873
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 875
    .local v0, "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    if-eqz v0, :cond_41

    .line 877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 878
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 879
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 880
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 881
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 882
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V

    .line 884
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableEffects audioSessionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 886
    :cond_41
    monitor-exit p0

    return-void

    .line 873
    .end local v0    # "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMovieSnapshots(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .registers 3
    .param p1, "effectNum"    # I

    .prologue
    .line 1468
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1470
    invoke-static {p1}, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->getSnapshot(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v0

    .line 1477
    :goto_a
    return-object v0

    .line 1472
    :cond_b
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isQSoundSolution()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1474
    invoke-static {p1}, Lcom/pantech/app/musicfx/common/SnapshotsQSound;->getSnapshot(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v0

    goto :goto_a

    .line 1477
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private processAudioEffectOpenClose(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    if-eqz p2, :cond_e3

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 341
    .local v9, "action":Ljava/lang/String;
    const-string v0, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    const-string v0, "android.media.extra.AUDIO_SESSION"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 344
    .local v2, "audioSessionID":I
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AudioSessionID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isChangeDevice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isChangeDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    if-eqz v1, :cond_168

    if-eqz v2, :cond_168

    .line 349
    if-eqz v9, :cond_224

    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_224

    .line 355
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 357
    .local v10, "oldSessionID":Ljava/lang/Integer;
    if-eqz v10, :cond_c9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_c9

    .line 359
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffects(I)V

    .line 362
    const-string v0, "VMusicFX_Service"

    const-string v3, "###########################################"

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effect Handler Leak.Detected. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old Session ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "VMusicFX_Service"

    const-string v3, "Force remove handler"

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "VMusicFX_Service"

    const-string v3, "###########################################"

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_c9
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isMVAvailable()Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, "com.pantech.app.movie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 375
    invoke-direct {p0, p2, v2, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setMovieEffect(Landroid/content/Intent;ILjava/lang/String;)V

    .line 443
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "audioSessionID":I
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "oldSessionID":Ljava/lang/Integer;
    :cond_e3
    :goto_e3
    return-void

    .line 379
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "audioSessionID":I
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v10    # "oldSessionID":Ljava/lang/Integer;
    :cond_e4
    if-eqz v10, :cond_f0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_f0

    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isChangeDevice:Z

    if-eqz v0, :cond_20a

    .line 381
    :cond_f0
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionID is not equal. Set Effect! oldSessionID/audioSessionID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v11

    .line 385
    .local v11, "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    if-eqz v0, :cond_183

    .line 386
    const/4 v3, 0x1

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    iget-object v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z

    .line 399
    :goto_128
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    if-eqz v0, :cond_1d7

    .line 400
    const/4 v3, 0x2

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    .line 404
    :goto_134
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    if-eqz v0, :cond_1e1

    .line 405
    const/4 v3, 0x3

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZI)Z

    .line 409
    :goto_141
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    if-eqz v0, :cond_1ec

    .line 410
    const/4 v3, 0x4

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    .line 414
    :goto_14d
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    if-eqz v0, :cond_1f6

    .line 415
    const/4 v3, 0x5

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    .line 419
    :goto_159
    iget-boolean v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    if-eqz v0, :cond_200

    .line 420
    const/4 v3, 0x6

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    .line 428
    .end local v11    # "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :goto_165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isChangeDevice:Z

    .line 441
    .end local v10    # "oldSessionID":Ljava/lang/Integer;
    :cond_168
    :goto_168
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  END:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e3

    .line 389
    .restart local v10    # "oldSessionID":Ljava/lang/Integer;
    .restart local v11    # "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :cond_183
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isStoneConnected()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 390
    const/16 v0, -0x64

    iput-short v0, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 391
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionID is not equal. Set Effect! settings.mEQPreset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for STONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v3, 0x1

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stoneEQ:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z

    .line 394
    const/4 v5, 0x1

    iget-short v6, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stoneEQ:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V

    goto/16 :goto_128

    .line 397
    :cond_1cc
    const/4 v3, 0x1

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z

    goto/16 :goto_128

    .line 402
    :cond_1d7
    const/4 v3, 0x2

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    goto/16 :goto_134

    .line 407
    :cond_1e1
    const/4 v3, 0x3

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZI)Z

    goto/16 :goto_141

    .line 412
    :cond_1ec
    const/4 v3, 0x4

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    goto/16 :goto_14d

    .line 417
    :cond_1f6
    const/4 v3, 0x5

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    goto/16 :goto_159

    .line 422
    :cond_200
    const/4 v3, 0x6

    iget-short v4, v11, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    goto/16 :goto_165

    .line 426
    .end local v11    # "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :cond_20a
    const-string v0, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Same audio sessionID. No set effect! audioSessionID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_165

    .line 430
    .end local v10    # "oldSessionID":Ljava/lang/Integer;
    :cond_224
    if-eqz v9, :cond_168

    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_168

    .line 436
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffects(I)V

    goto/16 :goto_168
.end method

.method private declared-synchronized releaseEffectAll()V
    .registers 5

    .prologue
    .line 916
    monitor-enter p0

    :try_start_1
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 918
    .local v0, "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 920
    .local v2, "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 921
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 922
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 923
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 924
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 925
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_b

    .line 916
    .end local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 928
    .restart local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_33
    :try_start_33
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_30

    .line 929
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized releaseEffectAllExceptMe(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)V
    .registers 8
    .param p1, "me"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .prologue
    .line 891
    monitor-enter p0

    :try_start_1
    const-string v3, "VMusicFX_Service"

    const-string v4, "releaseEffectAllExceptMe()"

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 895
    .local v0, "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 898
    .local v2, "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    if-eqz p1, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 900
    :cond_26
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 901
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 902
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 903
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 904
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 905
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 907
    const-string v3, "VMusicFX_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEffectAllExceptMe audioSessionID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_59

    goto :goto_12

    .line 891
    .end local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_59
    move-exception v3

    monitor-exit p0

    throw v3

    .line 910
    .restart local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5c
    :try_start_5c
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    .line 911
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized releaseEffects(I)V
    .registers 6
    .param p1, "audioSessionID"    # I

    .prologue
    .line 853
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 855
    .local v0, "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEffects("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    if-eqz v0, :cond_5f

    .line 859
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 860
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 861
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 862
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 863
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 864
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 866
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEffects audioSessionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_61

    .line 868
    :cond_5f
    monitor-exit p0

    return-void

    .line 853
    .end local v0    # "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_61
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized restoreEffect(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 945
    monitor-enter p0

    :try_start_1
    sget-object v3, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 947
    .local v0, "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 949
    .local v2, "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    invoke-virtual {v2, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->restoreEffect(I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 945
    .end local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_1b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 951
    .restart local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setEffects(Ljava/lang/String;IIIZ)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I
    .param p5, "onoff"    # Z

    .prologue
    .line 803
    monitor-enter p0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZI)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEffects(Ljava/lang/String;IIIZI)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I
    .param p5, "onoff"    # Z
    .param p6, "virtualizerType"    # I

    .prologue
    .line 818
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZI)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEffects(Ljava/lang/String;III[IZ)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I
    .param p5, "bandLevels"    # [I
    .param p6, "onoff"    # Z

    .prologue
    .line 789
    monitor-enter p0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    :try_start_9
    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZI)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEffects(Ljava/lang/String;III[IZI)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I
    .param p5, "bandLevels"    # [I
    .param p6, "onoff"    # Z
    .param p7, "virtualizerType"    # I

    .prologue
    .line 824
    monitor-enter p0

    const/4 v7, 0x1

    .line 826
    .local v7, "nRet":Z
    :try_start_2
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 828
    .local v0, "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    if-nez v0, :cond_33

    .line 830
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make New AudioEffectInstance Instance() type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .end local v0    # "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    invoke-direct {v0, p1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .restart local v0    # "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :cond_33
    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 834
    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->controlEffect(III[IZI)Z

    move-result v7

    .line 836
    if-nez v7, :cond_52

    .line 838
    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffectAllExceptMe(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)V

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 840
    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->controlEffect(III[IZI)Z

    move-result v7

    .line 842
    const v1, 0x7f050030

    invoke-static {p0, v1}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 845
    :cond_52
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_5d

    .line 847
    monitor-exit p0

    return v7

    .line 824
    .end local v0    # "audioEffectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setHeadsetPluged()V
    .registers 5

    .prologue
    .line 1485
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1487
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    .line 1488
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    .line 1489
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isStoneConnected()Z

    .line 1490
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadsetPluged mEJHeadsetPluged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBTHeadsetPluged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSTONEPluged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private setMovieEffect(Landroid/content/Intent;ILjava/lang/String;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "audioSessionID"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1419
    const-string v0, "KEY_SNAPSHOT_ONOFF"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1421
    const/4 v9, 0x0

    .line 1422
    .local v9, "movieSetting":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    const-string v0, "KEY_SNAPSHOT_ONOFF"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1423
    .local v7, "effectOnOff":Z
    const-string v0, "KEY_SNAPSHOT_NUM"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1425
    .local v6, "effectNum":I
    if-eqz v7, :cond_b6

    if-ltz v6, :cond_b6

    const/4 v0, 0x5

    if-ge v6, v0, :cond_b6

    .line 1426
    invoke-direct {p0, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getMovieSnapshots(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v9

    .line 1430
    :cond_22
    :goto_22
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movie effect equalizer onoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1433
    if-eqz v9, :cond_7e

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isMVAvailable()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1435
    iget-short v3, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    iget-object v0, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    iget-boolean v5, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    .line 1436
    iget-short v0, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    iget-boolean v1, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setBassBoost(Ljava/lang/String;IIZ)Z

    .line 1437
    iget-short v3, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    iget-boolean v4, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    iget-short v5, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerType:S

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setVirtualizer(Ljava/lang/String;IIZI)Z

    .line 1438
    iget-short v0, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    iget-boolean v1, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setPresetReverb(Ljava/lang/String;IIZ)Z

    .line 1439
    iget-short v0, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    iget-boolean v1, v9, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setTrebleEnhance(Ljava/lang/String;IIZ)Z

    .line 1444
    .end local v6    # "effectNum":I
    .end local v7    # "effectOnOff":Z
    .end local v9    # "movieSetting":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :cond_7e
    const-string v0, "KEY_LOUDNESS_ONOFF"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1446
    const-string v0, "KEY_LOUDNESS_ONOFF"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1448
    .local v8, "loudnessOnOff":I
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movie effect loudness  onoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1451
    if-ltz v8, :cond_b5

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1453
    if-nez v8, :cond_bf

    .line 1454
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setLoudnessMaximizer(Ljava/lang/String;IIZ)Z

    .line 1459
    .end local v8    # "loudnessOnOff":I
    :cond_b5
    :goto_b5
    return-void

    .line 1427
    .restart local v6    # "effectNum":I
    .restart local v7    # "effectOnOff":Z
    .restart local v9    # "movieSetting":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :cond_b6
    if-nez v7, :cond_22

    .line 1428
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getMovieSnapshots(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v9

    goto/16 :goto_22

    .line 1456
    .end local v6    # "effectNum":I
    .end local v7    # "effectOnOff":Z
    .end local v9    # "movieSetting":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .restart local v8    # "loudnessOnOff":I
    :cond_bf
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setLoudnessMaximizer(Ljava/lang/String;IIZ)Z

    goto :goto_b5
.end method

.method private setProcessKill(Z)V
    .registers 6
    .param p1, "processKill"    # Z

    .prologue
    .line 1369
    :try_start_0
    const-string v2, "audioFxSettingPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1370
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ProcessKill"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1371
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1378
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :goto_13
    return-void

    .line 1373
    :catch_14
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private setStoneConnection(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 249
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 250
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_c

    .line 262
    :goto_b
    return-void

    .line 252
    :cond_c
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STONE BTA2dp. STONE ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pluged ! mBTHeadsetPluged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    if-eqz v1, :cond_6e

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 255
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STONE BTA2dp. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pluged !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    .line 261
    :goto_6b
    iput-boolean v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBackupSTONEFlag:Z

    goto :goto_b

    .line 258
    :cond_6e
    const-string v1, "VMusicFX_Service"

    const-string v2, "STONE BTA2dp. STONE not Pluged !"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-boolean v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    goto :goto_6b
.end method

.method private switchStoneEQ(Z)V
    .registers 10
    .param p1, "onoff"    # Z

    .prologue
    const/16 v3, -0x64

    .line 230
    const-string v1, "com.pantech.app.music"

    .line 231
    .local v1, "packageName":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 232
    .local v6, "oldSessionID":Ljava/lang/Integer;
    if-nez v6, :cond_f

    .line 245
    :cond_e
    :goto_e
    return-void

    .line 233
    :cond_f
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v7

    .line 234
    .local v7, "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    if-eqz p1, :cond_4f

    .line 235
    const-string v0, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STONE switchStoneEQ enable settings.mEQPreset : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v4, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", settings.isEqualizer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-boolean v0, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    if-nez v0, :cond_e

    .line 237
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stoneEQ:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    goto :goto_e

    .line 240
    :cond_4f
    const-string v0, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STONE switchStoneEQ disable settings.mEQPreset : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v4, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-short v0, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    if-ne v0, v3, :cond_e

    .line 242
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    goto :goto_e
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    const-string v0, "VMusicFX_Service"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->clearAudioEffectInstance()V

    .line 328
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 329
    :cond_13
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 330
    :cond_1c
    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mPackageAndSessionIDTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 332
    :cond_25
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 333
    return-void
.end method

.method protected getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1296
    const-string v2, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioEffectSetting PackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEffectDBSettingMap= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    sget-object v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;

    .line 1300
    .local v0, "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    if-nez v0, :cond_37

    .line 1301
    new-instance v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;

    .end local v0    # "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1303
    .restart local v0    # "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    :cond_37
    new-instance v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    invoke-direct {v1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;-><init>()V

    .line 1306
    .local v1, "tmp":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 1307
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iget-short v2, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->curPreset:S

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 1308
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iget-object v2, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    iput-object v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 1311
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    .line 1312
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    iget-short v2, v2, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    .line 1315
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    .line 1316
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    iget-short v2, v2, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->strength:S

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    .line 1319
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    .line 1320
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    iget-short v2, v2, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    .line 1322
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1324
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    .line 1325
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    iget-short v2, v2, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->strength:S

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    .line 1328
    :cond_7a
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1330
    iget-boolean v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    .line 1331
    iget-object v2, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    iget v2, v2, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    int-to-short v2, v2

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    .line 1336
    :cond_8b
    const-string v2, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STONE settings.mEQPreset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    const/16 v3, -0x64

    if-ne v2, v3, :cond_b1

    .line 1338
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isStoneConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 1342
    :cond_b1
    const-string v2, "VMusicFX_Service"

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    return-object v1
.end method

.method protected declared-synchronized getEqualizerBands(I)[I
    .registers 8
    .param p1, "audioSessionID"    # I

    .prologue
    .line 992
    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 994
    .local v1, "effectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    if-eqz v1, :cond_2a

    iget-object v4, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v4, :cond_2a

    .line 996
    iget-object v4, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getNumberOfBands()S

    move-result v3

    .line 999
    .local v3, "numOfBand":I
    new-array v0, v3, [I

    .line 1001
    .local v0, "bands":[I
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_1c
    if-ge v2, v3, :cond_2b

    .line 1003
    iget-object v4, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v4, v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getBandLevel(S)I

    move-result v4

    aput v4, v0, v2
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2d

    .line 1001
    add-int/lit8 v4, v2, 0x1

    int-to-short v2, v4

    goto :goto_1c

    .line 1009
    .end local v0    # "bands":[I
    .end local v2    # "i":S
    .end local v3    # "numOfBand":I
    :cond_2a
    const/4 v0, 0x0

    :cond_2b
    monitor-exit p0

    return-object v0

    .line 992
    .end local v1    # "effectInstance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected declared-synchronized getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 1015
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 1016
    .local v4, "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    const/4 v2, 0x0

    .line 1019
    .local v2, "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    const/4 v5, 0x0

    .line 1021
    .local v5, "forceClearEqualizer":Z
    const-string v11, "VMusicFX_Service"

    const-string v12, "getEqualizerUserPresets"

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    if-nez v11, :cond_f6

    .line 1025
    const-string v11, "VMusicFX_Service"

    const-string v12, "No EQ Preset String"

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    .line 1028
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getAudioSessionId()I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_242

    move-result v10

    .line 1032
    .local v10, "session":I
    :try_start_21
    sget-object v11, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v11, :cond_276

    .line 1034
    sget-object v11, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1036
    .local v0, "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_276

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .line 1038
    .local v8, "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    if-eqz v8, :cond_2f

    iget-object v11, v8, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v11, :cond_2f

    .line 1040
    const-string v11, "VMusicFX_Service"

    const-string v12, "Find Equalizer Instance"

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v2, v8, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :try_end_4a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_4a} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_4a} :catch_245
    .catchall {:try_start_21 .. :try_end_4a} :catchall_259

    move-object v3, v2

    .line 1047
    .end local v0    # "audioEffectInstanceCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;>;"
    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "instance":Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    .local v3, "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :goto_4b
    if-nez v3, :cond_273

    .line 1049
    :try_start_4d
    const-string v11, "VMusicFX_Service"

    const-string v12, "make Equalizer Instance"

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v11, 0x0

    invoke-direct {v2, v11, v10}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;-><init>(II)V
    :try_end_5a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4d .. :try_end_5a} :catch_26f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_5a} :catch_26c
    .catchall {:try_start_4d .. :try_end_5a} :catchall_269

    .line 1052
    .end local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    const/4 v5, 0x1

    .line 1055
    :goto_5b
    if-eqz v2, :cond_232

    .line 1057
    :try_start_5d
    new-instance v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    invoke-direct {v11}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;-><init>()V

    iput-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 1059
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getNumberOfBands()S

    move-result v12

    iput-short v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    .line 1061
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mEqualizerInfo.mNumberOfBands = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-short v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v11

    if-eqz v11, :cond_d7

    .line 1065
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    const/4 v12, 0x2

    new-array v12, v12, [S

    fill-array-data v12, :array_27a

    iput-object v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    .line 1069
    :goto_9e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9f
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    array-length v11, v11

    if-ge v6, v11, :cond_f8

    .line 1070
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mEqualizerInfo.mBandLevelRange["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    .line 1067
    .end local v6    # "i":I
    :cond_d7
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getBandLevelRange()[S

    move-result-object v12

    iput-object v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S
    :try_end_df
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5d .. :try_end_df} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_df} :catch_245
    .catchall {:try_start_5d .. :try_end_df} :catchall_259

    goto :goto_9e

    .line 1123
    :catch_e0
    move-exception v1

    .line 1125
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    :goto_e1
    :try_start_e1
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_259

    .line 1133
    if-ne v5, v14, :cond_ed

    if-eqz v2, :cond_ed

    .line 1135
    :try_start_e8
    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v5, 0x0

    .line 1140
    :cond_ed
    if-eqz v9, :cond_f2

    .line 1141
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 1144
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_f2
    :goto_f2
    invoke-virtual {p0, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->recorverValue(Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;)Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_242

    move-result-object v4

    .line 1147
    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v10    # "session":I
    :cond_f6
    monitor-exit p0

    return-object v4

    .line 1072
    .restart local v6    # "i":I
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v10    # "session":I
    :cond_f8
    :try_start_f8
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getNumberOfPresets()I

    move-result v12

    iput v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    .line 1074
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mEqualizerInfo.mNumberOfPresets = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v12, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v12, v12, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    .line 1078
    const/4 v6, 0x0

    .local v6, "i":S
    :goto_12d
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_174

    .line 1080
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getPresetName(S)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 1082
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mEqualizerInfo.mPresetText["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v11, v6, 0x1

    int-to-short v6, v11

    goto :goto_12d

    .line 1085
    :cond_174
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v12, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-short v12, v12, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    new-array v12, v12, [I

    iput-object v12, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    .line 1088
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v11

    if-eqz v11, :cond_1a2

    .line 1090
    const-string v11, "VMusicFX_Service"

    const-string v12, "NXP SET BAND LEVEL"

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setBandLevel(SS)V

    .line 1092
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setBandLevel(SS)V

    .line 1094
    const/4 v11, 0x2

    const v12, 0x17318

    invoke-virtual {v2, v11, v12}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setCenterFreq(SI)V

    .line 1095
    const/4 v11, 0x2

    const/16 v12, 0x3c

    invoke-virtual {v2, v11, v12}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setQFactor(SS)V

    .line 1099
    :cond_1a2
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v11

    if-eqz v11, :cond_1ec

    .line 1101
    const/4 v6, 0x0

    :goto_1a9
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    array-length v11, v11

    if-ge v6, v11, :cond_230

    .line 1106
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    invoke-virtual {v2, v6}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getCenterFreq(S)I

    move-result v12

    aput v12, v11, v6

    .line 1108
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NXP mEqualizerInfo.mCenterFreq["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    aget v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    add-int/lit8 v11, v6, 0x1

    int-to-short v6, v11

    goto :goto_1a9

    .line 1113
    :cond_1ec
    const/4 v6, 0x0

    :goto_1ed
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    array-length v11, v11

    if-ge v6, v11, :cond_230

    .line 1115
    iget-object v11, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v11, v11, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    invoke-virtual {v2, v6}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getCenterFreq(S)I

    move-result v12

    aput v12, v11, v6

    .line 1116
    const-string v11, "VMusicFX_Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mEqualizerInfo.mCenterFreq["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v13, v13, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    aget v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    add-int/lit8 v11, v6, 0x1

    int-to-short v6, v11

    goto :goto_1ed

    .line 1120
    :cond_230
    iget-object v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :try_end_232
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f8 .. :try_end_232} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f8 .. :try_end_232} :catch_245
    .catchall {:try_start_f8 .. :try_end_232} :catchall_259

    .line 1133
    .end local v6    # "i":S
    :cond_232
    if-ne v5, v14, :cond_23b

    if-eqz v2, :cond_23b

    .line 1135
    :try_start_236
    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v5, 0x0

    .line 1140
    :cond_23b
    if-eqz v9, :cond_f2

    .line 1141
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V
    :try_end_240
    .catchall {:try_start_236 .. :try_end_240} :catchall_242

    goto/16 :goto_f2

    .line 1015
    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .end local v4    # "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .end local v5    # "forceClearEqualizer":Z
    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v10    # "session":I
    :catchall_242
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1127
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v4    # "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .restart local v5    # "forceClearEqualizer":Z
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v10    # "session":I
    :catch_245
    move-exception v1

    .line 1129
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_246
    :try_start_246
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_249
    .catchall {:try_start_246 .. :try_end_249} :catchall_259

    .line 1133
    if-ne v5, v14, :cond_252

    if-eqz v2, :cond_252

    .line 1135
    :try_start_24d
    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v5, 0x0

    .line 1140
    :cond_252
    if-eqz v9, :cond_f2

    .line 1141
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_f2

    .line 1133
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_259
    move-exception v11

    :goto_25a
    if-ne v5, v14, :cond_263

    if-eqz v2, :cond_263

    .line 1135
    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v5, 0x0

    .line 1140
    :cond_263
    if-eqz v9, :cond_268

    .line 1141
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    :cond_268
    throw v11
    :try_end_269
    .catchall {:try_start_24d .. :try_end_269} :catchall_242

    .line 1133
    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :catchall_269
    move-exception v11

    move-object v2, v3

    .end local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    goto :goto_25a

    .line 1127
    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :catch_26c
    move-exception v1

    move-object v2, v3

    .end local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    goto :goto_246

    .line 1123
    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :catch_26f
    move-exception v1

    move-object v2, v3

    .end local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    goto/16 :goto_e1

    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    :cond_273
    move-object v2, v3

    .end local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    goto/16 :goto_5b

    :cond_276
    move-object v3, v2

    .end local v2    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    .restart local v3    # "equalizer":Lcom/pantech/app/musicfx/effect/EffectEqualizer;
    goto/16 :goto_4b

    .line 1065
    nop

    :array_27a
    .array-data 2
        -0x2bcs
        0x2bcs
    .end array-data
.end method

.method protected declared-synchronized isHeadsetConnected()Z
    .registers 3

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    or-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isStoneConnected()Z
    .registers 4

    .prologue
    .line 1495
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSTONEConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSTONEPluged:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return v0

    .line 1495
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 519
    const-string v0, "VMusicFX_Service"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 451
    const-string v2, "VMusicFX_Service"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iput-boolean v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEJHeadsetPluged:Z

    .line 454
    iput-boolean v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mBTHeadsetPluged:Z

    .line 458
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->serviceConnectListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v2, p0, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 463
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mHeadsetConnectionReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 467
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.pantech.music.player.action.SET_PRESET"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "intentDirectEQsetting":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mDirectEQSettingReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setProcessKill(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->registerSystemChangeListener()V

    .line 474
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEqualizerInfo:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 476
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setHeadsetPluged()V

    .line 478
    const-string v2, "VMusicFX_Service"

    const-string v3, "onCreate() Over"

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 496
    const-string v0, "VMusicFX_Service"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->clearAudioEffectInstance()V

    .line 500
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mHeadsetConnectionReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mDirectEQSettingReceiver:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setProcessKill(Z)V

    .line 506
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_24

    .line 508
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    :cond_24
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 513
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 1357
    const-string v0, "VMusicFX_Service"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->clearAudioEffectInstance()V

    .line 1361
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 1362
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 485
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->processAudioEffectOpenClose(Landroid/content/Context;Landroid/content/Intent;)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public recorverValue(Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;)Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .registers 11
    .param p1, "equalizerInfo"    # Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1157
    if-eqz p1, :cond_154

    .line 1161
    iget-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    if-gtz v1, :cond_43

    .line 1163
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 1164
    const/16 v1, 0xa

    iput-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    .line 1175
    :goto_15
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equalizerInfo.mNumberOfBands "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value Fail.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_43
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    if-nez v1, :cond_75

    .line 1182
    const/16 v0, 0x5dc

    .line 1184
    .local v0, "tempRange":S
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 1185
    const/16 v0, 0x2bc

    .line 1189
    :cond_51
    :goto_51
    new-array v1, v6, [S

    iput-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    .line 1190
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    mul-int/lit8 v2, v0, -0x1

    int-to-short v2, v2

    aput-short v2, v1, v4

    .line 1191
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aput-short v0, v1, v5

    .line 1193
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v1, "VMusicFX_Service"

    const-string v2, "equalizerInfo.mBandLevelRange[2] Value Fail.."

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .end local v0    # "tempRange":S
    :cond_75
    iget v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    if-gtz v1, :cond_ab

    .line 1200
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEQFix()Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 1201
    const/16 v1, 0x14

    iput v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    .line 1207
    :goto_83
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equalizerInfo.mNumberOfPresets Value Fail.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_ab
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    if-nez v1, :cond_ca

    .line 1214
    invoke-static {p0, v4, v4}, Lcom/pantech/app/musicfx/utils/Utils;->getEqualizerTextStrArray(Landroid/content/Context;ZZ)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    .line 1216
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v1, "VMusicFX_Service"

    const-string v2, "equalizerInfo.mPresetText Value Fail.."

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_ca
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    if-nez v1, :cond_154

    .line 1223
    iget-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    new-array v1, v1, [I

    iput-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    .line 1225
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 1227
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/16 v2, 0x7918

    aput v2, v1, v4

    .line 1228
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xf618

    aput v2, v1, v5

    .line 1229
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x1e848

    aput v2, v1, v6

    .line 1230
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x3d090

    aput v2, v1, v7

    .line 1231
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x7a120

    aput v2, v1, v8

    .line 1232
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x5

    const v3, 0xf4240

    aput v3, v1, v2

    .line 1233
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x6

    const v3, 0x1e8480

    aput v3, v1, v2

    .line 1234
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x7

    const v3, 0x3d0900

    aput v3, v1, v2

    .line 1235
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/16 v2, 0x8

    const v3, 0x7a1200

    aput v3, v1, v2

    .line 1236
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/16 v2, 0x9

    const v3, 0xf42400

    aput v3, v1, v2

    .line 1271
    :goto_126
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equalizerInfo.mCenterFreq["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Value Fail.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v1, "VMusicFX_Service"

    const-string v2, "############################"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_154
    return-object p1

    .line 1165
    :cond_155
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isQSoundSolution()Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 1167
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEQBandsFew()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 1168
    const/4 v1, 0x7

    iput-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    goto/16 :goto_15

    .line 1170
    :cond_166
    const/16 v1, 0x8

    iput-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    goto/16 :goto_15

    .line 1173
    :cond_16c
    const/4 v1, 0x5

    iput-short v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    goto/16 :goto_15

    .line 1186
    .restart local v0    # "tempRange":S
    :cond_171
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isQSoundSolution()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1187
    const/16 v0, 0x708

    goto/16 :goto_51

    .line 1202
    .end local v0    # "tempRange":S
    :cond_17b
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEQOverQSound()Z

    move-result v1

    if-eqz v1, :cond_187

    .line 1203
    const/16 v1, 0x16

    iput v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    goto/16 :goto_83

    .line 1205
    :cond_187
    const/16 v1, 0xa

    iput v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    goto/16 :goto_83

    .line 1238
    :cond_18d
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isQSoundSolution()Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 1240
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEQBandsFew()Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 1242
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x2ab98

    aput v2, v1, v4

    .line 1243
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x3d090

    aput v2, v1, v5

    .line 1244
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x7a120

    aput v2, v1, v6

    .line 1245
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xf4240

    aput v2, v1, v7

    .line 1246
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x1e8480

    aput v2, v1, v8

    .line 1247
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x5

    const v3, 0x3d0900

    aput v3, v1, v2

    .line 1248
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x6

    const v3, 0x557300

    aput v3, v1, v2

    goto/16 :goto_126

    .line 1252
    :cond_1ce
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x2ab98

    aput v2, v1, v4

    .line 1253
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x3d090

    aput v2, v1, v5

    .line 1254
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x7a120

    aput v2, v1, v6

    .line 1255
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xf4240

    aput v2, v1, v7

    .line 1256
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x1e8480

    aput v2, v1, v8

    .line 1257
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x5

    const v3, 0x3d0900

    aput v3, v1, v2

    .line 1258
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x6

    const v3, 0x7a1200

    aput v3, v1, v2

    .line 1259
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const/4 v2, 0x7

    const v3, 0xf4240

    aput v3, v1, v2

    goto/16 :goto_126

    .line 1264
    :cond_20b
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xea60

    aput v2, v1, v4

    .line 1265
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x38270

    aput v2, v1, v5

    .line 1266
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xde2b0

    aput v2, v1, v6

    .line 1267
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0x36ee80

    aput v2, v1, v7

    .line 1268
    iget-object v1, p1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    const v2, 0xd59f80

    aput v2, v1, v8

    goto/16 :goto_126
.end method

.method public registerSystemChangeListener()V
    .registers 3

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1407
    :goto_4
    return-void

    .line 1386
    :cond_5
    new-instance v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$2;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1404
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1405
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method protected declared-synchronized releaseEffectDirectly(IZ)Z
    .registers 6
    .param p1, "audioSessionID"    # I
    .param p2, "fRelease"    # Z

    .prologue
    .line 956
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEffectDirectly(audioSessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fRelease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    if-eqz p2, :cond_31

    .line 960
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffects(I)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_35

    .line 967
    :goto_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 964
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->disableEffects(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_2e

    .line 956
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setBassBoost(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBassBoost packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  strength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 667
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_51

    .line 669
    const/4 v0, 0x1

    .line 672
    :goto_4d
    monitor-exit p0

    return v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4d

    .line 661
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEffectDBSettings(Ljava/lang/String;II[IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I
    .param p4, "bandLevels"    # [I
    .param p5, "onoff"    # Z

    .prologue
    .line 1283
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;

    .line 1285
    .local v0, "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    if-nez v0, :cond_14

    .line 1286
    new-instance v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;

    .end local v0    # "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1288
    .restart local v0    # "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    :cond_14
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->setEffectDBSetting(II[IZ)V

    .line 1290
    sget-object v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->mEffectDBSettingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1291
    monitor-exit p0

    return-void

    .line 1283
    .end local v0    # "audioEffectDBSetting":Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized setEqualizer(Ljava/lang/String;II[IZ)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "bandLevels"    # [I
    .param p5, "onoff"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 617
    monitor-enter p0

    :try_start_3
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQualizer packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  presetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    if-nez p5, :cond_a0

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isStoneConnected()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 622
    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stoneEQ:[S

    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object p4

    .line 623
    const/16 p3, -0x64

    .line 624
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQualizer packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  EQUALIZER_PRESET_TEMP presetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v3, 0x1

    if-nez p5, :cond_9c

    move v6, v7

    :goto_83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 628
    const/4 v2, 0x1

    if-nez p5, :cond_9e

    move v5, v7

    :goto_92
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_be

    :cond_99
    move v0, v7

    .line 655
    :goto_9a
    monitor-exit p0

    return v0

    :cond_9c
    move v6, v8

    .line 626
    goto :goto_83

    :cond_9e
    move v5, v8

    .line 628
    goto :goto_92

    .line 633
    :cond_a0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_a7
    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 636
    sget v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-eq p3, v0, :cond_ba

    .line 638
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_be

    :cond_ba
    move v0, v7

    .line 641
    goto :goto_9a

    :cond_bc
    move v0, v8

    .line 655
    goto :goto_9a

    .line 617
    :catchall_be
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setEqualizerPreview(Ljava/lang/String;II[I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "bandLevels"    # [I

    .prologue
    .line 609
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQualizerPreview  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  presetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;III[IZ)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    move-result v0

    monitor-exit p0

    return v0

    .line 609
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setLoudnessMaximizer(Ljava/lang/String;IIZ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z

    .prologue
    const/4 v3, 0x6

    .line 730
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoudnessMaximizer packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  strength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 733
    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 736
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V

    .line 738
    const/4 v0, 0x1

    .line 741
    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method protected declared-synchronized setPresetReverb(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "onoff"    # Z

    .prologue
    .line 696
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPresetReverb packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  presetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 702
    const/4 v2, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_51

    .line 704
    const/4 v0, 0x1

    .line 707
    :goto_4d
    monitor-exit p0

    return v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4d

    .line 696
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setTrebleEnhance(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z

    .prologue
    .line 713
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrebleEnhance packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  strength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 719
    const/4 v2, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_51

    .line 721
    const/4 v0, 0x1

    .line 724
    :goto_4d
    monitor-exit p0

    return v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4d

    .line 713
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setVirtualizer(Ljava/lang/String;IIZI)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z
    .param p5, "virtualizerType"    # I

    .prologue
    .line 678
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualizer packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  strength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  virtualizerType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffects(Ljava/lang/String;IIIZI)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 685
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEffectDBSettings(Ljava/lang/String;II[IZ)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_5c

    .line 687
    const/4 v0, 0x1

    .line 690
    :goto_58
    monitor-exit p0

    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_58

    .line 678
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
