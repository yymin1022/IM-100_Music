.class Lcom/pantech/app/music/view/SkyDialogFragment$5;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createChkAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
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
    .line 773
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$5;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 779
    .local v0, "chkBox":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$5;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v1, v1, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    if-eqz v1, :cond_14

    .line 780
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$5;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v1, v1, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;->onChkBoxChanged(Landroid/view/View;Z)V

    .line 781
    :cond_14
    return-void
.end method
