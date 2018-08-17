.class public Lcom/pantech/app/music/list/component/DetailedListHeaderBar;
.super Ljava/lang/Object;
.source "DetailedListHeaderBar.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/DetailedListHeaderBar$1;
    }
.end annotation


# static fields
.field static final ALBUMART_MAX_NUM:I = 0x4

.field static final mDebug:Z


# instance fields
.field mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

.field mAlbumart:[Landroid/widget/ImageView;

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContext:Landroid/content/Context;

.field mGroupID:Ljava/lang/String;

.field mIMiniplayer:Lcom/pantech/app/music/library/IListMiniPlayer;

.field final mLcdFactor:F

.field mMainHeader:Landroid/view/View;

.field mMainSubLayer1:Landroid/view/View;

.field mMainSubLayer2:Landroid/view/View;

.field mMainSubLayer3:Landroid/view/View;

.field mMainTextView:Landroid/widget/TextView;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mParentView:Landroid/view/ViewGroup;

.field mPlayAllBtn:Landroid/widget/Button;

.field mSubTextView:Landroid/widget/TextView;

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/library/IListMiniPlayer;Lcom/pantech/app/music/list/PageInfoType;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniplayer"    # Lcom/pantech/app/music/library/IListMiniPlayer;
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "groupID"    # Ljava/lang/String;
    .param p5, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    .line 67
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 70
    invoke-virtual {p3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 72
    iput-object p4, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mGroupID:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mIMiniplayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    .line 76
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mViewInflater:Landroid/view/LayoutInflater;

    .line 78
    iput-object p5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mParentView:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1000e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    :goto_4e
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer3:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v2, 0x7f1000e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v2, 0x7f1000ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v2, 0x7f1000ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 112
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v2, 0x7f1000ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 114
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mSubTextView:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 124
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mSubTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 126
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const v1, 0x7f1000f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    if-eqz v0, :cond_13e

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v0

    if-nez v0, :cond_13e

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 131
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->updatePlayBtn()V

    .line 133
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 134
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 137
    :goto_11a
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_11f
    :goto_11f
    return-void

    .line 99
    :cond_120
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mViewInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4e

    .line 136
    :cond_138
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_11a

    .line 139
    :cond_13e
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    if-eqz v0, :cond_11f

    .line 141
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_11f
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 316
    const-string v0, "SublistHeader:hide"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 319
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_10
    return-void
.end method

.method public isLandscape()Z
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V
    .registers 3
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 307
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->setAlbumartCount(I)V

    .line 310
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->setAlbumart([Landroid/graphics/Bitmap;)V

    .line 312
    :cond_f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 443
    if-eqz p1, :cond_44

    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v1

    if-nez v1, :cond_44

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 448
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/pantech/app/music/list/activity/IListActivity;

    if-eqz v1, :cond_45

    .line 450
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/pantech/app/music/list/activity/IListActivity;

    .line 451
    .local v0, "mIListActivity":Lcom/pantech/app/music/list/activity/IListActivity;
    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 460
    .end local v0    # "mIListActivity":Lcom/pantech/app/music/list/activity/IListActivity;
    :cond_44
    :goto_44
    return-void

    .line 456
    :cond_45
    const-string v1, "Instance is Not IListActivity"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_44
.end method

.method public setActionModeCommand(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V
    .registers 2
    .param p1, "control"    # Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    .line 153
    return-void
.end method

.method public setAlbumart([Landroid/graphics/Bitmap;)V
    .registers 13
    .param p1, "bitmap"    # [Landroid/graphics/Bitmap;

    .prologue
    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v5, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->isLandscape()Z

    move-result v3

    if-nez v3, :cond_d9

    .line 231
    array-length v3, p1

    packed-switch v3, :pswitch_data_1de

    .line 299
    :goto_11
    return-void

    .line 234
    :pswitch_12
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    const/high16 v5, 0x43b40000    # 360.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 238
    :pswitch_28
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 243
    :pswitch_4f
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v10

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v10

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 249
    :pswitch_89
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v10

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v10

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-object v4, p1, v4

    iget v5, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v6, v10

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 258
    :cond_d9
    const/high16 v3, 0x438f0000    # 286.0f

    iget v4, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 259
    .local v1, "height":I
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 260
    .local v2, "miniPlayerHeight":I
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    .local v0, "actionModeCommandHeight":I
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    if-eqz v3, :cond_104

    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mActionModeCommand:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    iget-boolean v3, v3, Lcom/pantech/app/music/list/component/ActionModeCommandBar;->mIsShowing:Z

    if-eqz v3, :cond_104

    .line 269
    sub-int/2addr v1, v0

    .line 274
    :cond_104
    array-length v3, p1

    packed-switch v3, :pswitch_data_1ea

    goto/16 :goto_11

    .line 277
    :pswitch_10a
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    const/high16 v5, 0x43850000    # 266.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 281
    :pswitch_11f
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 286
    :pswitch_147
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    const/high16 v5, 0x431e0000    # 158.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    int-to-float v6, v1

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    const/high16 v5, 0x42d80000    # 108.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    const/high16 v5, 0x42d80000    # 108.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 292
    :pswitch_186
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    aget-object v4, p1, v5

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    aget-object v4, p1, v8

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    aget-object v4, p1, v9

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    iget-object v3, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/high16 v5, 0x43050000    # 133.0f

    iget v6, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mLcdFactor:F

    mul-float/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/pantech/app/music/utils/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_11

    .line 231
    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_12
        :pswitch_28
        :pswitch_4f
        :pswitch_89
    .end packed-switch

    .line 274
    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_11f
        :pswitch_147
        :pswitch_186
    .end packed-switch
.end method

.method public setAlbumartCount(I)V
    .registers 8
    .param p1, "nSize"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 164
    packed-switch p1, :pswitch_data_c0

    .line 188
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_2e
    return-void

    .line 167
    :pswitch_2f
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e

    .line 172
    :pswitch_3c
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e

    .line 180
    :pswitch_5c
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mAlbumart:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e

    .line 198
    :cond_7c
    packed-switch p1, :pswitch_data_ca

    .line 219
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 201
    :pswitch_8f
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 207
    :pswitch_9f
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 213
    :pswitch_af
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainSubLayer3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2e

    .line 164
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3c
        :pswitch_5c
    .end packed-switch

    .line 198
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_9f
        :pswitch_af
    .end packed-switch
.end method

.method public show()V
    .registers 3

    .prologue
    .line 324
    const-string v0, "SublistHeader:show"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 327
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_f
    return-void
.end method

.method public update()V
    .registers 19

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSublistHeaderVisible()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 342
    const-string v3, "SublistHeader:update"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 346
    const/4 v14, -0x1

    .line 347
    .local v14, "nGroupID":I
    new-instance v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    int-to-long v4, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    .line 349
    .local v2, "param":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->updatePlayBtn()V

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 357
    .local v16, "size":I
    const/16 v17, 0x0

    .line 362
    .local v17, "tmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v3, v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    invoke-interface {v3, v2}, Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;->onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V

    .line 418
    .end local v17    # "tmp":Landroid/graphics/Bitmap;
    :cond_63
    :goto_63
    sget-object v3, Lcom/pantech/app/music/list/component/DetailedListHeaderBar$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_164

    .line 437
    .end local v2    # "param":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
    .end local v14    # "nGroupID":I
    .end local v16    # "size":I
    :cond_72
    :goto_72
    return-void

    .line 368
    .restart local v2    # "param":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
    .restart local v14    # "nGroupID":I
    :cond_73
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 370
    .local v11, "firstDefaultID":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mGroupID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 374
    .restart local v16    # "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    int-to-long v6, v14

    invoke-static {v3, v4, v6, v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getBestAlbumIDs(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;J)[Ljava/lang/Long;

    move-result-object v15

    .line 376
    .local v15, "nGroupIDs":[Ljava/lang/Long;
    if-eqz v15, :cond_63

    .line 378
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v12, "headerAlbumartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_ad
    array-length v3, v15

    if-ge v13, v3, :cond_ca

    .line 382
    const/16 v17, 0x0

    .line 384
    .restart local v17    # "tmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b9

    .line 386
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_b9
    if-nez v17, :cond_c7

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_c7

    .line 391
    aget-object v11, v15, v13

    .line 380
    :cond_c7
    add-int/lit8 v13, v13, 0x1

    goto :goto_ad

    .line 395
    .end local v17    # "tmp":Landroid/graphics/Bitmap;
    :cond_ca
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 399
    .local v10, "albumartCount":I
    if-nez v10, :cond_e0

    .line 401
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 414
    :cond_da
    iget-object v3, v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    invoke-interface {v3, v2}, Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;->onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V

    goto :goto_63

    .line 406
    :cond_e0
    new-array v3, v10, [Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 408
    const/4 v13, 0x0

    :goto_e5
    if-ge v13, v10, :cond_da

    .line 410
    iget-object v4, v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v4, v13

    .line 408
    add-int/lit8 v13, v13, 0x1

    goto :goto_e5

    .line 421
    .end local v10    # "albumartCount":I
    .end local v11    # "firstDefaultID":Ljava/lang/Long;
    .end local v12    # "headerAlbumartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v13    # "i":I
    .end local v15    # "nGroupIDs":[Ljava/lang/Long;
    :pswitch_f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mSubTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mSubTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumArtistName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 426
    :pswitch_124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getArtistName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 429
    :pswitch_139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getGenreName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 432
    :pswitch_14e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mMainTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getBucketName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 418
    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_124
        :pswitch_139
        :pswitch_14e
    .end packed-switch
.end method

.method public updatePlayBtn()V
    .registers 3

    .prologue
    .line 332
    const-string v0, "SublistHeader:updatePlayBtn"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 335
    iget-object v1, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPlayAllBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x8

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    :cond_28
    return-void

    .line 335
    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method
