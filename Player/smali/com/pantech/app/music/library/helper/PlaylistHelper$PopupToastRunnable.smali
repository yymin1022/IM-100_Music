.class Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupToastRunnable"
.end annotation


# instance fields
.field popupText:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;I)V
    .registers 4
    .param p2, "textID"    # I

    .prologue
    .line 894
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iget-object v0, p1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->popupText:Ljava/lang/String;

    .line 896
    return-void
.end method

.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/lang/String;)V
    .registers 3
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->popupText:Ljava/lang/String;

    .line 892
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 900
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_15

    .line 901
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mToast:Landroid/widget/Toast;

    .line 904
    :cond_15
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2b

    .line 905
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->popupText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 908
    :cond_2b
    return-void
.end method
