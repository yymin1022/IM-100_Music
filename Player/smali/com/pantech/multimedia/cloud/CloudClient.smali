.class public interface abstract Lcom/pantech/multimedia/cloud/CloudClient;
.super Ljava/lang/Object;
.source "CloudClient.java"


# virtual methods
.method public abstract getLogOnState()Ljava/lang/Object;
.end method

.method public abstract initCloud()Z
.end method

.method public abstract logIn()Ljava/lang/Object;
.end method

.method public abstract requestDownload(Ljava/lang/Object;I)V
.end method

.method public abstract requestFileInfo(I)Ljava/lang/Object;
.end method

.method public abstract requestPlaylistSongs(I)Ljava/lang/Object;
.end method

.method public abstract requestPlaylists()Ljava/lang/Object;
.end method

.method public abstract requestSongs()Ljava/lang/Object;
.end method

.method public abstract setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
.end method

.method public abstract setOnResonseListener(Lcom/pantech/multimedia/cloud/OnResponseCloudListener;)V
.end method
