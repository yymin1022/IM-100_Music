.class Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;
.super Ljava/lang/Object;
.source "WidgetRemoteViewsFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 99
    iput-object p1, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->access$102(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 103
    const-string v0, "WidgetRemoteViewsFactory"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    invoke-static {v0}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->access$200(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.action.UPDATEEXLISTWIDGETDATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    const-string v0, "WidgetRemoteViewsFactory"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory$2;->this$0:Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;->access$102(Lcom/pantech/app/music/widget/WidgetRemoteViewsFactory;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 111
    return-void
.end method
