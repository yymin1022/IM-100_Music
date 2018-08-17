.class Lcom/pantech/app/music/library/ListMiniPlayer$1;
.super Ljava/lang/Object;
.source "ListMiniPlayer.java"

# interfaces
.implements Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;
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
    .line 83
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$1;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "howlong"    # J
    .param p4, "repcnt"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$1;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-static {v0, p4, p2, p3}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$000(Lcom/pantech/app/music/library/ListMiniPlayer;IJ)V

    .line 87
    return-void
.end method
