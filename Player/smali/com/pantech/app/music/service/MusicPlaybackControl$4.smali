.class Lcom/pantech/app/music/service/MusicPlaybackControl$4;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iput-object p2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1070
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1002(Lcom/pantech/app/music/service/MusicPlaybackControl;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1073
    :cond_1a
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1074
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$4;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1077
    :cond_36
    return-void
.end method
