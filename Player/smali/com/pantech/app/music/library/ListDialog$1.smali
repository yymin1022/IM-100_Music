.class Lcom/pantech/app/music/library/ListDialog$1;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListDialog;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListDialog;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pantech/app/music/library/ListDialog$1;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$1;->this$0:Lcom/pantech/app/music/library/ListDialog;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListDialog;->mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$1;->this$0:Lcom/pantech/app/music/library/ListDialog;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListDialog;->mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListDialog$1;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;->onDialogPositiveClick(Landroid/app/DialogFragment;)V

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$1;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    return-void
.end method
