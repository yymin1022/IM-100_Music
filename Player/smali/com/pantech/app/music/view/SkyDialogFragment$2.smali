.class Lcom/pantech/app/music/view/SkyDialogFragment$2;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

.field final synthetic val$dialogID:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;I)V
    .registers 3

    .prologue
    .line 705
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iput p2, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->val$dialogID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 709
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogNoSelected dialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget v3, v3, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkyDialogFragment;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    if-eqz v0, :cond_45

    .line 712
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    iget v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->val$dialogID:I

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget v3, v3, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkyDialogFragment;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;->onDialogNoSelected(Landroid/content/DialogInterface;ILjava/lang/Object;)V

    .line 713
    :cond_45
    return-void
.end method
