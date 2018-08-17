.class public interface abstract Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;
.super Ljava/lang/Object;
.source "MultiPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMultiPlayerListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onError(Landroid/media/MediaPlayer;II)V
.end method

.method public abstract onMediaServerDied(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onPrepared(Landroid/media/MediaPlayer;)V
.end method
