.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetConnectionReceiver"
.end annotation


# instance fields
.field mHeadsetConnectProcess:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;


# direct methods
.method private constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 3

    .prologue
    .line 96
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 121
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver$1;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->mHeadsetConnectProcess:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p2, "x1"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->processEarjack(Z)V

    return-void
.end method

.method private processEarjack(Z)V
    .registers 9
    .param p1, "onoff"    # Z

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 100
    const-string v1, "VMusicFX_Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEarjack() onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez p1, :cond_43

    .line 103
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    .line 104
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    .line 105
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    .line 114
    :goto_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.musicfx.panel.AudioEffectSettingPanel.action.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "panelRefresh":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v1, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isChangeDevice:Z

    .line 119
    return-void

    .line 109
    .end local v0    # "panelRefresh":Landroid/content/Intent;
    :cond_43
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    .line 110
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    .line 111
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v1, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;I)V

    goto :goto_2c
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    const-string v2, "VMusicFX_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HeadsetConnectionReceiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz p2, :cond_1b8

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "state":I
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 150
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    iget-object v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$702(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 153
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    iget-object v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    if-ne v1, v3, :cond_1b9

    move v2, v3

    :goto_45
    invoke-static {v5, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$402(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 156
    const-string v2, "VMusicFX_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_HEADSET_PLUG isHeadsetOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "VMusicFX_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STONE Before state EJ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") BT("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") STONE("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    .line 164
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$700(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-nez v2, :cond_1bc

    .line 165
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 166
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$902(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 169
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1000(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V

    .line 178
    :cond_d9
    :goto_d9
    const-string v2, "VMusicFX_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STONE after state EJ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$400(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") BT("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") STONE("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_13b

    .line 185
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->mHeadsetConnectProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->mHeadsetConnectProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_13b
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 192
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 193
    const-string v2, "VMusicFX_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STONE ACTION_CONNECTION_STATE_CHANGED state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "isChanged":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1df

    .line 199
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$502(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 200
    const/4 v0, 0x1

    .line 208
    :cond_170
    :goto_170
    if-eqz v0, :cond_1b8

    .line 212
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1200(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Landroid/content/Intent;)V

    .line 215
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 216
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1000(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V

    .line 218
    :cond_184
    const-string v2, "VMusicFX_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BTA2dp. CONNECTION_STATE_CHANGED HeadsetPluged = isBluetoothA2dpOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->mHeadsetConnectProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1100(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->mHeadsetConnectProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .end local v0    # "isChanged":Z
    .end local v1    # "state":I
    :cond_1b8
    return-void

    .restart local v1    # "state":I
    :cond_1b9
    move v2, v4

    .line 154
    goto/16 :goto_45

    .line 170
    :cond_1bc
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$902(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    goto/16 :goto_d9

    .line 173
    :cond_1c3
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$500(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$900(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 174
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 175
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$902(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    goto/16 :goto_d9

    .line 202
    .restart local v0    # "isChanged":Z
    :cond_1df
    if-nez v1, :cond_170

    .line 204
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$HeadsetConnectionReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$502(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 205
    const/4 v0, 0x1

    goto :goto_170
.end method
