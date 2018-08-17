.class Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;
.super Ljava/lang/Object;
.source "ActionMenuHelper.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/ActionMenuHelper;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/ActionMenuHelper;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;->this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;->this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;->this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;->onItemSelected(Landroid/view/MenuItem;)V

    .line 83
    :cond_d
    const/4 v0, 0x1

    return v0
.end method
