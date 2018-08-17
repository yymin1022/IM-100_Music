.class Lcom/pantech/app/music/view/SkyDialogFragment$8;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createEditPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

.field final synthetic val$editTextForPlayListName:Lcom/pantech/app/music/view/SkyEditText;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 3

    .prologue
    .line 914
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$8;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iput-object p2, p0, Lcom/pantech/app/music/view/SkyDialogFragment$8;->val$editTextForPlayListName:Lcom/pantech/app/music/view/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$8;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_f

    .line 919
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$8;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$8;->val$editTextForPlayListName:Lcom/pantech/app/music/view/SkyEditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 920
    :cond_f
    return-void
.end method
