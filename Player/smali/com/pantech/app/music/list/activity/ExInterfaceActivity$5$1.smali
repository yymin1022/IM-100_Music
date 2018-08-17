.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->onDialogYesSelected(Landroid/content/DialogInterface;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayResult(ZLcom/pantech/app/music/list/module/PlayInterface$PlayInfo;)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "object"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v0, v1, v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->overridePendingTransition(II)V

    .line 545
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    .line 546
    return-void
.end method
