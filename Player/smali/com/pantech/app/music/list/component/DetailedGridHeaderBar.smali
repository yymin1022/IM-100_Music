.class public Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;
.super Ljava/lang/Object;
.source "DetailedGridHeaderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;
    }
.end annotation


# instance fields
.field mAlbumart:Landroid/graphics/Bitmap;

.field mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContext:Landroid/content/Context;

.field mGroupID:Ljava/lang/String;

.field mHeaderView:Landroid/view/ViewGroup;

.field mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

.field mListviewAlbumartWidth:I

.field mListviewCheckboxWidth:I

.field mListviewCheckedPadding:I

.field mMainIcon:Landroid/widget/ImageView;

.field mMainString:Ljava/lang/String;

.field mMainText:Landroid/widget/TextView;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSubString:Ljava/lang/String;

.field mSubText:Landroid/widget/TextView;

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p3, "childCategoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p4, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 54
    iput-object p4, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    .line 56
    iput-object p3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mViewInflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewAlbumartWidth:I

    .line 63
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckboxWidth:I

    .line 65
    iget v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewAlbumartWidth:I

    iget v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckboxWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckedPadding:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRID:HEADER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method inflateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 9
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    const v6, 0x7f1000f4

    const v5, 0x7f1000f2

    const/4 v4, 0x0

    .line 72
    sget-object v0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mViewInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030054

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    .line 86
    :goto_2c
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f1000f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainText:Landroid/widget/TextView;

    .line 88
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 90
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void

    .line 76
    :pswitch_56
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mViewInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030053

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    goto :goto_2c

    .line 93
    :cond_71
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 95
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    goto :goto_50

    .line 72
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    .line 246
    .local v1, "selectGroupID":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    .line 265
    :goto_f
    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, "isSelected":Z
    if-eqz v0, :cond_39

    .line 270
    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pantech/app/music/list/db/SelectManager;->unselectGroup(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->onSelectDone()V

    .line 275
    :goto_2c
    return-void

    .line 249
    .end local v0    # "isSelected":Z
    :pswitch_2d
    const-string v1, "-5"

    .line 250
    goto :goto_f

    .line 253
    :pswitch_30
    const-string v1, "-4"

    .line 254
    goto :goto_f

    .line 257
    :pswitch_33
    const-string v1, "-6"

    .line 258
    goto :goto_f

    .line 261
    :pswitch_36
    const-string v1, "-3"

    goto :goto_f

    .line 274
    .restart local v0    # "isSelected":Z
    :cond_39
    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p0}, Lcom/pantech/app/music/list/db/SelectManager;->selectGroup(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_2c

    .line 246
    nop

    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_30
        :pswitch_2d
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method public onSelectDone()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->updateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->invalidateFragment(Z)V

    .line 287
    return-void
.end method

.method setInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 5
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 124
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    :goto_14
    invoke-virtual {p1, v1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainString:Ljava/lang/String;

    .line 127
    :pswitch_1a
    return-void

    .line 124
    :cond_1b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    .line 105
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 5
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 205
    if-eqz p1, :cond_4

    .line 206
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 208
    :cond_4
    if-eqz p2, :cond_8

    .line 209
    iput-object p2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    .line 211
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRID:HEADER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->inflateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 223
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->setInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->updateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 234
    :goto_47
    return-void

    .line 232
    :cond_48
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->updateViews()V

    goto :goto_47
.end method

.method public updateViews()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->updateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public updateViews(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 9
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 201
    :cond_5
    :goto_5
    return-void

    .line 140
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mChildCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 142
    .local v0, "isSelected":Z
    if-eqz v0, :cond_79

    .line 144
    sget-object v1, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a4

    .line 152
    :goto_20
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_28
    :pswitch_28
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    if-eqz v1, :cond_3a

    .line 197
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GRID:HEADER:mMainString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GRID:HEADER:mSubString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mSubString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 148
    :pswitch_6b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckedPadding:I

    iget v3, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckedPadding:I

    iget v4, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckedPadding:I

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mListviewCheckedPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_20

    .line 156
    :cond_79
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 158
    sget-object v1, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ac

    goto :goto_28

    .line 162
    :pswitch_8a
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mAlbumart:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_28

    .line 166
    :pswitch_92
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 170
    :pswitch_9b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->mMainIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 144
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6b
    .end packed-switch

    .line 158
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8a
        :pswitch_92
        :pswitch_9b
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method
