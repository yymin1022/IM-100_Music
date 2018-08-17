.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I

    move-result v0

    if-eq v0, p1, :cond_25

    .line 206
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1100(Lcom/pantech/app/music/player/oneplayer/OnePlayer;I)V

    .line 209
    :cond_25
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1002(Lcom/pantech/app/music/player/oneplayer/OnePlayer;I)I

    .line 210
    return-void
.end method
