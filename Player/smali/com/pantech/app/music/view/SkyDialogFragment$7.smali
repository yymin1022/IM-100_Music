.class Lcom/pantech/app/music/view/SkyDialogFragment$7;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;


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


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 2

    .prologue
    .line 854
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$7;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindSpecialCharacter()V
    .registers 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$7;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08012d

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 859
    return-void
.end method

.method public onTextChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isBtnEnable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 864
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$7;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 866
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$7;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 868
    :cond_16
    return-void
.end method
