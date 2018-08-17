.class Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "ActionModeSelectCountMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$1;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$1;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    iget-object v0, v0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;->onDropDownMenuSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
