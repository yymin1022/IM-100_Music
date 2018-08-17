.class Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;
.super Ljava/lang/Object;
.source "ActionModeSelectCountMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-static {v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->access$000(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v2

    .line 67
    .local v2, "nSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_5c

    .line 69
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-static {v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->access$000(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 71
    .local v1, "item":Landroid/view/MenuItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Menu:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_59

    const-string v4, "visible"

    :goto_43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 73
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 75
    or-int/lit8 v3, v3, 0x1

    .line 67
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 71
    :cond_59
    const-string v4, "invisible"

    goto :goto_43

    .line 86
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_5c
    if-nez v3, :cond_5f

    .line 92
    :goto_5e
    return-void

    .line 89
    :cond_5f
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    iget-object v4, v4, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    invoke-interface {v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;->onDropDownButtonSelected()V

    .line 91
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    invoke-static {v4}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->access$100(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    goto :goto_5e
.end method
