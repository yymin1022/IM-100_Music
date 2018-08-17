.class Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;
.super Ljava/lang/Object;
.source "CircularLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setItems(Ljava/lang/CharSequence;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

.field final synthetic val$from:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 689
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;->this$0:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iput-object p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;->val$from:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;->this$0:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$2;->val$from:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->access$000(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Ljava/lang/CharSequence;)V

    .line 693
    return-void
.end method
