.class Lcom/pantech/app/music/list/component/ActionModeCommandBar$1;
.super Ljava/lang/Object;
.source "ActionModeCommandBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/ActionModeCommandBar;->createPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/ActionModeCommandBar;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar$1;->this$0:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar$1;->this$0:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    iget-object v0, v0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
