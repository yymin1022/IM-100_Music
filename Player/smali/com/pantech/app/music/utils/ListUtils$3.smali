.class final Lcom/pantech/app/music/utils/ListUtils$3;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/utils/ListUtils;->showSkyInformOneButtonPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

.field final synthetic val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field final synthetic val$popupListId:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyMusicPopupList;Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;I)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    iput-object p2, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    iput p3, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$popupListId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$popupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    if-eqz v0, :cond_10

    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    iget v1, p0, Lcom/pantech/app/music/utils/ListUtils$3;->val$popupListId:I

    invoke-interface {v0, p1, v1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;->onDialogDismissed(Landroid/content/DialogInterface;I)V

    .line 139
    :cond_10
    return-void
.end method
