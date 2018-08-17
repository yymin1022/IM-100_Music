.class final Lcom/pantech/app/music/utils/ListUtils$11;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/utils/ListUtils;->showSkyChkBoxPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;Ljava/lang/String;Z)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$11;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 464
    .local v0, "chkBox":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/pantech/app/music/utils/ListUtils$11;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    if-eqz v1, :cond_10

    .line 465
    iget-object v1, p0, Lcom/pantech/app/music/utils/ListUtils$11;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;->onChkBoxChanged(Landroid/view/View;Z)V

    .line 466
    :cond_10
    return-void
.end method
