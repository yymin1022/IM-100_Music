.class final Lcom/pantech/app/music/utils/ListUtils$13;
.super Ljava/lang/Object;
.source "ListUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 483
    iput-object p1, p0, Lcom/pantech/app/music/utils/ListUtils$13;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$13;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    if-eqz v0, :cond_9

    .line 489
    iget-object v0, p0, Lcom/pantech/app/music/utils/ListUtils$13;->val$callback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;->onPopupListDismiss(Landroid/content/DialogInterface;)V

    .line 490
    :cond_9
    return-void
.end method
