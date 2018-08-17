.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4$1;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;->onDialogDismissed(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    .line 513
    return-void
.end method
