.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectEQSettingReceiver"
.end annotation


# static fields
.field private static final AUDIOEFFECT_ACTION_KEY_AUDIO_SESSIONID:Ljava/lang/String; = "key_audio_sessionid"

.field private static final AUDIOEFFECT_ACTION_KEY_EQ_ONOFF:Ljava/lang/String; = "key_eq_onoff"

.field private static final AUDIOEFFECT_ACTION_KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final AUDIOEFFECT_ACTION_KEY_PRESET_NUMBER:Ljava/lang/String; = "key_preset_number"

.field private static final AUDIOEFFECT_ACTION_KEY_SET_USER_PRESET:Ljava/lang/String; = "key_set_userpreset"


# instance fields
.field private audioSessionId:I

.field private eq_OnOff:Z

.field private isSetUserPreset:Z

.field private packageName:Ljava/lang/String;

.field private presetNumber:I

.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;


# direct methods
.method private constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
    .param p2, "x1"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 284
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver onReceive mBinder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1300(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "key_package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->packageName:Ljava/lang/String;

    .line 287
    const-string v0, "key_preset_number"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->presetNumber:I

    .line 288
    const-string v0, "key_audio_sessionid"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->audioSessionId:I

    .line 289
    const-string v0, "key_eq_onoff"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->eq_OnOff:Z

    .line 290
    const-string v0, "key_set_userpreset"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->isSetUserPreset:Z

    .line 292
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver PACKAGE NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver PRESET_NUMBER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->presetNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver AUDIO_SESSIONID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->audioSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver EQ_ONOFF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->eq_OnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver SET USER PRESET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->isSetUserPreset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v6, 0x0

    .line 300
    .local v6, "isOK":Z
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->isSetUserPreset:Z

    if-eqz v0, :cond_121

    .line 302
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v7

    .line 304
    .local v7, "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->audioSessionId:I

    iget v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->presetNumber:I

    iget-object v4, v7, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    invoke-static {v4}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->eq_OnOff:Z

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    move-result v6

    .line 311
    .end local v7    # "settings":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :goto_ff
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectEQSettingReceiver set ok?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 315
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->abortBroadcast()V

    .line 317
    :cond_120
    return-void

    .line 308
    :cond_121
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->audioSessionId:I

    iget v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->presetNumber:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$DirectEQSettingReceiver;->eq_OnOff:Z

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    move-result v6

    goto :goto_ff
.end method
