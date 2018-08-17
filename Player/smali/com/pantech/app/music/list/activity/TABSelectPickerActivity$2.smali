.class Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;
.super Ljava/lang/Object;
.source "TABSelectPickerActivity.java"

# interfaces
.implements Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;)V
    .registers 2

    .prologue
    .line 690
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNoSelected(Landroid/content/DialogInterface;ILjava/lang/Object;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 717
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    .line 718
    return-void
.end method

.method public onDialogYesSelected(Landroid/content/DialogInterface;ILjava/lang/Object;)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 694
    new-instance v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 695
    .local v1, "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    iget-object v3, v3, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v0

    .line 697
    .local v0, "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 699
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    const v3, 0x7f08010f

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 701
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 702
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    .line 711
    :goto_34
    return-void

    .line 706
    :cond_35
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    const v3, 0x7f08010e

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 708
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 709
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;->this$0:Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_34
.end method
