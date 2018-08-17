.class public Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;
.super Ljava/lang/Object;
.source "AdapterGridBindHelper.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;
.implements Lcom/pantech/app/music/list/module/albumart/IAlbumartColorExtractCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper$1;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdapterGridBindHelper"


# instance fields
.field mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

.field mCallback:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mGridMainColor:Landroid/content/res/ColorStateList;

.field mGridParitalSelected:Landroid/content/res/ColorStateList;

.field mGridSubColor:Landroid/content/res/ColorStateList;

.field mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

.field mIParentAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSupportDragTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "parentAdapter"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .param p4, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p5, "callback"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
    .param p6, "cursorLock"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    .line 68
    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 88
    iput-boolean v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSupportDragTouch:Z

    .line 93
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 97
    iput-object p6, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCursorLock:Ljava/lang/Object;

    .line 99
    iput-object p3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIParentAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 101
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 103
    instance-of v0, p4, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_1d

    .line 104
    check-cast p4, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .end local p4    # "iface":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 106
    :cond_1d
    iput-object p5, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCallback:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    .line 108
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    .line 110
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 112
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->initColorStateList()V

    .line 114
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isDragMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3c
    iput-boolean v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSupportDragTouch:Z

    .line 115
    return-void
.end method

.method private drawAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V
    .registers 15
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "albumID"    # J
    .param p4, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .prologue
    .line 396
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 397
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mRootView:Landroid/view/View;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mRootView:Landroid/view/View;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v6

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v9, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumartInfo(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    move-result-object v8

    .line 404
    .local v8, "result":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v8, v1}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->setAlbumInfoWithExtractResult(Landroid/view/View;Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;Z)V

    .line 406
    .end local v8    # "result":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    :cond_2a
    return-void
.end method

