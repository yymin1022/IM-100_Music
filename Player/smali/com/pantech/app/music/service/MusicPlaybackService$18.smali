.class Lcom/pantech/app/music/service/MusicPlaybackService$18;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2898
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$18;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iput-object p2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$18;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2901
    invoke-static {}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4600()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2902
    invoke-static {}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4600()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2905
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$18;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4602(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2906
    invoke-static {}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4600()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2907
    invoke-static {}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4600()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$18;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2908
    invoke-static {}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4600()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2910
    :cond_33
    return-void
.end method
