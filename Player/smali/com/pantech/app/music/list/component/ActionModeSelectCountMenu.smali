.class public Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
.super Ljava/lang/Object;
.source "ActionModeSelectCountMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;,
        Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

.field private mMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;",
            ">;"
        }
    .end annotation
.end field

.field mOldCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mOldCount:I

    .line 128
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    .line 130
    iput-object p2, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    .line 131
    return-void
.end method


# virtual methods
.method public addDropDownMenu(Landroid/widget/Button;I)Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    .registers 6
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "menuId"    # I

    .prologue
    .line 135
    new-instance v0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;)V

    .line 136
    .local v0, "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v0
.end method

.method public closeMenu()V
    .registers 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 189
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 191
    .local v0, "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    if-eqz v0, :cond_12

    .line 192
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->closeMenu()V

    .line 194
    .end local v0    # "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    :cond_12
    return-void
.end method

.method public findMenuItem(I)Landroid/view/MenuItem;
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 150
    .local v3, "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    invoke-virtual {v3, p1}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_7

    move-object v2, v1

    .line 154
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v3    # "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    .local v2, "item":Landroid/view/MenuItem;
    :goto_1a
    return-object v2

    .end local v2    # "item":Landroid/view/MenuItem;
    .restart local v1    # "item":Landroid/view/MenuItem;
    :cond_1b
    move-object v2, v1

    .end local v1    # "item":Landroid/view/MenuItem;
    .restart local v2    # "item":Landroid/view/MenuItem;
    goto :goto_1a
.end method

.method public removeDropDownMenu(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)V
    .registers 3
    .param p1, "menu"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public setMenuItemAppliedEnabled(IZZZ)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "applied"    # Z
    .param p3, "enabled"    # Z
    .param p4, "updateTitle"    # Z

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 162
    .local v2, "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_7

    .line 165
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 166
    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 167
    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    if-eqz p4, :cond_7

    .line 170
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 174
    .end local v2    # "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    :cond_2d
    return-void
.end method

.method public setMenuItemVisibility(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->findMenuItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_9

    .line 181
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :cond_9
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    const/4 v7, 0x1

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "changed":Z
    monitor-enter p0

    .line 211
    :try_start_3
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mMenus:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .line 212
    .local v2, "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "format":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSelectionMenu text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 221
    iget v3, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mOldCount:I

    if-eq v3, p2, :cond_77

    .line 223
    const/4 v0, 0x1

    .line 230
    :cond_5d
    :goto_5d
    const/4 v3, 0x2

    if-ne p3, v3, :cond_80

    .line 232
    const v3, 0x7f10020a

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    .line 233
    const v3, 0x7f10020b

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    .line 254
    :goto_6e
    invoke-static {v2}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->access$200(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->invalidate()V

    .line 256
    monitor-exit p0

    return v0

    .line 225
    :cond_77
    const/4 v3, 0x3

    if-ge p2, v3, :cond_5d

    .line 227
    iput p2, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->mOldCount:I

    goto :goto_5d

    .line 257
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    :catchall_7d
    move-exception v3

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v3

    .line 235
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "menu":Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
    :cond_80
    if-ne p3, v7, :cond_91

    .line 237
    const v3, 0x7f10020a

    const/4 v4, 0x1

    :try_start_86
    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    .line 240
    const v3, 0x7f10020b

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    goto :goto_6e

    .line 242
    :cond_91
    if-nez p3, :cond_a2

    .line 244
    const v3, 0x7f10020a

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    .line 245
    const v3, 0x7f10020b

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    goto :goto_6e

    .line 250
    :cond_a2
    const v3, 0x7f10020a

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V

    .line 251
    const v3, 0x7f10020b

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;->setMenuItemVisibility(IZ)V
    :try_end_b0
    .catchall {:try_start_86 .. :try_end_b0} :catchall_7d

    goto :goto_6e
.end method
