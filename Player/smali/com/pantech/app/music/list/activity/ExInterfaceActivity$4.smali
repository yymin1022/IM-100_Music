.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showPopupAndFinsih(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V
    .registers 2

    .prologue
    .line 501
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I

    .prologue
    .line 505
    const/16 v0, 0x159

    if-ne p2, v0, :cond_e

    .line 507
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    new-instance v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4$1;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    :cond_e
    return-void
.end method
