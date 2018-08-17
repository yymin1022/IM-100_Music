.class public final Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;
.super Landroid/os/Handler;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicPlaybackHandler"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/MusicPlaybackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 2153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 2155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2159
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .line 2160
    .local v0, "activity":Lcom/pantech/app/music/player/MusicPlaybackActivity;
    if-eqz v0, :cond_d

    .line 2161
    invoke-static {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2400(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/os/Message;)V

    .line 2163
    :cond_d
    return-void
.end method
