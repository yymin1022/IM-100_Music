.class Lcom/pantech/app/music/settings/SettingsActivity$1;
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
    .line 115
    iput-object p1, p0, Lcom/pantech/app/music/settings/SettingsActivity$1;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 119
    const-string v1, "MusicSettings"

    const-string v2, "mAudioEffect onPreferenceClick  "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity$1;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity$1;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    iget-wide v2, v2, Lcom/pantech/app/music/settings/SettingsActivity;->mLastClickedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/settings/SettingsActivity;->preventDoubleClick(J)Z

    move-result v1

    if-nez v1, :cond_18

    .line 123
    :try_start_13
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity$1;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-static {v1}, Lcom/pantech/app/music/settings/SettingsActivity;->access$000(Lcom/pantech/app/music/settings/SettingsActivity;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1a

    .line 128
    :cond_18
    :goto_18
    const/4 v1, 0x0

    return v1

    .line 124
    :catch_1a
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method
