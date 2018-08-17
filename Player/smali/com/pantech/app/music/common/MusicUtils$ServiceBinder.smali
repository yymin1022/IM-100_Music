.class Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2
    .param p1, "callback"    # Landroid/content/ServiceConnection;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 98
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_f

    .line 105
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 108
    :cond_f
    :try_start_f
    const-string v1, "MusicUtils"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->setMusicButtonReceiver()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_1c

    .line 113
    :goto_1b
    return-void

    .line 110
    :catch_1c
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 120
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/common/MusicUtils;->sService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 121
    return-void
.end method
