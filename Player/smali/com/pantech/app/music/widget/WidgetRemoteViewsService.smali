.class public Lcom/pantech/app/music/widget/WidgetRemoteViewsService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetRemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;
    }
.end annotation


# static fields
.field public static final CMD_PLAYPOSITION:Ljava/lang/String; = "playposition"

.field public static final CMD_PLAYRANDOM:Ljava/lang/String; = "playrandom"

.field public static final CMD_REPEAT:Ljava/lang/String; = "repeat"

.field public static final CMD_RESTARTSERVICE:Ljava/lang/String; = "restartservice"

.field public static final CMD_TOAPP:Ljava/lang/String; = "toapp"

.field public static final REMOTEFACTORYTYPE:Ljava/lang/String; = "com.android.music.musicwidgetfactorytype"

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicwidgetservicecommand"

.field private static final TAG:Ljava/lang/String; = "WidgetRemoteViewsService"

.field private static mCallbackConfigureChangedWidget:Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;

.field private static sInstance:Lcom/pantech/app/music/widget/WidgetRemoteViewsService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->mCallbackConfigureChangedWidget:Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pantech/app/music/widget/WidgetRemoteViewsService;
    .registers 2

    .prologue
    .line 32
    const-class v1, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->sInstance:Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    invoke-direct {v0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;-><init>()V

    sput-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->sInstance:Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    .line 35
    :cond_e
    sget-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->sInstance:Lcom/pantech/app/music/widget/WidgetRemoteViewsService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 52
    const-string v0, "WidgetRemoteViewsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->mCallbackConfigureChangedWidget:Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;

    if-eqz v0, :cond_23

    .line 55
    sget-object v0, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->mCallbackConfigureChangedWidget:Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService$onConfigureChangedWidget;->onChangedConfigure(Landroid/content/res/Configuration;)V

    .line 57
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/RemoteViewsService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "WidgetRemoteViewsService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onCreate()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 46
    const-string v0, "WidgetRemoteViewsService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onDestroy()V

    .line 48
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    const-string v1, "com.android.music.musicwidgetfactorytype"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "type":I
    const-string v1, "WidgetRemoteViewsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetViewFactory() type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 63
    const-string v3, "WidgetRemoteViewsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand() startID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_88

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 69
    const-string v3, "WidgetRemoteViewsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>action("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_44
    if-eqz v1, :cond_64

    .line 71
    const-string v3, "WidgetRemoteViewsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>cmd("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_64
    const-string v3, "restartservice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "restartservice"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 74
    :cond_74
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "appwidgetupdate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_88
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViewsService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3
.end method
