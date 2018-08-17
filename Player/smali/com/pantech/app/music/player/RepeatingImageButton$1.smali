.class Lcom/pantech/app/music/player/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/RepeatingImageButton;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/pantech/app/music/player/RepeatingImageButton$1;->this$0:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton$1;->this$0:Lcom/pantech/app/music/player/RepeatingImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->access$000(Lcom/pantech/app/music/player/RepeatingImageButton;Z)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton$1;->this$0:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/player/RepeatingImageButton$1;->this$0:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v1, p0, Lcom/pantech/app/music/player/RepeatingImageButton$1;->this$0:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-static {v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->access$100(Lcom/pantech/app/music/player/RepeatingImageButton;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_19
    return-void
.end method
