.class public Lcom/pantech/app/music/assist/MusicAutoStopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicAutoStopReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicAutoStopReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 25
    const-string v5, "ready"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 26
    .local v3, "bReady":Z
    const-string v5, "stop"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 27
    .local v2, "bAutoStop":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    const-string v5, "MusicAutoStopReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bAutoStop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-eqz v0, :cond_4e

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 31
    const-string v5, "auto_stop"

    invoke-static {p1, v5, v8}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    :cond_4d
    :goto_4d
    return-void

    .line 35
    :cond_4e
    if-eqz v3, :cond_8c

    if-nez v2, :cond_8c

    .line 36
    const-string v5, "MusicAutoStopReceiver"

    const-string v6, "onReceive() - 1 minute left before music stop"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const v5, 0x7f0800a9

    invoke-static {p1, v5}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 40
    const-string v5, "stop"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    const-string v5, "ready"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    const/high16 v5, 0x8000000

    invoke-static {p1, v8, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sput-object v5, Lcom/pantech/app/music/assist/MusicAutoStopControl;->autoStop:Landroid/app/PendingIntent;

    .line 43
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 45
    .local v1, "am":Landroid/app/AlarmManager;
    sget-object v5, Lcom/pantech/app/music/assist/MusicAutoStopControl;->autoStop:Landroid/app/PendingIntent;

    if-eqz v5, :cond_4d

    .line 46
    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    sget-object v8, Lcom/pantech/app/music/assist/MusicAutoStopControl;->autoStop:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_4d

    .line 49
    .end local v1    # "am":Landroid/app/AlarmManager;
    :cond_8c
    if-eqz v2, :cond_ab

    .line 50
    const-string v5, "MusicAutoStopReceiver"

    const-string v6, "onReceive() - music stop now by user alarm"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const v5, 0x7f0800ad

    invoke-static {p1, v5, v9}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    .line 53
    const-string v5, "auto_stop"

    invoke-static {p1, v5, v8}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.pantech.app.music.musicservicecommand.pause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, "i":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4d

    .line 59
    .end local v4    # "i":Landroid/content/Intent;
    :cond_ab
    const-string v5, "MusicAutoStopReceiver"

    const-string v6, "onReceive() - why? "

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method
