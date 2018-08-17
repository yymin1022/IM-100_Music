.class Lcom/pantech/app/music/view/SkyDialogFragment$11;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createInformPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyDialogFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 2

    .prologue
    .line 997
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$11;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$11;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogInformListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    if-eqz v0, :cond_e

    .line 1002
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$11;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogInformListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;->onDialogDismissed(Landroid/content/DialogInterface;I)V

    .line 1003
    :cond_e
    return-void
.end method
