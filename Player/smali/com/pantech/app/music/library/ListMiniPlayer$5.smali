.class Lcom/pantech/app/music/library/ListMiniPlayer$5;
.super Ljava/lang/Object;
.source "ListMiniPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;->show(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V
    .registers 2

    .prologue
    .line 403
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$5;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$5;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$5;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_e
    return-void
.end method
