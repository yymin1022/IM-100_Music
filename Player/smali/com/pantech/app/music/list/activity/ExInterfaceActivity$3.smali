.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$3;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 387
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$3;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$3;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    .line 392
    return-void
.end method
