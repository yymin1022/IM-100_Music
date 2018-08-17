.class Lcom/pantech/app/music/library/activity/ShortCutActivity$2;
.super Ljava/lang/Object;
.source "ShortCutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ShortCutActivity;->createLoadingDialog()V
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
    .line 115
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v0, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v0, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v0, v0

    if-lez v0, :cond_2c

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->playAll(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-static {v0}, Lcom/pantech/app/music/utils/IntentUtils;->gotoPlayer(Landroid/app/Activity;)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/music/library/activity/ShortCutActivity$2$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity$2$1;-><init>(Lcom/pantech/app/music/library/activity/ShortCutActivity$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :goto_2b
    return-void

    .line 131
    :cond_2c
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    const v1, 0x7f080138

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->finish()V

    goto :goto_2b
.end method
