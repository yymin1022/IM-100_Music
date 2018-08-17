.class Lcom/pantech/app/music/library/helper/PlaylistHelper$4;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$4;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$4;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 414
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$4;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 415
    :cond_16
    return-void
.end method
