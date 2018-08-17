.class final Lcom/pantech/app/music/utils/ListUtils$2;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/utils/ListUtils;->showSkyAskPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;Ljava/lang/String;Z)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;

.field final synthetic val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field final synthetic val$popupListId:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;ILcom/pantech/app/music/view/SkyMusicPopupList;)V
    .registers 4

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;

    iput p2, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$popupListId:I

    iput-object p3, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;

    if-eqz v0, :cond_11

    .line 92
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;

    iget v1, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$popupListId:I

    iget-object v2, p0, Lcom/pantech/app/music/utils/ListUtils$2;->val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v2, p2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;->onDialogNoSelected(Landroid/content/DialogInterface;ILandroid/view/View;)V

    .line 93
    :cond_11
    return-void
.end method
