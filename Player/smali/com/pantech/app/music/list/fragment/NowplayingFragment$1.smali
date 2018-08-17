.class Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;
.super Ljava/lang/Object;
.source "NowplayingFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/NowplayingFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/NowplayingFragment;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;

    check-cast p2, Lcom/pantech/app/music/service/IMusicPlaybackService;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->access$002(Lcom/pantech/app/music/list/fragment/NowplayingFragment;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 90
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->access$002(Lcom/pantech/app/music/list/fragment/NowplayingFragment;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 84
    return-void
.end method
