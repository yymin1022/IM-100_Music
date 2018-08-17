.class public Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;
.super Ljava/lang/Object;
.source "DataNetworkWarningDialog.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;
    }
.end annotation


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mDismissListener:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

.field private mIsSelected:Z

.field mRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V
    .registers 3
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDismissListener:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mIsSelected:Z

    .line 27
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 28
    return-void
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 68
    :cond_11
    return-void
.end method

.method public onChkBoxChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 98
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mIsSelected:Z

    .line 100
    const-string v0, " #### onChkBoxChanged "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onDialogNoSelected(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 91
    :cond_9
    const-string v0, " #### onDialogNoSelected "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onDialogYesSelected(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connect_data_notification"

    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mIsSelected:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1b
    invoke-static {v1, v2, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    const-string v0, " #### onDialogYesSelected "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 83
    return-void

    .line 80
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onPopupListDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mIsSelected:Z

    .line 110
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDismissListener:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDismissListener:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

    invoke-interface {v0}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;->dismiss()V

    .line 113
    :cond_c
    const-string v0, " #### onPopupListDismiss "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setDismissListener(Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDismissListener:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;

    .line 122
    return-void
.end method

.method public showDialog(Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f08003e

    .line 32
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mRun:Ljava/lang/Runnable;

    .line 34
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 37
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->is3GDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isWIFIDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 39
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connect_data_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 41
    .local v6, "is3gconnectNoti":Z
    if-eqz v6, :cond_57

    .line 43
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 44
    :cond_42
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080121

    const v3, 0x7f080143

    const/4 v4, 0x4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showCheckboxAskPopupList(Landroid/app/Activity;IIIILcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 62
    .end local v6    # "is3gconnectNoti":Z
    :goto_56
    return-void

    .line 54
    :cond_57
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_56

    .line 58
    :cond_5d
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 60
    :cond_66
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080135

    const/4 v3, 0x3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showInformPopupList(Landroid/app/Activity;IIILjava/lang/Object;Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    goto :goto_56
.end method
