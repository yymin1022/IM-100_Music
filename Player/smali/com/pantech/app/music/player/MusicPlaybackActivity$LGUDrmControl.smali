.class Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LGUDrmControl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmProcessListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

.field private mDrmRODialog:Landroid/app/ProgressDialog;

.field private mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4331
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4292
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmProcessListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    .line 4332
    iput-object p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mContext:Landroid/content/Context;

    .line 4333
    invoke-static {}, Lcom/pantech/app/music/drm/MusicDrm;->getInstance()Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    .line 4334
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmProcessListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/drm/MusicDrm;->setOnMusicDrmListener(Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;)V

    .line 4335
    return-void
.end method

.method static synthetic access$6400(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)Lcom/pantech/app/music/drm/MusicDrm;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    return-object v0
.end method


# virtual methods
.method dismissRODialog()V
    .registers 2

    .prologue
    .line 4392
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4393
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4395
    :cond_11
    return-void
.end method

.method public popupDialogMusicOn(I)V
    .registers 9
    .param p1, "msgId"    # I

    .prologue
    .line 4398
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4407
    :goto_8
    return-void

    .line 4401
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$4;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$4;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformOneButtonPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    goto :goto_8
.end method

.method release()V
    .registers 2

    .prologue
    .line 4342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    .line 4343
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->dismissRODialog()V

    .line 4344
    return-void
.end method

.method reset()V
    .registers 4

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/drm/MusicDrm;->setROUpdateMode(Landroid/content/Context;Z)V

    .line 4339
    return-void
.end method

.method showRODialog()V
    .registers 6

    .prologue
    .line 4361
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4362
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 4365
    :cond_11
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "showRODialog()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4367
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4368
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    .line 4369
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$2;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4377
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mDrmRODialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl$3;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4389
    return-void
.end method

.method startROUpdateIfNeeded()V
    .registers 4

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/drm/MusicDrm;->setROUpdateMode(Landroid/content/Context;Z)V

    .line 4348
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->IsNeedToRoUpdate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4349
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "you need to update RO!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->showRODialog()V

    .line 4351
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->updateRO()V

    .line 4353
    :cond_1f
    return-void
.end method

.method updateRoData()V
    .registers 2

    .prologue
    .line 4356
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->showRODialog()V

    .line 4357
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->updateRO()V

    .line 4358
    return-void
.end method
