.class Lcom/pantech/app/music/player/DetailControllerActivity$5;
.super Ljava/lang/Object;
.source "DetailControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/DetailControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/DetailControllerActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$5;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$5;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$600(Lcom/pantech/app/music/player/DetailControllerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$5;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$5;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$700(Lcom/pantech/app/music/player/DetailControllerActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$800(Lcom/pantech/app/music/player/DetailControllerActivity;Z)V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$5;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$500(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    .line 124
    :cond_34
    const/4 v0, 0x0

    return v0
.end method
