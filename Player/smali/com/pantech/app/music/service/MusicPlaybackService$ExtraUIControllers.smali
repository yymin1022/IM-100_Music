.class Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraUIControllers"
.end annotation


# instance fields
.field NotiBuilder:Landroid/app/Notification$Builder;

.field public bShownNotification:Z

.field private mAppExListWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderExList;

.field private mAppSimpleWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

.field private mBigContentView:Z

.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;

.field mNotificationManager:Landroid/app/NotificationManager;

.field pi:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4194
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4184
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mBigContentView:Z

    .line 4185
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    .line 4191
    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppSimpleWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    .line 4192
    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppExListWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderExList;

    .line 4195
    iput-object p2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    .line 4198
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->initNotification()V

    .line 4201
    invoke-static {}, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->getInstance()Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppSimpleWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    .line 4202
    invoke-static {}, Lcom/pantech/app/music/widget/AppWidgetProviderExList;->getInstance()Lcom/pantech/app/music/widget/AppWidgetProviderExList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppExListWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderExList;

    .line 4203
    return-void
.end method

.method static synthetic access$600(Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    .prologue
    .line 4181
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->removeNotification()V

    return-void
.end method

.method private getBasicViews()Landroid/widget/RemoteViews;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4350
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300bc

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4354
    .local v2, "v":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4355
    .local v0, "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4356
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4357
    .local v1, "pi":Landroid/app/PendingIntent;
    const v3, 0x7f100093

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4359
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4360
    .restart local v0    # "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4361
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4362
    const v3, 0x7f1001ae

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4364
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4365
    .restart local v0    # "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4366
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4367
    const v3, 0x7f100092

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4369
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4370
    .restart local v0    # "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4371
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4372
    const v3, 0x7f100094

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4374
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.stopself"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4375
    .restart local v0    # "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4376
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4377
    const v3, 0x7f1001af

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4379
    return-object v2
.end method

.method private getExpandViews()Landroid/widget/RemoteViews;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4383
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300bd

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4385
    .local v3, "v":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-class v5, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4389
    .local v2, "serviceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.pantech.app.music.musicservicecommand.stopself"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4390
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4391
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4392
    .local v1, "pi":Landroid/app/PendingIntent;
    const v4, 0x7f1001b5

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4394
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v4, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4395
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4396
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4397
    const v4, 0x7f1001ba

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4399
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v4, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4400
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4401
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4402
    const v4, 0x7f1001b9

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4404
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v4, "com.pantech.app.music.musicservicecommand.previous"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4405
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4406
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4407
    const v4, 0x7f1001b8

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4409
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v4, "com.pantech.app.music.musicservicecommand.next"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4410
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4411
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4412
    const v4, 0x7f1001bb

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4414
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v4, "com.pantech.app.music.musicservicecommand.setting"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4415
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4416
    const-string v4, "command"

    const-string v5, "toggleRating"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4417
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4418
    const v4, 0x7f1001b4

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4428
    return-object v3
.end method

.method private initNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 4228
    :try_start_1
    const-string v2, "MusicPlaybackService"

    const-string v3, "initNotification()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/pantech/app/music/list/utility/LaunchActivity;->getMusicReenterPoint()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4237
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4240
    const-string v2, "toPlayer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4241
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->pi:Landroid/app/PendingIntent;

    .line 4243
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    .line 4244
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4245
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    const v3, 0x7f020369

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4247
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    .line 4248
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->getBasicViews()Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4249
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->getExpandViews()Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4250
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->priority:I

    .line 4251
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 4253
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mBigContentView:Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6c} :catch_6d

    .line 4259
    .end local v1    # "i":Landroid/content/Intent;
    :goto_6c
    return-void

    .line 4255
    :catch_6d
    move-exception v0

    .line 4256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    .line 4257
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mBigContentView:Z

    goto :goto_6c
.end method

.method private removeNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4341
    const-string v0, "MusicPlaybackService"

    const-string v1, "removeNotification()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    .line 4343
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->stopForeground(Z)V

    .line 4345
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotificationManager:Landroid/app/NotificationManager;

    .line 4346
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4347
    return-void
.end method

.method private showNotiController(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 15
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const v12, 0x7f1001ae

    const v11, 0x7f100093

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 4262
    if-nez p1, :cond_d

    .line 4338
    :cond_c
    :goto_c
    return-void

    .line 4265
    :cond_d
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showNotiController() AudioID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    iget-wide v4, p1, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_c

    .line 4271
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPlayState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 4272
    const v2, 0x7f020369

    .line 4279
    .local v2, "updateIcon":I
    :goto_40
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    .line 4280
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4281
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4282
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    .line 4284
    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mBigContentView:Z

    if-eqz v3, :cond_153

    .line 4285
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->getBasicViews()Landroid/widget/RemoteViews;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4286
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->getExpandViews()Landroid/widget/RemoteViews;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4288
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b0

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4289
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b1

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4291
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_af

    .line 4292
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b6

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4293
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b7

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4296
    :cond_af
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_100

    .line 4298
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getDefaultBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    .line 4300
    const/16 v0, 0x12c

    .line 4301
    .local v0, "ALBUMART_SIZE_NOTI":I
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4302
    .local v1, "notificationAlbumArt":Landroid/graphics/Bitmap;
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showNotiController() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001ac

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4304
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_100

    .line 4305
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b2

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4308
    .end local v0    # "ALBUMART_SIZE_NOTI":I
    .end local v1    # "notificationAlbumArt":Landroid/graphics/Bitmap;
    :cond_100
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPlayState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 4309
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4310
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4311
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_136

    .line 4312
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001ba

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4313
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b9

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4325
    :cond_136
    :goto_136
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_153

    .line 4326
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1b0

    .line 4327
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b4

    const v5, 0x7f02014c

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4334
    :cond_153
    :goto_153
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotificationManager:Landroid/app/NotificationManager;

    .line 4335
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4336
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v10, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_c

    .line 4273
    .end local v2    # "updateIcon":I
    :cond_16f
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPlayState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buffering"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 4274
    const v2, 0x7f020367

    .restart local v2    # "updateIcon":I
    goto/16 :goto_40

    .line 4276
    .end local v2    # "updateIcon":I
    :cond_182
    const v2, 0x7f020368

    .restart local v2    # "updateIcon":I
    goto/16 :goto_40

    .line 4317
    :cond_187
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4318
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4319
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_136

    .line 4320
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001ba

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4321
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b9

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_136

    .line 4329
    :cond_1b0
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v4, 0x7f1001b4

    const v5, 0x7f02014b

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_153
.end method


# virtual methods
.method public notifyChange(Landroid/content/Intent;)V
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 4206
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4209
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.pantech.app.music.settingchanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 4210
    :cond_14
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraUIControllers notifyChange() action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    if-eqz v1, :cond_3d

    .line 4212
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->showNotiController(Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 4220
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppSimpleWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Intent;)V

    .line 4221
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->mAppExListWidgetProvider:Lcom/pantech/app/music/widget/AppWidgetProviderExList;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/widget/AppWidgetProviderExList;->notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Intent;)V

    .line 4223
    sget-object v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Intent;)V

    .line 4224
    return-void

    .line 4214
    :cond_53
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    .line 4216
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->showNotiController(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_3d
.end method
