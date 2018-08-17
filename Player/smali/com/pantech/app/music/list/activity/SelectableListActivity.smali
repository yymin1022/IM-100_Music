.class public abstract Lcom/pantech/app/music/list/activity/SelectableListActivity;
.super Lcom/pantech/app/music/list/activity/BaseListActivity;
.source "SelectableListActivity.java"

# interfaces
.implements Lcom/pantech/app/music/list/activity/ISelectableActivity;
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;
    }
.end annotation


# instance fields
.field protected mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

.field private mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/activity/SelectableListActivity;)Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/SelectableListActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    return-object v0
.end method


# virtual methods
.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 71
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getActionModeCommandView()Landroid/view/View;
    .registers 2

    .prologue
    .line 80
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;-><init>(Lcom/pantech/app/music/list/activity/SelectableListActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    .line 27
    new-instance v0, Lcom/pantech/app/music/list/component/ActionModeHelper;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/component/ActionModeHelper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    .line 28
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    .line 33
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->onDestroy()V

    .line 34
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 114
    instance-of v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;

    if-nez v0, :cond_d

    instance-of v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;

    if-eqz v0, :cond_14

    .line 115
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 116
    :cond_14
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V
    .registers 3
    .param p1, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 40
    return-void
.end method

.method public startActionMode()V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_15

    .line 57
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mSelectListHandler:Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/activity/SelectableListActivity$SelectableHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    .end local v0    # "msg":Landroid/os/Message;
    :goto_14
    return-void

    .line 62
    :cond_15
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->getActionModeCommandView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->startActionMode(Landroid/view/ActionMode$Callback;Landroid/view/View;)V

    goto :goto_14
.end method

.method public stopActionMode()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->stopActionMode()V

    .line 46
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SelectableListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/music/list/component/ActionModeHelper;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    move-result v0

    return v0
.end method
