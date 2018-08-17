.class Lcom/pantech/app/music/library/activity/ShortCutActivity$1;
.super Ljava/lang/Object;
.source "ShortCutActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ShortCutActivity;->bindToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 92
    const-string v0, "ShortCutActivity"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 95
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-wide v2, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    long-to-int v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 96
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 101
    return-void
.end method
