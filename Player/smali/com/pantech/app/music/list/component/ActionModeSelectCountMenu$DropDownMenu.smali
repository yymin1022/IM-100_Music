.class public Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;
.super Ljava/lang/Object;
.source "ActionModeSelectCountMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownMenu"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;ILcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "menuId"    # I
    .param p4, "listener"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    .line 33
    iput-object p4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mListener:Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$SelectDropdownMenuListener;

    .line 35
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 36
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 38
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 44
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingTop()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 46
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$1;-><init>(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu$2;-><init>(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/view/Menu;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/widget/PopupMenu;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 113
    :cond_9
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
