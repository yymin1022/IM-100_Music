.class public Lcom/pantech/app/music/assist/MusicAutoStopControl;
.super Ljava/lang/Object;
.source "MusicAutoStopControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicAutoStopControl"

.field public static autoStop:Landroid/app/PendingIntent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMinutes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mMinutes:[I

    .line 30
    return-void

    .line 29
    :array_e
    .array-data 4
        0x0
        0xa
        0x14
        0x1e
        0x3c
    .end array-data
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicAutoStopControl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicAutoStopControl;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/pantech/app/music/assist/MusicAutoStopControl;->setAlarmIndex(I)V

    return-void
.end method

.method private setAlarm(I)V
    .registers 10
    .param p1, "minutes"    # I

    .prologue
    const/4 v6, 0x0

    .line 33
    const-string v3, "MusicAutoStopControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoStopAlarm::setAlarm("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/pantech/app/music/assist/MusicAutoStopReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 39
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v3, "ready"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v6, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 42
    .local v2, "ready":Landroid/app/PendingIntent;
    if-nez p1, :cond_53

    .line 43
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 44
    sget-object v3, Lcom/pantech/app/music/assist/MusicAutoStopControl;->autoStop:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 47
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ac

    invoke-static {v3, v4, v6}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    .line 59
    :goto_52
    return-void

    .line 50
    :cond_53
    const-string v3, "MusicAutoStopControl"

    const-string v4, "AutoStopAlarm::setAlarm() bReady set true "

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-int/lit8 v6, p1, -0x1

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 53
    const/16 v3, 0x3c

    if-lt p1, v3, :cond_90

    .line 54
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v5, p1, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const v6, 0x7f0800aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_52

    .line 56
    :cond_90
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_52
.end method

.method private setAlarmIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mMinutes:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/assist/MusicAutoStopControl;->setAlarm(I)V

    .line 65
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-string v1, "auto_stop"

    invoke-static {v0, v1, p1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public resetAlarm()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 69
    const-string v4, "MusicAutoStopControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoStopAlarm::resetAlarm()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/assist/MusicAutoStopReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 75
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 78
    .local v2, "ready":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 80
    .local v3, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-string v5, "auto_stop"

    invoke-static {v4, v5, v7}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public showMenuDialog()V
    .registers 6

    .prologue
    .line 88
    const-string v2, "MusicAutoStopControl"

    const-string v3, "AutoStopAlarm::showMenuDialog()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    const-string v3, "auto_stop"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "autostop":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "mMenuDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const v2, 0x7f0c0002

    new-instance v3, Lcom/pantech/app/music/assist/MusicAutoStopControl$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/assist/MusicAutoStopControl$2;-><init>(Lcom/pantech/app/music/assist/MusicAutoStopControl;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800af

    new-instance v4, Lcom/pantech/app/music/assist/MusicAutoStopControl$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/assist/MusicAutoStopControl$1;-><init>(Lcom/pantech/app/music/assist/MusicAutoStopControl;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method
