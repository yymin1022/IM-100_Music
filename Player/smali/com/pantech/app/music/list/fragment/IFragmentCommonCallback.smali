.class public interface abstract Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
.super Ljava/lang/Object;
.source "IFragmentCommonCallback.java"

# interfaces
.implements Lcom/pantech/app/music/list/listener/IMTPCallback;
.implements Lcom/pantech/app/music/list/listener/IPlayStatusCallback;
.implements Lcom/pantech/app/music/list/listener/IMediaScannerCallback;


# virtual methods
.method public abstract OnUBoxSessionChanged(Landroid/content/Intent;)V
.end method

.method public abstract onClearSelection()V
.end method

.method public abstract onContentsDBChanged(ZLandroid/net/Uri;)V
.end method

.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onTouchLockFreed(J)V
.end method

.method public abstract onUserPresent()V
.end method

.method public abstract onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
.end method
