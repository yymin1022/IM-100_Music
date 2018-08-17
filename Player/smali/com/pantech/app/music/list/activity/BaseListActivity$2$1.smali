.class Lcom/pantech/app/music/list/activity/BaseListActivity$2$1;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/BaseListActivity$2;->onDialogDismissed(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/activity/BaseListActivity$2;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/BaseListActivity$2;)V
    .registers 2

    .prologue
    .line 674
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$2$1;->this$1:Lcom/pantech/app/music/list/activity/BaseListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$2$1;->this$1:Lcom/pantech/app/music/list/activity/BaseListActivity$2;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$2;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->finish()V

    .line 679
    return-void
.end method
