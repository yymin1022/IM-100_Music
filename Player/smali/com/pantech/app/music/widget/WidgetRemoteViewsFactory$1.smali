.class Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetRemoteViewsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 55
    :cond_6
    :goto_6
    return-void

    .line 43
    :cond_7
    const-string v3, "WidgetRemoteViewsFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-static {v5}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->access$000(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 46
    .local v2, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/pantech/app/music/widget/AppWidgetProviderExList;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 48
    .local v1, "appWidgetIds":[I
    const-string v3, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "com.pantech.app.music.action.UPDATEEXLISTWIDGETDATA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "com.pantech.app.music.action.WIDGETCHANGETITLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    :cond_56
    iget-object v3, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$1;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-virtual {v3}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->setWidgetData()V

    .line 53
    const v3, 0x7f1001e7

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_6
.end method
