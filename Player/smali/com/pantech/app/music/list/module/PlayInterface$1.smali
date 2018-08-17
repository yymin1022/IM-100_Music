.class Lcom/pantech/app/music/list/module/PlayInterface$1;
.super Ljava/lang/Object;
.source "PlayInterface.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/PlayInterface;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/PlayInterface;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$1;->this$0:Lcom/pantech/app/music/list/module/PlayInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMakePlayInfoComplele(Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;Lcom/pantech/app/music/list/module/PlayInterface$PlayType;)V
    .registers 6
    .param p1, "playinfo"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;
    .param p2, "playType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$1;->this$0:Lcom/pantech/app/music/list/module/PlayInterface;

    iget-object v1, v1, Lcom/pantech/app/music/list/module/PlayInterface;->mHandler:Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method
