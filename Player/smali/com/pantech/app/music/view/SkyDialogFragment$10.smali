.class Lcom/pantech/app/music/view/SkyDialogFragment$10;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 942
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$10;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iput-object p2, p0, Lcom/pantech/app/music/view/SkyDialogFragment$10;->val$editTextForPlayListName:Lcom/pantech/app/music/view/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 946
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$10;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 948
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$10;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 951
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$10;->val$editTextForPlayListName:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 953
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_20
    return-void
.end method
