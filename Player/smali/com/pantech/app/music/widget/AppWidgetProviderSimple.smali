.class public Lcom/pantech/app/music/widget/AppWidgetProviderSimple;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidgetProviderSimple.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetProviderSimple"

.field private static sInstance:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;


# instance fields
.field private final THIS_APPWIDGET:Landroid/content/ComponentName;

.field mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.pantech.app.music"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 30
    iget-object v0, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;

    if-nez v0, :cond_23

    .line 31
    new-instance v0, Lcom/pantech/app/music/widget/AppWidgetHelper;

    const v1, 0x7f0300c6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/widget/AppWidgetHelper;-><init>(ILjava/lang/Class;)V

    iput-object v0, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;

    .line 33
    :cond_23
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pantech/app/music/widget/AppWidgetProviderSimple;
    .registers 2

    .prologue
    .line 22
    const-class v1, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->sInstance:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    if-nez v0, :cond_e

    .line 23
    new-instance v0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    invoke-direct {v0}, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;-><init>()V

    sput-object v0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->sInstance:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;

    .line 25
    :cond_e
    sget-object v0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->sInstance:Lcom/pantech/app/music/widget/AppWidgetProviderSimple;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 37
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 39
    .local v0, "appWidgetIds":[I
    if-nez v0, :cond_e

    .line 44
    :cond_d
    :goto_d
    return v2

    :cond_e
    array-length v3, v0

    if-lez v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d
.end method


# virtual methods
.method public notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Intent;)V
    .registers 7
    .param p1, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->hasInstances(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 65
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 66
    .local v2, "awm":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 67
    .local v1, "appWidgetIds":[I
    iget-object v3, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;

    invoke-virtual {v3, p1, v0, v1}, Lcom/pantech/app/music/widget/AppWidgetHelper;->notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;[I)V

    .line 72
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "awm":Landroid/appwidget/AppWidgetManager;
    :cond_19
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "AppWidgetProviderSimple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/widget/AppWidgetHelper;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/music/widget/AppWidgetProviderSimple;->mWidgetHelper:Lcom/pantech/app/music/widget/AppWidgetHelper;

    invoke-virtual {v0, p1, p3}, Lcom/pantech/app/music/widget/AppWidgetHelper;->onUpdate(Landroid/content/Context;[I)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 59
    return-void
.end method
