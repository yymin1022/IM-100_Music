.class Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioPreviewHandler"
.end annotation


# instance fields
.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/AudioPreview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 3
    .param p1, "audioPreview"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 1126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 1128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/AudioPreview;

    .line 1133
    .local v0, "audioPreview":Lcom/pantech/app/music/player/AudioPreview;
    if-eqz v0, :cond_d

    .line 1134
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/AudioPreview;->handleAudioPreview(Landroid/os/Message;)V

    .line 1136
    :cond_d
    return-void
.end method
