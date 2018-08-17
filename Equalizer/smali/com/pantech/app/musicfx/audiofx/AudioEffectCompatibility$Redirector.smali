.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;
.super Landroid/app/Activity;
.source "AudioEffectCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Redirector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v5, 0x7f050029

    invoke-virtual {p0, v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->setTitle(I)V

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compatibility Activity called from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 54
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 55
    .local v2, "i":Landroid/content/Intent;
    const/high16 v5, 0x2000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const-string v5, "audioFxSettingPreference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v5, "com.pantech.app.musicfx.audiofx.defaultpanelpackage"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "defPackage":Ljava/lang/String;
    const-string v5, "com.pantech.app.musicfx.audiofx.defaultpanelname"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "defName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 63
    if-eqz v1, :cond_6f

    if-nez v0, :cond_a3

    .line 65
    :cond_6f
    const-string v5, "no default set!"

    invoke-static {v5}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;)V

    .line 67
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Service;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v4, "updateIntent":Landroid/content/Intent;
    const-string v5, "com.pantech.app.musicfx.audiofx.defPackage"

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v5, "com.pantech.app.musicfx.audiofx.defName"

    const-class v6, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    .end local v4    # "updateIntent":Landroid/content/Intent;
    :goto_9c
    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;->finish()V

    .line 81
    return-void

    .line 76
    :cond_a3
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9c
.end method
