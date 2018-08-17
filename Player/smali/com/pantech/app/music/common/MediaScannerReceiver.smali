.class public Lcom/pantech/app/music/common/MediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    if-eqz p2, :cond_cc

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 23
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaScannerReceiver onReceive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 27
    if-eqz v0, :cond_56

    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 29
    const-string v6, "==========================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 30
    const-string v6, "ACTION_MEDIA_SCANNER_STARTED"

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 31
    const-string v6, "==========================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 33
    sget-object v7, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v7

    .line 35
    const/4 v6, 0x1

    :try_start_3f
    invoke-static {p1, v6}, Lcom/pantech/app/music/utils/StorageUtils;->setMediaScanning(Landroid/content/Context;Z)V

    .line 36
    if-eqz v5, :cond_4b

    .line 37
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/pantech/app/music/utils/StorageUtils;->setMediaScanPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :cond_4b
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.pantech.app.music.action.MEDIASCAN_STARTED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_cd

    .line 43
    :cond_56
    if-eqz v0, :cond_84

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 45
    const-string v6, "==========================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 46
    const-string v6, "ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 47
    const-string v6, "==========================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 49
    sget-object v7, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v7

    .line 51
    const/4 v6, 0x0

    :try_start_73
    invoke-static {p1, v6}, Lcom/pantech/app/music/utils/StorageUtils;->setMediaScanning(Landroid/content/Context;Z)V

    .line 53
    invoke-static {}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clearAll()V

    .line 55
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.pantech.app.music.action.MEDIASCAN_FINISHED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    monitor-exit v7
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_d0

    .line 59
    :cond_84
    if-eqz v0, :cond_cc

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_cc

    .line 64
    const-string v6, "configured"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 65
    .local v1, "connected":Z
    const-string v6, "mtp"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 66
    .local v3, "mtpEnabled":Z
    const-string v6, "ptp"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 70
    .local v4, "ptpEnabled":Z
    if-eqz v1, :cond_d3

    if-nez v3, :cond_ac

    if-eqz v4, :cond_d3

    .line 72
    :cond_ac
    invoke-static {p1, v10}, Lcom/pantech/app/music/list/utility/ListUtil;->setMtpConnection(Landroid/content/Context;Z)V

    .line 73
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.pantech.app.music.action.MTP_CONNECTED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    const-string v6, "==========================================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 76
    const-string v6, "          ***** MTP Connected *****        "

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 77
    const-string v6, "==========================================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "connected":Z
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "mtpEnabled":Z
    .end local v4    # "ptpEnabled":Z
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_cc
    :goto_cc
    return-void

    .line 40
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catchall_cd
    move-exception v6

    :try_start_ce
    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v6

    .line 56
    :catchall_d0
    move-exception v6

    :try_start_d1
    monitor-exit v7
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v6

    .line 81
    .restart local v1    # "connected":Z
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "mtpEnabled":Z
    .restart local v4    # "ptpEnabled":Z
    :cond_d3
    invoke-static {p1, v9}, Lcom/pantech/app/music/list/utility/ListUtil;->setMtpConnection(Landroid/content/Context;Z)V

    .line 82
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.pantech.app.music.action.MTP_DISCONNECTED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    const-string v6, "==========================================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 85
    const-string v6, "          ***** MTP DisConnected *****    "

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 86
    const-string v6, "==========================================="

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_cc
.end method
