.class final Lcom/pantech/app/music/utils/ListUtils$6;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/utils/ListUtils;->showSkyEditPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;Ljava/lang/String;ZZ)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/view/View$OnClickListener;

.field final synthetic val$editTextForPlayListName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 299
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$6;->val$callback:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/pantech/app/music/utils/ListUtils$6;->val$editTextForPlayListName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$6;->val$callback:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_b

    .line 304
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$6;->val$callback:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/pantech/app/music/utils/ListUtils$6;->val$editTextForPlayListName:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 306
    :cond_b
    return-void
.end method
