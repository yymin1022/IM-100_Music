.class Lcom/pantech/app/music/service/MusicPlaybackService$15$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService$15;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/service/MusicPlaybackService$15;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService$15;)V
    .registers 2

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15$1;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15$1;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$15;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3402(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 1409
    return-void
.end method
