.class Lcom/pantech/app/music/list/module/ShareOnlineService$1;
.super Ljava/lang/Object;
.source "ShareOnlineService.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/ShareOnlineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/ShareOnlineService;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChkBoxChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0, p2}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$102(Lcom/pantech/app/music/list/module/ShareOnlineService;Z)Z

    .line 61
    const-string v0, " #### onChkBoxChanged "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onDialogNoSelected(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$000(Lcom/pantech/app/music/list/module/ShareOnlineService;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$000(Lcom/pantech/app/music/list/module/ShareOnlineService;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 52
    :cond_11
    const-string v0, " #### onDialogNoSelected "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onDialogYesSelected(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$000(Lcom/pantech/app/music/list/module/ShareOnlineService;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 35
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$000(Lcom/pantech/app/music/list/module/ShareOnlineService;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 41
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connect_data_notification"

    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$100(Lcom/pantech/app/music/list/module/ShareOnlineService;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_24
    invoke-static {v1, v2, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 43
    const-string v0, " #### onDialogYesSelected "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 44
    return-void

    .line 41
    :cond_2d
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onPopupListDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;->this$0:Lcom/pantech/app/music/list/module/ShareOnlineService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/module/ShareOnlineService;->access$102(Lcom/pantech/app/music/list/module/ShareOnlineService;Z)Z

    .line 71
    const-string v0, " #### onPopupListDismiss "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 72
    return-void
.end method
