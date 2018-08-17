.class public final Lcom/pantech/app/music/drm/LGUDRMHidden;
.super Landroid/content/BroadcastReceiver;
.source "LGUDRMHidden.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cleanupROStroageforDRM(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/16 v2, -0xa

    .line 40
    .local v2, "ret":I
    new-instance v0, Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;-><init>()V

    .line 41
    .local v0, "mDRMHandle":Lcom/pantech/app/music/drm/LGUDRMInterface;
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInit()I

    move-result v3

    if-eqz v3, :cond_e

    .line 42
    const/4 v0, 0x0

    .line 45
    :cond_e
    if-eqz v0, :cond_21

    .line 46
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMCleanStroage()I

    move-result v2

    .line 47
    if-nez v2, :cond_28

    const v1, 0x7f080032

    .line 49
    .local v1, "msg_id":I
    :goto_19
    if-nez v2, :cond_2c

    .line 50
    const/4 v3, 0x1

    sput-boolean v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CLEANUP_RO:Z

    .line 56
    :goto_1e
    invoke-static {p1, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 59
    .end local v1    # "msg_id":I
    :cond_21
    if-eqz v0, :cond_27

    .line 60
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMDestroy()V

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_27
    return-void

    .line 47
    :cond_28
    const v1, 0x7f080031

    goto :goto_19

    .line 53
    .restart local v1    # "msg_id":I
    :cond_2c
    const/4 v3, 0x0

    sput-boolean v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CLEANUP_RO:Z

    goto :goto_1e
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 20
    const-string v2, "com.pantech.app.music.action.DRM_HIDDEN_SERVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 21
    const-string v2, "LGTDRMHidden - ACTION_DRM_HIDDEN_SERVER"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.drm.RO_SERVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    .end local v1    # "i":Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 26
    :cond_23
    const-string v2, "com.pantech.app.music.action.DRM_HIDDEN_INIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 27
    const-string v2, "LGTDRMHidden - ACTION_DRM_HIDDEN_INIT"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/pantech/app/music/drm/LGUDRMHidden;->cleanupROStroageforDRM(Landroid/content/Context;)V

    goto :goto_22
.end method
