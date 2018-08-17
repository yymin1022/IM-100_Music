.class Lcom/pantech/app/music/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/settings/SettingsActivity;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/pantech/app/music/settings/SettingsActivity$3;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 151
    const-string v0, "MusicSettings"

    const-string v1, "mAutoStop onPreferenceClick  "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity$3;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity$3;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    iget-wide v2, v1, Lcom/pantech/app/music/settings/SettingsActivity;->mLastClickedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/settings/SettingsActivity;->preventDoubleClick(J)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity$3;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-static {v0}, Lcom/pantech/app/music/settings/SettingsActivity;->access$200(Lcom/pantech/app/music/settings/SettingsActivity;)Lcom/pantech/app/music/assist/MusicAutoStopControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicAutoStopControl;->showMenuDialog()V

    .line 157
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
