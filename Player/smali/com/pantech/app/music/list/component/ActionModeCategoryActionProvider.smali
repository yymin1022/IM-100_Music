.class public Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;
.super Landroid/view/ActionProvider;
.source "ActionModeCategoryActionProvider.java"


# instance fields
.field isCustomDB:Z

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mImgView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;->mImgView:Landroid/widget/ImageView;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;->isCustomDB:Z

    .line 25
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;->isCustomDB:Z

    .line 26
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 7
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    const/4 v4, 0x0

    .line 45
    const-string v2, "onPrepareSubMenu"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "index":I
    const v2, 0x7f100200

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const v3, 0x7f080083

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 50
    const v2, 0x7f100201

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const v3, 0x7f080017

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 51
    const v2, 0x7f100202

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const v3, 0x7f080018

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 52
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/ActionModeCategoryActionProvider;->isCustomDB:Z

    if-eqz v2, :cond_3b

    const v2, 0x7f100203

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const v3, 0x7f0800b9

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 53
    :goto_3a
    return-void

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_3b
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_3a
.end method
