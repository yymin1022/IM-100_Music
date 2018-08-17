.class final Lcom/pantech/app/music/utils/ListUtils$10;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 444
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$10;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$10;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    if-eqz v0, :cond_9

    .line 449
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$10;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;->onDialogNoSelected(Landroid/content/DialogInterface;)V

    .line 450
    :cond_9
    return-void
.end method
