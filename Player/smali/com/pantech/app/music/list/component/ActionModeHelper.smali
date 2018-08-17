.class public Lcom/pantech/app/music/list/component/ActionModeHelper;
.super Ljava/lang/Object;
.source "ActionModeHelper.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field protected mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

.field protected mActivity:Landroid/app/Activity;

.field protected mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

.field protected mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

.field protected mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

.field mIgnoreCallback:Z

.field protected mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field protected mSelectMenuBtn:Landroid/widget/Button;

.field protected mSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIgnoreCallback:Z

    .line 51
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/pantech/app/music/list/activity/IListActivity;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    .line 53
    check-cast p1, Lcom/pantech/app/music/list/activity/ISelectableActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    .line 55
    iput-object p2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 56
    return-void
.end method


# virtual methods
.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getActionModeCommand()Lcom/pantech/app/music/list/component/ActionModeCommandBar;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    return-object v0
.end method

.method public getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 180
    const-string v0, "SELECTABLE:onActionItemClicked"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 188
    const/4 v2, 0x1

    .line 190
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->show()V

    .line 192
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v3}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 193
    .local v0, "fragment":Landroid/app/Fragment;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECTABLE:onCreateActionMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 194
    instance-of v3, v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v3, :cond_2e

    move-object v1, v0

    .line 196
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 197
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 200
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_2e
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->hide()V

    .line 224
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIgnoreCallback:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIgnoreCallback:Z

    .line 240
    :cond_d
    :goto_d
    return-void

    .line 230
    :cond_e
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v2}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 231
    .local v0, "fragment":Landroid/app/Fragment;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECTABLE:onDestroyActionMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 232
    instance-of v2, v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v2, :cond_34

    move-object v1, v0

    .line 234
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 235
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v1, p1}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 238
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_34
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    if-eqz v2, :cond_d

    .line 239
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->closeMenu()V

    goto :goto_d
.end method

.method public onDropDownButtonSelected()V
    .registers 4

    .prologue
    .line 251
    const-string v2, "SELECTABLE:onDropDownButtonSelected "

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v2}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 255
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v2, :cond_15

    move-object v1, v0

    .line 257
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 259
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->updateSelectionMenu()Z

    .line 261
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_15
    return-void
.end method

.method public onDropDownMenuSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECTABLE:onDropDwonMenuSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v2}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 271
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    if-eqz v2, :cond_2c

    move-object v1, v0

    .line 273
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 275
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    invoke-interface {v1, p1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->processOptionsMenu(Landroid/view/MenuItem;)Z

    move-result v2

    .line 278
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    :goto_2b
    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v3}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 209
    .local v0, "fragment":Landroid/app/Fragment;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECTABLE:onPrepareActionMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 210
    instance-of v3, v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v3, :cond_29

    move-object v1, v0

    .line 212
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 213
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 216
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_29
    return v2
.end method

.method public processSelectMenu(ILandroid/view/MenuItem;)Z
    .registers 7
    .param p1, "menuID"    # I
    .param p2, "obj"    # Landroid/view/MenuItem;

    .prologue
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECTABLE:processSelectMenu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIListActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v2}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 288
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    if-eqz v2, :cond_28

    move-object v1, v0

    .line 290
    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 292
    .local v1, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->processSelectMenu(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 295
    .end local v1    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public replaceSelectionMenu()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->removeDropDownMenu(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)V

    .line 326
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectMenuBtn:Landroid/widget/Button;

    const v2, 0x7f110012

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 328
    :cond_20
    return-void
.end method

.method public setActionModeCommand(Landroid/view/View;)V
    .registers 5
    .param p1, "actionModeCommandLayer"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->dismissPopupMenu()V

    .line 84
    :cond_9
    new-instance v0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;Landroid/view/View;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    .line 90
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->show()V

    .line 94
    :goto_21
    return-void

    .line 93
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->hide()V

    goto :goto_21
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;Landroid/view/View;)V
    .registers 11
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "actionModeCommandLayer"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 103
    const-string v4, "startActionMode"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    if-nez v4, :cond_15

    .line 106
    new-instance v4, Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v4, v5, p0, p2, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;Landroid/view/View;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    .line 111
    :cond_15
    new-instance v4, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, p0}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;)V

    iput-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    .line 116
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2a

    .line 118
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 119
    :cond_2a
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030019

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "customView":Landroid/view/View;
    const v4, 0x7f100078

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectMenuBtn:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectMenuBtn:Landroid/widget/Button;

    const v6, 0x7f110012

    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 127
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    .line 129
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_61

    .line 134
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 141
    :cond_61
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v2

    .line 142
    .local v2, "manager":Lcom/pantech/app/music/list/db/SelectManager;
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v3

    .line 143
    .local v3, "selectedCount":I
    if-nez v3, :cond_84

    .line 144
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    .line 145
    :cond_84
    return-void
.end method

.method public stopActionMode()V
    .registers 2

    .prologue
    .line 149
    const-string v0, "SELECTABLE:stopActionMode"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 155
    :cond_e
    return-void
.end method

.method public stopActionModeIgnoreDestroyCallback()V
    .registers 2

    .prologue
    .line 160
    const-string v0, "SELECTABLE:stopActionMode"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mIgnoreCallback:Z

    .line 165
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->dismissPopupMenu()V

    .line 168
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    if-eqz v0, :cond_16

    .line 169
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->closeMenu()V

    .line 171
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1f

    .line 173
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 175
    :cond_1f
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "changed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECTABLE:updateSelectionMenu nSelectedCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    if-eqz v1, :cond_32

    .line 306
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mCustomSelectionMenu:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    invoke-virtual {v1, p1, p2, p3}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    move-result v0

    .line 312
    if-eqz v0, :cond_32

    .line 314
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeHelper;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->update()V

    .line 318
    :cond_32
    return v0
.end method