.method private drawAlbumarts(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V
    .registers 15
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # J
    .param p4, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .prologue
    .line 410
    const-string v0, "AdapterGridBindHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawAlbumarts():groupID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v0, :cond_44

    .line 413
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 415
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v5, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v6

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v9, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumarts(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)[Landroid/graphics/Bitmap;

    move-result-object v8

    .line 417
    .local v8, "bmp":[Landroid/graphics/Bitmap;
    iget-object v0, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v1, p4, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    invoke-static {v0, v1, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->drawMultiAlbumart(Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/graphics/Bitmap;)V

    .line 419
    .end local v8    # "bmp":[Landroid/graphics/Bitmap;
    :cond_44
    return-void
.end method

.method private drawColorTextLayerBackground(Landroid/widget/LinearLayout;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "color"    # I

    .prologue
    .line 539
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 540
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 542
    return-void
.end method

.method private setAlbumInfoWithExtractResult(Landroid/view/View;Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;Z)V
    .registers 13
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "resultInfo"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    .param p3, "animation"    # Z

    .prologue
    .line 545
    const/4 v3, 0x0

    .line 546
    .local v3, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    const/4 v1, 0x0

    .line 548
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const v7, 0x7f10010f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 549
    .local v6, "textBG":Landroid/view/View;
    const v7, 0x7f1000f3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 550
    .local v4, "textAlbum":Landroid/widget/TextView;
    const v7, 0x7f1000f4

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 551
    .local v5, "textArtist":Landroid/widget/TextView;
    const v7, 0x7f1000f2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 553
    .local v2, "mainIcon":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    if-eqz p2, :cond_2e

    .line 554
    invoke-virtual {p2}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 555
    invoke-virtual {p2}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 558
    :cond_2e
    if-eqz v3, :cond_45

    .line 559
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 560
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    :cond_45
    if-eqz v1, :cond_50

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isChecked()Z

    move-result v7

    if-nez v7, :cond_50

    .line 564
    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    :cond_50
    if-eqz p3, :cond_5e

    .line 568
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f040011

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 569
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_5e
    return-void
.end method

.method private updateCheckView(Lcom/pantech/app/music/list/db/SelectCallbackParam;Z)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .param p2, "isSelected"    # Z

    .prologue
    .line 443
    iget-object v0, p1, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mGridViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    if-eqz v0, :cond_d

    .line 445
    iget-object v0, p1, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mGridViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    invoke-interface {v0, p2}, Lcom/pantech/app/music/list/component/view/IMusicCheckable;->setChecked(Z)V

    .line 458
    :cond_d
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .param p4, "adapterType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .param p5, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 208
    sget-object v13, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-object/from16 v0, p3

    if-ne v0, v13, :cond_b3

    .line 210
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    .line 211
    .local v4, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v5

    .line 213
    .local v5, "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    const v13, 0x7f100013

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .line 215
    .local v7, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    iput v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCursorPosition:I

    .line 217
    const-string v13, "AdapterGridBindHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bindView():category:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", editMode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", cursor pos:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v10, 0x0

    .line 220
    .local v10, "isSelected":Z
    const/4 v8, 0x0

    .line 221
    .local v8, "isAllSelected":Z
    const/4 v9, 0x0

    .line 227
    .local v9, "isPartialSelected":Z
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    const v14, 0x7f10000f

    invoke-virtual {v13, v14}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 228
    .local v11, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v11, v4, v7, v0, v13}, Lcom/pantech/app/music/list/db/SelectCallbackParam;->set(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;Landroid/database/Cursor;I)V

    .line 230
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v14, v11, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v15, v11, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v0, v11, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)Z

    move-result v8

    .line 234
    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v13

    if-eqz v13, :cond_96

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v13, v4, v0, v14}, Lcom/pantech/app/music/list/db/SelectManager;->isGroupSomeSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Z

    move-result v9

    .line 240
    :cond_96
    if-nez v8, :cond_9a

    if-eqz v9, :cond_b4

    :cond_9a
    const/4 v10, 0x1

    :goto_9b
    iput-boolean v10, v11, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mIsChecked:Z

    .line 243
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSupportDragTouch:Z

    if-eqz v13, :cond_a3

    .line 272
    :cond_a3
    :goto_a3
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    invoke-virtual {v13, v10}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setCheckedWithoutCallback(Z)V

    .line 274
    sget-object v13, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1b8

    .line 331
    .end local v4    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v5    # "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .end local v7    # "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    .end local v8    # "isAllSelected":Z
    .end local v9    # "isPartialSelected":Z
    .end local v10    # "isSelected":Z
    .end local v11    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_b3
    :goto_b3
    return-void

    .line 240
    .restart local v4    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .restart local v5    # "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .restart local v7    # "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    .restart local v8    # "isAllSelected":Z
    .restart local v9    # "isPartialSelected":Z
    .restart local v10    # "isSelected":Z
    .restart local v11    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_b4
    const/4 v10, 0x0

    goto :goto_9b

    .line 256
    :cond_b6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSupportDragTouch:Z

    if-eqz v13, :cond_a3

    goto :goto_a3

    .line 277
    :pswitch_bd
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 279
    .local v2, "album_id":I
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v14, "album"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v13, :cond_fd

    .line 281
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v14, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_fd
    int-to-long v14, v2

    iput-wide v14, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mGroupID:J

    .line 285
    int-to-long v14, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15, v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->drawAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V

    goto :goto_b3

    .line 289
    .end local v2    # "album_id":I
    :pswitch_107
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 290
    .local v3, "artistID":I
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v14, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    int-to-long v14, v3

    iput-wide v14, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mGroupID:J

    .line 293
    int-to-long v14, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15, v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->drawAlbumarts(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V

    goto :goto_b3

    .line 297
    .end local v3    # "artistID":I
    :pswitch_132
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 298
    .local v6, "genreID":I
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v14, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    int-to-long v14, v6

    iput-wide v14, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mGroupID:J

    .line 301
    int-to-long v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15, v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->drawAlbumarts(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V

    goto/16 :goto_b3

    .line 305
    .end local v6    # "genreID":I
    :pswitch_15e
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 307
    .local v12, "playlistID":I
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v14, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    int-to-long v14, v12

    iput-wide v14, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mGroupID:J

    .line 310
    iget-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v13, :cond_b3

    .line 319
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15, v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->drawAlbumarts(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V

    goto/16 :goto_b3

    .line 325
    .end local v12    # "playlistID":I
    :pswitch_18e
    const v13, 0x7f1000f2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pantech/app/music/view/OverlapImageView;

    iput-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 326
    const v13, 0x7f1000f3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 327
    const v13, 0x7f1000f4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v7, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    goto/16 :goto_b3

    .line 274
    nop

    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_107
        :pswitch_132
        :pswitch_15e
        :pswitch_18e
    .end packed-switch
.end method

.method public initColorStateList()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridMainColor:Landroid/content/res/ColorStateList;

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridSubColor:Landroid/content/res/ColorStateList;

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridParitalSelected:Landroid/content/res/ColorStateList;

    .line 122
    return-void
.end method

.method public newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .param p3, "adapterType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .param p4, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    const v10, 0x7f10010e

    const v9, 0x7f10010d

    const v8, 0x7f1000f3

    const v7, 0x7f1000f2

    const/4 v6, 0x0

    .line 126
    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-ne p2, v3, :cond_83

    .line 128
    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 129
    .local v0, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v1

    .line 131
    .local v1, "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    const-string v3, "AdapterGridBindHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newView():category:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", editMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    invoke-direct {v2}, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;-><init>()V

    .line 135
    .local v2, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    const v3, 0x7f100013

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    iput-object v0, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 143
    instance-of v3, p1, Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    if-eqz v3, :cond_51

    move-object v3, p1

    .line 145
    check-cast v3, Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    .line 148
    :cond_51
    sget-object v3, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_f0

    .line 180
    :goto_5c
    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    if-eqz v3, :cond_83

    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_83

    .line 182
    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    const v4, 0x7f10000f

    new-instance v5, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    invoke-direct {v5}, Lcom/pantech/app/music/list/db/SelectCallbackParam;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setTag(ILjava/lang/Object;)V

    .line 184
    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setFocusable(Z)V

    .line 196
    iget-boolean v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSupportDragTouch:Z

    if-eqz v3, :cond_83

    .line 198
    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    invoke-virtual {v3, p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V

    .line 204
    .end local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v1    # "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .end local v2    # "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    :cond_83
    return-void

    .line 151
    .restart local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .restart local v1    # "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .restart local v2    # "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    :pswitch_84
    iput-object p1, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mRootView:Landroid/view/View;

    .line 152
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 153
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 154
    const v3, 0x7f1000f4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    .line 155
    iget-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCheckButton:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 158
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    .line 160
    const v3, 0x7f10010f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mTextLayout:Landroid/widget/LinearLayout;

    goto :goto_5c

    .line 167
    :pswitch_c2
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 168
    const v3, 0x7f10010b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mCheckButton:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 172
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    iput-object v3, v2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    goto/16 :goto_5c

    .line 148
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_84
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch
.end method

.method public onAlbumartColorExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;I)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
    .param p2, "resultColor"    # I

    .prologue
    .line 335
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 337
    if-eqz p2, :cond_13

    .line 339
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->drawColorTextLayerBackground(Landroid/widget/LinearLayout;I)V

    .line 342
    :cond_13
    return-void
.end method

.method public onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V
    .registers 10
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 346
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 347
    .local v0, "currentAlbumID":J
    const-string v4, "AdapterGridBindHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAlbumartExtracted() AlbumID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GroupID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 350
    .local v3, "rootView":Landroid/view/View;
    iget-wide v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    .line 351
    invoke-virtual {p1}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->getResultInfo()Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    move-result-object v2

    .line 352
    .local v2, "result":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->setAlbumInfoWithExtractResult(Landroid/view/View;Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;Z)V

    .line 393
    .end local v2    # "result":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    :cond_40
    return-void
.end method

.method public onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V
    .registers 8
    .param p1, "checkableView"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable;
    .param p2, "isChecked"    # Z

    .prologue
    .line 518
    const-string v2, "AdapterGridBindHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 520
    check-cast v1, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    .line 522
    .local v1, "view":Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 524
    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 526
    .local v0, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCursorLock:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4, p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 528
    .end local v0    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f10000f

    .line 485
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v6

    .line 487
    .local v6, "pageInfo":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 503
    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 505
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 507
    .local v7, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mCursorLock:Ljava/lang/Object;

    invoke-static {v0, v2, v7, v3, p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 513
    :cond_24
    :goto_24
    return-void

    .line 489
    .end local v7    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_25
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 491
    .restart local v7    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    .line 492
    .local v1, "gridview":Landroid/widget/AbsListView;
    instance-of v0, v1, Landroid/widget/GridView;

    if-eqz v0, :cond_24

    .line 500
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    check-cast v0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIParentAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget v3, v7, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    invoke-interface {v2, v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewPosition(I)I

    move-result v3

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_24

    .line 511
    .end local v1    # "gridview":Landroid/widget/AbsListView;
    .end local v7    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "\uc5ec\uae30\uc5d0 \uc65c \ub4e4\uc5b4\uc624\uc9c0 ? "

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 468
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->startActionMode(Landroid/view/View;Z)V

    .line 471
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectDone()V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_b

    .line 534
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 535
    :cond_b
    return-void
.end method

.method public setGridTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V
    .registers 4
    .param p1, "vh"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .prologue
    .line 423
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 424
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridMainColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 426
    :cond_b
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 427
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridSubColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 428
    :cond_16
    return-void
.end method

.method public setGridTextColorPartialSelected(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;)V
    .registers 4
    .param p1, "vh"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .prologue
    .line 434
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 435
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridParitalSelected:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 437
    :cond_b
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 438
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->mGridParitalSelected:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 439
    :cond_16
    return-void
.end method
