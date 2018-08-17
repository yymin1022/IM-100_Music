.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->registerSystemChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 2

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1391
    if-eqz p2, :cond_1d

    .line 1393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1d

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1397
    const-string v1, "VMusicFX_Service"

    const-string v2, "----ACTION_SHUTDOWN-----"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V

    .line 1401
    .end local v0    # "action":Ljava/lang/String;
    :cond_1d
    return-void
.end method
