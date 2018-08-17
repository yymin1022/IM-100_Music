.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;->showHelpGuide(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 786
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    iput-object p2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 789
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2d

    .line 790
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1a

    .line 791
    const-string v1, "OnePlayer"

    const-string v2, "onKey BACK"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1800(Lcom/pantech/app/music/player/oneplayer/OnePlayer;ZLandroid/content/Context;)V

    .line 800
    :goto_19
    return v0

    .line 794
    :cond_1a
    const/16 v2, 0x11b

    if-ne p2, v2, :cond_2d

    .line 795
    const-string v2, "OnePlayer"

    const-string v3, "onKey Wheel Key."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;->val$context:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1800(Lcom/pantech/app/music/player/oneplayer/OnePlayer;ZLandroid/content/Context;)V

    goto :goto_19

    :cond_2d
    move v0, v1

    .line 800
    goto :goto_19
.end method
