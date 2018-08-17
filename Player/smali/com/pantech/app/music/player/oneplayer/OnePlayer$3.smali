.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 154
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x10010000

    .line 157
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$200(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 158
    const-string v1, "OnePlayer"

    const-string v2, "onClick play button."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setUpdatePlayPosition(Z)V

    .line 166
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$400(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    .line 193
    :cond_24
    :goto_24
    return-void

    .line 167
    :cond_25
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$500(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 168
    const-string v1, "OnePlayer"

    const-string v2, "onTouch Go to Music Playback."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/music/list/utility/LaunchActivity;->getMusicReenterPoint()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    const-string v1, "toPlayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    goto :goto_24

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5f
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$700(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 179
    const-string v1, "OnePlayer"

    const-string v2, "onClick Go to Music List."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/music/list/utility/LaunchActivity;->getMusicReenterPoint()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    goto :goto_24
.end method
