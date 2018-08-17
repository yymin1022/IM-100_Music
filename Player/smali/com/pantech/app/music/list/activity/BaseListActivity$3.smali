.class Lcom/pantech/app/music/list/activity/BaseListActivity$3;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/BaseListActivity;->showPopupAndNothing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V
    .registers 2

    .prologue
    .line 692
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$3;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I

    .prologue
    .line 700
    return-void
.end method
