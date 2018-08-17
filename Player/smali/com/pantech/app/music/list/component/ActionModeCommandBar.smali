.class public Lcom/pantech/app/music/list/component/ActionModeCommandBar;
.super Ljava/lang/Object;
.source "ActionModeCommandBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;
    }
.end annotation


# instance fields
.field mCart:Landroid/widget/LinearLayout;

.field mCommandLayer:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mDelete:Landroid/widget/LinearLayout;

.field mDeleteIcon:Landroid/widget/ImageView;

.field mDeleteTextView:Landroid/widget/TextView;

.field mIsShowing:Z

.field mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

.field mMenu:Landroid/widget/ImageView;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mPlay:Landroid/widget/LinearLayout;

.field mPopupMenu:Landroid/widget/PopupMenu;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field menuTable:Lcom/pantech/app/music/list/component/MenuTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;Landroid/view/View;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;
    .param p3, "layer"    # Landroid/view/View;
    .param p4, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mIsShowing:Z

    .line 52
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    .line 56
    iput-object p3, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    .line 58
    iput-object p4, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 60
    new-instance v0, Lcom/pantech/app/music/list/component/MenuTable;

    invoke-direct {v0}, Lcom/pantech/app/music/list/component/MenuTable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->menuTable:Lcom/pantech/app/music/list/component/MenuTable;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 64
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    if-eqz v0, :cond_9e

    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteTextView:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteIcon:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const v1, 0x7f1000d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7c

    .line 74
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_7c
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_85

    .line 76
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_85
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8e

    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_8e
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_97
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_9e
    return-void
.end method


