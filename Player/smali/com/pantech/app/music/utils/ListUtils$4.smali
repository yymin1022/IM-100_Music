.class final Lcom/pantech/app/music/utils/ListUtils$4;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

.field final synthetic val$popupListId:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;I)V
    .registers 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$4;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    iput p2, p0, Lcom/pantech/app/music/utils/ListUtils$4;->val$popupListId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$4;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    if-eqz v0, :cond_b

    .line 187
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$4;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    iget v1, p0, Lcom/pantech/app/music/utils/ListUtils$4;->val$popupListId:I

    invoke-interface {v0, p1, v1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;->onDialogDismissed(Landroid/content/DialogInterface;I)V

    .line 188
    :cond_b
    return-void
.end method
