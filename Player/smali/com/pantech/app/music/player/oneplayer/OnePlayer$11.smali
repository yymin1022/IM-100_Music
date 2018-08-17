.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 805
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    iput-object p2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 808
    const-string v0, "OnePlayer"

    const-string v1, "onClick. Help guide exit."

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$1800(Lcom/pantech/app/music/player/oneplayer/OnePlayer;ZLandroid/content/Context;)V

    .line 810
    return-void
.end method
