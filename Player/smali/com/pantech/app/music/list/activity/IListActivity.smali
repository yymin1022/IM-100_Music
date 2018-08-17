.class public interface abstract Lcom/pantech/app/music/list/activity/IListActivity;
.super Ljava/lang/Object;
.source "IListActivity.java"


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCurrentFragment()Landroid/app/Fragment;
.end method

.method public abstract getCurrentFragments()[Landroid/app/Fragment;
.end method

.method public abstract getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;
.end method

.method public abstract getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
.end method

.method public abstract isCurrentFragment(Landroid/app/Fragment;)Z
.end method
