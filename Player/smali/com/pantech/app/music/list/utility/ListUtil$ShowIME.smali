.class public Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;
.super Ljava/lang/Object;
.source "ListUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/utility/ListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowIME"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/pantech/app/music/view/SkyEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;->mView:Lcom/pantech/app/music/view/SkyEditText;

    .line 100
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;->mView:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 107
    :cond_16
    return-void
.end method
