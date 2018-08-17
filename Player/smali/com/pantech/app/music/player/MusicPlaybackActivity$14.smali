.class Lcom/pantech/app/music/player/MusicPlaybackActivity$14;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->deleteSong()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

.field final synthetic val$delAudioID:J


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V
    .registers 4

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iput-wide p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->val$delAudioID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1830
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;-><init>(Landroid/content/Context;)V

    .line 1831
    .local v0, "dbInterface":Lcom/pantech/app/music/list/db/DBInterfaceDelete;
    new-instance v1, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getReal()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    iget-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->val$delAudioID:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteSong(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;J)I

    .line 1832
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f08012b

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    .line 1833
    return-void
.end method
