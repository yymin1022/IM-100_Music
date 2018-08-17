.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 212
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1200(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 217
    const-string v0, "OnePlayer"

    const-string v1, "onTouch Background."

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    .line 219
    const/4 v0, 0x1

    .line 242
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
