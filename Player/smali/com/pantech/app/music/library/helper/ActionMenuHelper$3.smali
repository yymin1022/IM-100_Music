.class Lcom/pantech/app/music/library/helper/ActionMenuHelper$3;
.super Ljava/lang/Object;
.source "ActionMenuHelper.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 86
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper$3;->this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper$3;->this$0:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 92
    return-void
.end method
