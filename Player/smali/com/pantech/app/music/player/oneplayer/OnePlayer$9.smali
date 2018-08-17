.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;
.super Landroid/telephony/PhoneStateListener;
.source "OnePlayer.java"


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
    .line 371
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: State - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: incomingNumber - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    if-ne p1, v0, :cond_54

    .line 378
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShowHelpGuide()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 379
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1800(Lcom/pantech/app/music/player/oneplayer/OnePlayer;ZLandroid/content/Context;)V

    .line 380
    :cond_47
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 381
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    .line 383
    :cond_54
    return-void
.end method
