.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$12;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;->initProgressBar()V
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
    .line 883
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$12;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 886
    const/4 v0, 0x1

    return v0
.end method
