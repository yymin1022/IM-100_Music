.class public interface abstract Lcom/pantech/app/music/list/activity/ISelectableActivity;
.super Ljava/lang/Object;
.source "ISelectableActivity.java"


# virtual methods
.method public abstract getActionMode()Landroid/view/ActionMode;
.end method

.method public abstract getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
.end method

.method public abstract setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V
.end method

.method public abstract startActionMode()V
.end method

.method public abstract stopActionMode()V
.end method

.method public abstract updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
.end method
