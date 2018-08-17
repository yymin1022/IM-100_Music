.class public Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
.super Ljava/lang/Object;
.source "DeleteConfirmDialog.java"

# interfaces
.implements Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;
    }
.end annotation


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mRealDelete:Z

.field mRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Z)V
    .registers 3
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "delete"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 28
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mRealDelete:Z

    .line 29
    return-void
.end method


# virtual methods
.method public onDialogNoSelected(Landroid/content/DialogInterface;ILjava/lang/Object;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 55
    return-void
.end method

.method public onDialogYesSelected(Landroid/content/DialogInterface;ILjava/lang/Object;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-eqz p3, :cond_7

    .line 46
    check-cast p3, Ljava/lang/Runnable;

    .end local p3    # "tag":Ljava/lang/Object;
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_7
    return-void
.end method

.method public showDialog(Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 33
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 34
    :cond_a
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mRealDelete:Z

    if-eqz v0, :cond_24

    .line 35
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080062

    const v2, 0x7f080122

    const/4 v4, 0x2

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 38
    :goto_23
    return-void

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080064

    const v2, 0x7f080123

    const/4 v4, 0x3

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    goto :goto_23
.end method
