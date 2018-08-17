.class public Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;
.super Ljava/lang/Object;
.source "WidgetRemoteViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetRemoteViewsFactory"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mExListWidgetListener:Landroid/content/BroadcastReceiver;

.field private mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field private mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mWidgetID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 26
    iput-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 28
    iput v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mWidgetID:I

    .line 36
    new-instance v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;-><init>(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mExListWidgetListener:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;-><init>(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 31
    iput-object p1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mWidgetID:I

    .line 33
    const-string v0, "WidgetRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mWidgetID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    .prologue
    .line 22
    iget v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mWidgetID:I

    return v0
.end method

.method static synthetic access$102(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;
    .param p1, "x1"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method bindService()Z
    .registers 6

    .prologue
    .line 80
    const-string v2, "WidgetRemoteViewsFactory"

    const-string v3, "bindService()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.pantech.app.music"

    const-string v3, "com.pantech.app.music.service.MusicPlaybackService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    iget-object v2, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 85
    .local v1, "success":Z
    if-nez v1, :cond_2a

    .line 86
    const-string v2, "WidgetRemoteViewsFactory"

    const-string v3, "Fail to service connection!!!!"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2a
    return v1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 183
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 139
    if-ltz p1, :cond_b

    iget-object v4, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v4, v4

    if-lt p1, v4, :cond_14

    .line 140
    :cond_b
    const-string v4, "WidgetRemoteViewsFactory"

    const-string v5, "getViewAt() :: position is bigger than lenth of Queue!"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x0

    .line 167
    :goto_13
    return-object v3

    .line 144
    :cond_14
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300c2

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v3, "rv":Landroid/widget/RemoteViews;
    :try_start_22
    invoke-virtual {p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->getCount()I

    move-result v4

    if-nez v4, :cond_72

    .line 147
    const v4, 0x7f1001da

    iget-object v5, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v6, 0x7f08012c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    const v4, 0x7f1001db

    iget-object v5, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v6, 0x7f08012c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 155
    :goto_46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "com.pantech.app.music.widget.CMD"

    const-string v5, "playposition"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "com.pantech.app.music.widget.CMDselectedPosition"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    const v4, 0x7f1001d9

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_65} :catch_66

    goto :goto_13

    .line 163
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_66
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const-string v4, "WidgetRemoteViewsFactory"

    const-string v5, "Error to getAtView! but try caught and set default view"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_72
    const v4, 0x7f1001da

    :try_start_75
    iget-object v5, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    const v4, 0x7f1001db

    iget-object v5, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8e} :catch_66

    goto :goto_46
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 60
    const-string v1, "WidgetRemoteViewsFactory"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.action.UPDATEEXLISTWIDGETDATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "com.pantech.app.music.action.WIDGETCHANGETITLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mExListWidgetListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->bindService()Z

    .line 70
    return-void
.end method

.method public onDataSetChanged()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->unbind()V

    .line 75
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mExListWidgetListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    const-string v0, "WidgetRemoteViewsFactory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setWidgetData()V
    .registers 5

    .prologue
    .line 115
    const-string v1, "WidgetRemoteViewsFactory"

    const-string v2, "setWidgetData()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v1, :cond_16

    .line 117
    const-string v1, "WidgetRemoteViewsFactory"

    const-string v2, "mService is null, try to re-Binding MusicService.."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->bindService()Z

    .line 129
    :goto_15
    return-void

    .line 123
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_3e

    .line 128
    :goto_1e
    const-string v2, "WidgetRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v1, v1

    :goto_32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 125
    :catch_3e
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public unbind()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "WidgetRemoteViewsFactory"

    const-string v1, "unbind()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 97
    :cond_15
    return-void
.end method