# virtual methods
.method public createPopupMenu()V
    .registers 13

    .prologue
    .line 175
    new-instance v5, Landroid/widget/PopupMenu;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    invoke-direct {v5, v8, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 177
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 180
    .local v3, "menu":Landroid/view/Menu;
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->menuTable:Lcom/pantech/app/music/list/component/MenuTable;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/component/MenuTable;->getSelectMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v5

    int-to-long v6, v5

    .line 182
    .local v6, "menu_mask":J
    const/4 v4, 0x0

    .line 183
    .local v4, "menuCount":I
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    .line 184
    .local v1, "allSelectedCount":I
    const/4 v0, 0x1

    .line 185
    .local v0, "allChildCount":I
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 187
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/db/SelectManager;->getAllChildCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v0

    .line 190
    :cond_44
    const/4 v2, 0x0

    .line 192
    .local v2, "isCanNotDeleteItemSelected":Z
    const-wide/16 v8, 0x10

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_57

    const-wide/16 v8, 0x20

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_a2

    .line 194
    :cond_57
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    const/4 v9, -0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 195
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    const/4 v9, -0x5

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 196
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    const/4 v9, -0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 197
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    const/4 v9, -0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 200
    :cond_a2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllSelectedCount:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " allChildCount:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " menu_mask:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " isCanNotDeleteItemSelected:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 202
    if-lez v1, :cond_fd

    if-lez v0, :cond_fd

    const-wide/16 v8, 0x1000

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_fd

    .line 204
    const/4 v5, 0x0

    const/16 v8, 0x1000

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080194

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 208
    :cond_fd
    const/4 v5, 0x1

    if-ne v1, v5, :cond_11f

    const-wide/16 v8, 0x80

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_11f

    .line 210
    const/4 v5, 0x0

    const/16 v8, 0x80

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 214
    :cond_11f
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_12b

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_185

    .line 216
    :cond_12b
    if-lez v1, :cond_14b

    const-wide/16 v8, 0x4

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_14b

    .line 218
    const/4 v5, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080062

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 222
    :cond_14b
    if-lez v1, :cond_162

    const-wide/16 v8, 0x8

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_162

    .line 224
    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v10, 0x7f080064

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 225
    add-int/lit8 v4, v4, 0x1

    .line 228
    :cond_162
    if-lez v1, :cond_185

    const-wide/16 v8, 0x10

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_185

    .line 230
    if-nez v2, :cond_185

    .line 232
    const/4 v5, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 238
    :cond_185
    if-lez v1, :cond_1ad

    const-wide/16 v8, 0x20

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1ad

    .line 240
    if-nez v2, :cond_1ad

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v8, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/db/SelectManager;->getParentSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1ad

    .line 242
    const/4 v5, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    const v10, 0x7f080066

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 247
    :cond_1ad
    if-lez v1, :cond_1c6

    if-lez v0, :cond_1c6

    const-wide/16 v8, 0x40

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1c6

    .line 249
    const/4 v5, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    const v10, 0x7f080069

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 253
    :cond_1c6
    if-lez v1, :cond_1d1

    const-wide/16 v8, 0x400

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1d1

    .line 259
    :cond_1d1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e9

    const-wide/16 v8, 0x100

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1e9

    .line 261
    const/4 v5, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    const v10, 0x7f08006a

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 262
    add-int/lit8 v4, v4, 0x1

    .line 265
    :cond_1e9
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_215

    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_215

    const/4 v5, 0x1

    if-ne v1, v5, :cond_215

    const-wide/16 v8, 0x200

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_215

    .line 267
    const/4 v5, 0x0

    const/16 v8, 0x200

    const/4 v9, 0x0

    const v10, 0x7f080063

    invoke-interface {v3, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 271
    :cond_215
    if-lez v4, :cond_222

    .line 273
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v8, Lcom/pantech/app/music/list/component/ActionModeCommandBar$1;

    invoke-direct {v8, p0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$1;-><init>(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V

    invoke-virtual {v5, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 287
    :goto_221
    return-void

    .line 285
    :cond_222
    iget-object v5, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mContext:Landroid/content/Context;

    const v8, 0x7f08013d

    invoke-static {v5, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_221
.end method

.method public dismissPopupMenu()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 295
    :cond_9
    return-void
.end method

.method public getAvailableMenuCount()I
    .registers 11

    .prologue
    .line 88
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->menuTable:Lcom/pantech/app/music/list/component/MenuTable;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/component/MenuTable;->getSelectMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v6

    int-to-long v4, v6

    .line 90
    .local v4, "menu_mask":J
    const/4 v3, 0x0

    .line 91
    .local v3, "menuCount":I
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    .line 92
    .local v1, "allSelectedCount":I
    const/4 v0, 0x1

    .line 93
    .local v0, "allChildCount":I
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 95
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getAllChildCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v0

    .line 98
    :cond_33
    const/4 v2, 0x0

    .line 100
    .local v2, "isCanNotDeleteItemSelected":Z
    const-wide/16 v6, 0x10

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_46

    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_91

    .line 102
    :cond_46
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    const/4 v8, -0x4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 103
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    const/4 v8, -0x5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 104
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    const/4 v8, -0x6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 105
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    const/4 v8, -0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 108
    :cond_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllSelectedCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " menu_mask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCanNotDeleteItemSelected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 110
    if-lez v1, :cond_ce

    if-lez v0, :cond_ce

    const-wide/16 v6, 0x1000

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_ce

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 115
    :cond_ce
    const/4 v6, 0x1

    if-ne v1, v6, :cond_dc

    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_dc

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 120
    :cond_dc
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_e8

    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_111

    .line 122
    :cond_e8
    if-lez v1, :cond_f5

    const-wide/16 v6, 0x4

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_f5

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 127
    :cond_f5
    if-lez v1, :cond_102

    const-wide/16 v6, 0x8

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_102

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 132
    :cond_102
    if-lez v1, :cond_111

    const-wide/16 v6, 0x10

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_111

    .line 134
    if-nez v2, :cond_111

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 141
    :cond_111
    if-lez v1, :cond_12f

    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_12f

    .line 143
    if-nez v2, :cond_12f

    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getParentSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12f

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 149
    :cond_12f
    if-lez v1, :cond_13e

    if-lez v0, :cond_13e

    const-wide/16 v6, 0x40

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_13e

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 154
    :cond_13e
    if-lez v1, :cond_14b

    const-wide/16 v6, 0x400

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_14b

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 159
    :cond_14b
    const/4 v6, 0x1

    if-ne v1, v6, :cond_159

    const-wide/16 v6, 0x100

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_159

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 164
    :cond_159
    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v6

    if-eqz v6, :cond_17b

    iget-object v6, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v6

    if-eqz v6, :cond_17b

    const/4 v6, 0x1

    if-ne v1, v6, :cond_17b

    const-wide/16 v6, 0x200

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_17b

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 169
    :cond_17b
    return v3
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mIsShowing:Z

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 302
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mIsShowing:Z

    if-eqz v1, :cond_15

    .line 394
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 396
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    invoke-interface {v1, v7, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    .line 446
    :cond_15
    :goto_15
    return-void

    .line 398
    :cond_16
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 400
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    const/4 v4, 0x2

    invoke-interface {v1, v4, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    goto :goto_15

    .line 402
    :cond_25
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "menuAdded":I
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->menuTable:Lcom/pantech/app/music/list/component/MenuTable;

    iget-object v4, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/component/MenuTable;->getSelectMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    int-to-long v2, v1

    .line 407
    .local v2, "menu_mask":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-lez v1, :cond_4a

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 410
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    const/4 v4, 0x4

    invoke-interface {v1, v4, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    .line 413
    :cond_4a
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-lez v1, :cond_5a

    .line 415
    add-int/lit8 v0, v0, 0x1

    .line 416
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    const/16 v4, 0x8

    invoke-interface {v1, v4, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    .line 419
    :cond_5a
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-lez v1, :cond_6a

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 422
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    const/16 v4, 0x10

    invoke-interface {v1, v4, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    .line 425
    :cond_6a
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    cmp-long v1, v4, v8

    if-lez v1, :cond_8e

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 427
    :cond_85
    add-int/lit8 v0, v0, 0x1

    .line 428
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mListener:Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;

    const/16 v4, 0x200

    invoke-interface {v1, v4, v6}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$ActionModeCommandButtonListener;->processSelectMenu(ILandroid/view/MenuItem;)Z

    .line 431
    :cond_8e
    if-le v0, v7, :cond_15

    .line 432
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "\uc0ad\uc81c\uba54\ub274\uac00 2\uac1c \uc774\uc0c1 \uc874\uc7ac\ud558\uba74 \uc548\ub428."

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    .end local v0    # "menuAdded":I
    .end local v2    # "menu_mask":J
    :cond_98
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 436
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->createPopupMenu()V

    .line 438
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 439
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/pantech/app/music/list/component/ActionModeCommandBar$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar$2;-><init>(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    goto/16 :goto_15
.end method

.method public show()V
    .registers 3

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mIsShowing:Z

    .line 309
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCommandLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_d
    return-void
.end method

.method public update()V
    .registers 15

    .prologue
    .line 317
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    .line 318
    .local v1, "allSelectCount":I
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/db/SelectManager;->getAllChildCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v0

    .line 320
    .local v0, "allChildCount":I
    const/4 v8, 0x0

    .line 321
    .local v8, "secretBox":Z
    if-nez v1, :cond_11b

    const/4 v7, 0x1

    .line 322
    .local v7, "noSelectedContents":Z
    :goto_1c
    const/4 v3, 0x0

    .line 323
    .local v3, "noChildContents":Z
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 325
    if-nez v0, :cond_11e

    const/4 v3, 0x1

    .line 327
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->getAvailableMenuCount()I

    move-result v9

    if-nez v9, :cond_121

    const/4 v6, 0x1

    .line 329
    .local v6, "noMenuItems":Z
    :goto_33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActionBtnUpdate noSelectedContents:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " noChildContents:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 331
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_61

    .line 332
    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPlay:Landroid/widget/LinearLayout;

    if-nez v7, :cond_124

    if-nez v3, :cond_124

    const/4 v9, 0x1

    :goto_5e
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 333
    :cond_61
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_71

    .line 334
    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mCart:Landroid/widget/LinearLayout;

    if-nez v7, :cond_127

    if-nez v3, :cond_127

    if-nez v8, :cond_127

    const/4 v9, 0x1

    :goto_6e
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 335
    :cond_71
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_10e

    .line 337
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->menuTable:Lcom/pantech/app/music/list/component/MenuTable;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/component/MenuTable;->getSelectMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v9

    int-to-long v4, v9

    .line 339
    .local v4, "menu_mask":J
    const-wide/16 v10, 0x8

    and-long/2addr v10, v4

    const-wide/16 v12, 0x8

    cmp-long v9, v10, v12

    if-nez v9, :cond_12a

    .line 341
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteIcon:Landroid/widget/ImageView;

    const v10, 0x7f020167

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteTextView:Landroid/widget/TextView;

    const v10, 0x7f0800c7

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :cond_9b
    :goto_9b
    const-wide/16 v10, 0x1c

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_183

    .line 357
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-nez v9, :cond_b8

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-eqz v9, :cond_176

    .line 359
    :cond_b8
    const/4 v2, 0x0

    .line 360
    .local v2, "isCanNotDeleteItemSelected":Z
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, -0x4

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 361
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, -0x5

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 362
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, -0x6

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 363
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v10}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, -0x3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 365
    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-nez v7, :cond_174

    if-nez v2, :cond_174

    const/4 v9, 0x1

    :goto_10b
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 384
    .end local v2    # "isCanNotDeleteItemSelected":Z
    .end local v4    # "menu_mask":J
    :cond_10e
    :goto_10e
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    if-eqz v9, :cond_11a

    .line 385
    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mMenu:Landroid/widget/ImageView;

    if-nez v6, :cond_1bb

    const/4 v9, 0x1

    :goto_117
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 386
    :cond_11a
    return-void

    .line 321
    .end local v3    # "noChildContents":Z
    .end local v6    # "noMenuItems":Z
    .end local v7    # "noSelectedContents":Z
    :cond_11b
    const/4 v7, 0x0

    goto/16 :goto_1c

    .line 325
    .restart local v3    # "noChildContents":Z
    .restart local v7    # "noSelectedContents":Z
    :cond_11e
    const/4 v3, 0x0

    goto/16 :goto_2c

    .line 327
    :cond_121
    const/4 v6, 0x0

    goto/16 :goto_33

    .line 332
    .restart local v6    # "noMenuItems":Z
    :cond_124
    const/4 v9, 0x0

    goto/16 :goto_5e

    .line 334
    :cond_127
    const/4 v9, 0x0

    goto/16 :goto_6e

    .line 344
    .restart local v4    # "menu_mask":J
    :cond_12a
    const-wide/16 v10, 0x14

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_145

    .line 346
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteIcon:Landroid/widget/ImageView;

    const v10, 0x7f020164

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteTextView:Landroid/widget/TextView;

    const v10, 0x7f0800c3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9b

    .line 349
    :cond_145
    const-wide/16 v10, 0x200

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_9b

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-nez v9, :cond_162

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 351
    :cond_162
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteIcon:Landroid/widget/ImageView;

    const v10, 0x7f020165

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDeleteTextView:Landroid/widget/TextView;

    const v10, 0x7f0800c4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9b

    .line 365
    .restart local v2    # "isCanNotDeleteItemSelected":Z
    :cond_174
    const/4 v9, 0x0

    goto :goto_10b

    .line 369
    .end local v2    # "isCanNotDeleteItemSelected":Z
    :cond_176
    iget-object v10, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    if-nez v7, :cond_181

    if-nez v3, :cond_181

    const/4 v9, 0x1

    :goto_17d
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_10e

    :cond_181
    const/4 v9, 0x0

    goto :goto_17d

    .line 372
    :cond_183
    const-wide/16 v10, 0x200

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1b3

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-nez v9, :cond_1a0

    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v9

    if-eqz v9, :cond_1b3

    .line 374
    :cond_1a0
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1ab

    .line 375
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_10e

    .line 377
    :cond_1ab
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_10e

    .line 381
    :cond_1b3
    iget-object v9, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mDelete:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_10e

    .line 385
    .end local v4    # "menu_mask":J
    :cond_1bb
    const/4 v9, 0x0

    goto/16 :goto_117
.end method
