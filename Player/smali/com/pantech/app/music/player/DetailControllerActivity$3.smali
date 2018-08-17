.class Lcom/pantech/app/music/player/DetailControllerActivity$3;
.super Ljava/lang/Object;
.source "DetailControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 90
    iput-object p1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$300(Lcom/pantech/app/music/player/DetailControllerActivity;)Lcom/pantech/app/music/player/RepeatingImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$200(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    .line 98
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$100(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    .line 99
    return-void

    .line 95
    :cond_17
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$400(Lcom/pantech/app/music/player/DetailControllerActivity;)Lcom/pantech/app/music/player/RepeatingImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$3;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$000(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    goto :goto_11
.end method
