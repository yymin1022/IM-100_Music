.class public interface abstract Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
.super Ljava/lang/Object;
.source "IFragmentSelectable.java"

# interfaces
.implements Lcom/pantech/app/music/list/listener/IActionModeCallback;


# virtual methods
.method public abstract onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V
.end method

.method public abstract startActionMode(Landroid/view/View;Z)V
.end method

.method public abstract startActionMode(Z)Z
.end method

.method public abstract stopActionMode()V
.end method

.method public abstract updateSelectionMenu()Z
.end method
