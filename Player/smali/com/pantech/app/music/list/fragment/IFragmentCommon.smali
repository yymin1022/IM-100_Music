.class public interface abstract Lcom/pantech/app/music/list/fragment/IFragmentCommon;
.super Ljava/lang/Object;
.source "IFragmentCommon.java"

# interfaces
.implements Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;


# virtual methods
.method public abstract doCommand(ILjava/lang/Object;)V
.end method

.method public abstract getFragmentHandler()Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
.end method

.method public abstract getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end method

.method public abstract getListView()Landroid/widget/AbsListView;
.end method

.method public abstract getPageInfo()Lcom/pantech/app/music/list/PageInfoType;
.end method

.method public abstract invalidateFragment(Z)V
.end method

.method public abstract isCurrentFragment()Z
.end method

.method public abstract processOptionsMenu(Landroid/view/MenuItem;)Z
.end method

.method public abstract processSelectMenu(ILandroid/view/MenuItem;)Z
.end method

.method public abstract requestQueryList(I)V
.end method

.method public abstract resetIndexScrollerPosition()V
.end method
