.class Lcom/pantech/app/music/player/AudioPreview$5;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/AudioPreview;->showMsgOnToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/AudioPreview;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/AudioPreview;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 981
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    iput-object p2, p0, Lcom/pantech/app/music/player/AudioPreview$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1000(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_16

    .line 985
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->access$1002(Lcom/pantech/app/music/player/AudioPreview;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 988
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1000(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 989
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1000(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$5;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1000(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 992
    :cond_32
    return-void
.end method
