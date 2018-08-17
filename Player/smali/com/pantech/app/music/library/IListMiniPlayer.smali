.class public interface abstract Lcom/pantech/app/music/library/IListMiniPlayer;
.super Ljava/lang/Object;
.source "IListMiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/IListMiniPlayer$Callback;
    }
.end annotation


# static fields
.field public static final OPTION_ACTION_MODE:I = 0x2

.field public static final OPTION_FORCE_TO_HIDE:I = 0x1


# virtual methods
.method public abstract addOptions(I)V
.end method

.method public abstract hide(IZ)V
.end method

.method public abstract isActivated()Z
.end method

.method public abstract onPlayingStatusChanged(Landroid/content/Intent;)V
.end method

.method public abstract onServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V
.end method

.method public abstract removeOptions(I)V
.end method

.method public abstract setCallback(Lcom/pantech/app/music/library/IListMiniPlayer$Callback;)V
.end method

.method public abstract show(IZ)V
.end method
