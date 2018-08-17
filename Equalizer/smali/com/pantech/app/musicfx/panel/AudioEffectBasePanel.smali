.class public abstract Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AudioEffectBasePanel.java"


# instance fields
.field protected mAudioSessionID:I

.field protected mIsBinding:Z

.field private mListFinishListener:Landroid/content/BroadcastReceiver;

.field protected mPackageName:Ljava/lang/String;

.field protected mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

.field protected mServiceConnection:Landroid/content/ServiceConnection;

.field private mUnMountListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mAudioSessionID:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mIsBinding:Z

    .line 35
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$1;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 55
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$2;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mListFinishListener:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel$3;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mUnMountListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getIsBinding()Z
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mIsBinding:Z

    return v0
.end method

.method private initActionbar()V
    .registers 5

    .prologue
    const v3, 0x7f050024

    const/4 v2, 0x1

    .line 170
    const-string v1, "initActionbar() "

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 173
    .local v0, "actionbar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_23

    .line 174
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 177
    instance-of v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    if-eqz v1, :cond_24

    .line 178
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    :cond_23
    :goto_23
    return-void

    .line 179
    :cond_24
    instance-of v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    if-eqz v1, :cond_30

    .line 180
    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 182
    :cond_30
    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method


# virtual methods
.method public abstract initValue(Landroid/os/Bundle;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f080091

    const/4 v3, 0x1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Solution["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getSolutionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] effect release["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEffectRelease()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Theme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getTheme()I

    move-result v1

    if-ne v1, v3, :cond_db

    const-string v1, "THEME_WHITE_PT"

    :goto_41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getTheme()I

    move-result v1

    packed-switch v1, :pswitch_data_102

    .line 102
    const v1, 0x1030237

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setTheme(I)V

    invoke-virtual {p0, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setTheme(I)V

    .line 106
    :goto_5c
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->initActionbar()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->initValue(Landroid/os/Bundle;)V

    .line 113
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setVolumeControlStream(I)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "android.media.extra.AUDIO_SESSION"

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mAudioSessionID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_94

    .line 122
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    const-string v2, "com.pantech.app.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 124
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_94
    :goto_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioSessionID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mAudioSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setContentViewOnCreate()V

    .line 142
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getIsBinding()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 146
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mListFinishListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/pantech/app/musicfx/utils/Utils;->registerListFinishReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 147
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mUnMountListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/pantech/app/musicfx/utils/Utils;->registerUnMountReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 149
    :cond_da
    return-void

    .line 89
    .end local v0    # "i":Landroid/content/Intent;
    :cond_db
    const-string v1, "THEME_BLACK_PT"

    goto/16 :goto_41

    .line 94
    :pswitch_df
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setTheme(I)V

    goto/16 :goto_5c

    .line 98
    :pswitch_e7
    invoke-virtual {p0, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->setTheme(I)V

    goto/16 :goto_5c

    .line 126
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_ec
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mPackageName:Ljava/lang/String;

    const-string v2, "com.pantech.app.movie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 128
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_94

    .line 132
    :cond_fc
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_94

    .line 92
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_df
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 157
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->getIsBinding()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 159
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->unbindService(Landroid/content/ServiceConnection;)V

    .line 160
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mUnMountListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/Utils;->unregisterUnMountReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mListFinishListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/Utils;->unregisterListFinishReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 164
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    .line 165
    return-void
.end method

.method public abstract onEffectServiceConnected()V
.end method

.method public abstract onEffectServiceDisConnected()V
.end method

.method protected setBindingFail()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->mIsBinding:Z

    .line 191
    return-void
.end method

.method public abstract setContentViewOnCreate()V
.end method
