.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;


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
    .line 247
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchCurrentPlayPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "delay"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1400(Lcom/pantech/app/music/player/oneplayer/OnePlayer;II)V

    .line 276
    return-void
.end method

.method public onCatchPlayPosition(II)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "delay"    # I

    .prologue
    .line 262
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCatchPlayPosition ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I

    move-result v0

    if-ne v0, p1, :cond_46

    .line 267
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$400(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    .line 270
    :goto_45
    return-void

    .line 269
    :cond_46
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;II)V

    goto :goto_45
.end method

.method public onStartTouchRotate(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .prologue
    .line 254
    return-void
.end method

.method public onStopTouchRotate(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .prologue
    .line 258
    return-void
.end method

.method public onTouchRotateChanged(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .prologue
    .line 250
    return-void
.end method

.method public onWheelRotateChanged(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 280
    if-gez p1, :cond_3

    .line 288
    :goto_2
    return-void

    .line 281
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAdapter()Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 282
    .local v1, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "artist":Ljava/lang/CharSequence;
    const-string v3, "OnePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWheelRotateChanged() position = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " title = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " artist = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v3, v2, v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1500(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
