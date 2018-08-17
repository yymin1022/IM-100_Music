.class public Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;
.super Ljava/lang/Object;
.source "AdapterBindHelper.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;
.implements Lcom/pantech/app/music/utils/LibraryUtils;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$2;,
        Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdapterBindHelper"


# instance fields
.field mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

.field mArtistCheckboxMarginRight:I

.field mCallback:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

.field mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

.field mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

.field mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

.field mListviewAlbumartHeight:I

.field mListviewAlbumartWidth:I

.field mListviewCheckboxHeight:I

.field mListviewCheckboxWidth:I

.field mListviewCheckedPadding:I

.field mMainPlayingColor:Landroid/content/res/ColorStateList;

.field mNormalMainColor:Landroid/content/res/ColorStateList;

.field mNormalSubColor:Landroid/content/res/ColorStateList;

.field mNowplayingTextLeftPadding:I

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mRecenlyUnitWeekSecs:J

.field mSearchBackgroundColor:I

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSubPlayingColor:Landroid/content/res/ColorStateList;

.field mSupportDragTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p4, "callback"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
    .param p5, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    .line 128
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    .line 130
    iput-object p5, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCursorLock:Ljava/lang/Object;

    .line 132
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCallback:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    .line 134
    iput-object p3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 136
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 138
    instance-of v0, p3, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_18

    .line 139
    check-cast p3, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .end local p3    # "iface":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    iput-object p3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 141
    :cond_18
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    .line 143
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 145
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mNowplayingTextLeftPadding:I

    .line 151
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mArtistCheckboxMarginRight:I

    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewAlbumartWidth:I

    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewAlbumartHeight:I

    .line 155
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewCheckboxWidth:I

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewCheckboxHeight:I

    .line 158
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewAlbumartWidth:I

    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewCheckboxWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mListviewCheckedPadding:I

    .line 160
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->initColorStateList()V

    .line 162
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isDragMultiSelect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    .line 164
    const-wide/32 v0, 0x127500

    iput-wide v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mRecenlyUnitWeekSecs:J

    .line 166
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;-><init>(Lcom/pantech/app/music/list/fragment/IFragmentCommon;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    .line 167
    return-void
.end method

.method private drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V
    .registers 19
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p3, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p4, "groupID"    # J
    .param p6, "isSelect"    # Z

    .prologue
    .line 876
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v0, :cond_35

    .line 878
    if-eqz p6, :cond_47

    .line 880
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {p2, v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 882
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIconChecked:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    :goto_23
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_35

    .line 907
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f10000b

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 965
    :cond_35
    :goto_35
    return-void

    .line 898
    :cond_36
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 899
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageResource(I)V

    goto :goto_23

    .line 911
    :cond_47
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f020394

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 917
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_66

    .line 919
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f10000b

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 920
    .local v9, "tag":Ljava/lang/Object;
    if-eqz v9, :cond_66

    .line 921
    check-cast v9, Ljava/lang/Long;

    .end local v9    # "tag":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 924
    :cond_66
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_35

    .line 926
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f10000b

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 928
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {p2, v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 930
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIconChecked:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    iget-object v10, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v5, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v6

    move-object v1, p1

    move-wide/from16 v2, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v10, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumarts(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)[Landroid/graphics/Bitmap;

    move-result-object v8

    .line 949
    .local v8, "bmp":[Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v1, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    invoke-static {v0, v1, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->drawMultiAlbumart(Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/graphics/Bitmap;)V

    goto :goto_35

    .line 951
    .end local v8    # "bmp":[Landroid/graphics/Bitmap;
    :cond_b6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {p2, v0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 953
    iget-object v10, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v5, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v6

    move-object v1, p1

    move-wide/from16 v2, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v10, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumarts(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)[Landroid/graphics/Bitmap;

    move-result-object v8

    .line 954
    .restart local v8    # "bmp":[Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v1, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    invoke-static {v0, v1, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->drawMultiAlbumart(Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/graphics/Bitmap;)V

    goto/16 :goto_35

    .line 958
    .end local v8    # "bmp":[Landroid/graphics/Bitmap;
    :cond_e8
    iget-object v10, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v6

    move-object v1, p1

    move-wide/from16 v2, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v10, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumart(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 959
    .local v8, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_35
.end method

.method private drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JIZ)V
    .registers 14
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p3, "groupID"    # J
    .param p5, "cursorPosition"    # I
    .param p6, "isSelect"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const v2, 0x7f10000b

    .line 1018
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v0, :cond_1b

    .line 1020
    if-eqz p6, :cond_1c

    .line 1022
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 1024
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageResource(I)V

    .line 1087
    :cond_1b
    :goto_1b
    :pswitch_1b
    :sswitch_1b
    return-void

    .line 1028
    :cond_1c
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f0201a8

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 1030
    sget-object v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    goto :goto_1b

    .line 1038
    :pswitch_30
    cmp-long v0, p3, v4

    if-nez v0, :cond_40

    .line 1040
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 1043
    :cond_40
    cmp-long v0, p3, v4

    if-eqz v0, :cond_4d

    .line 1044
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 1046
    :cond_4d
    long-to-int v0, p3

    sparse-switch v0, :sswitch_data_5e

    goto :goto_1b

    .line 1030
    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_30
        :pswitch_1b
        :pswitch_30
        :pswitch_30
    .end packed-switch

    .line 1046
    :sswitch_data_5e
    .sparse-switch
        -0x64 -> :sswitch_1b
        -0x6 -> :sswitch_1b
        -0x5 -> :sswitch_1b
        -0x4 -> :sswitch_1b
        -0x3 -> :sswitch_1b
    .end sparse-switch
.end method

.method private drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V
    .registers 15
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p3, "groupID"    # J
    .param p5, "isSelect"    # Z

    .prologue
    .line 1014
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JIZ)V

    .line 1015
    return-void
.end method

.method private drawCheckBoxOrUboxAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "isSelect"    # Z

    .prologue
    const v3, 0x7f10000d

    const v2, 0x7f10000c

    .line 969
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v0, :cond_2a

    .line 971
    if-eqz p5, :cond_2b

    .line 973
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 974
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageResource(I)V

    .line 980
    if-eqz p3, :cond_23

    .line 981
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v2, p3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 982
    :cond_23
    if-eqz p4, :cond_2a

    .line 983
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v3, p4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 1010
    :cond_2a
    :goto_2a
    return-void

    .line 987
    :cond_2b
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v1, 0x7f020394

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setBackgroundResource(I)V

    .line 993
    if-nez p3, :cond_3d

    .line 994
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "key":Ljava/lang/String;
    check-cast p3, Ljava/lang/String;

    .line 995
    .restart local p3    # "key":Ljava/lang/String;
    :cond_3d
    if-nez p4, :cond_47

    .line 996
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "url":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .line 998
    .restart local p4    # "url":Ljava/lang/String;
    :cond_47
    if-eqz p3, :cond_2a

    if-eqz p4, :cond_2a

    .line 1000
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v2, p3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 1001
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v3, p4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 1003
    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mAlbumartExtracter:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    iget-object v4, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->isCurrentFragment()Z

    move-result v5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V

    invoke-virtual {v8, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumartUbox(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1004
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v0, v7}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2a
.end method

.method public static toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 13
    .param p0, "selectManager"    # Lcom/pantech/app/music/list/db/SelectManager;
    .param p1, "ISelectable"    # Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    .param p2, "param"    # Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 1300
    const/4 v7, 0x0

    .line 1302
    .local v7, "mBackgroundSelect":Z
    iget-object v0, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v2, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)Z

    move-result v6

    .line 1304
    .local v6, "isSelected":Z
    if-eqz v6, :cond_1f

    .line 1306
    iget-object v0, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v2, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/pantech/app/music/list/db/SelectManager;->unselect(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)V

    .line 1307
    const/4 v6, 0x0

    .line 1323
    :goto_17
    if-eqz p1, :cond_1e

    if-nez v7, :cond_1e

    .line 1324
    invoke-interface {p1, v6, p2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 1325
    :cond_1e
    return-void

    .line 1311
    :cond_1f
    iget-object v1, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v3, p2, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 1312
    const/4 v6, 0x1

    .line 1313
    const/4 v7, 0x1

    goto :goto_17
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .param p4, "bindType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .param p5, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 371
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;Z)V

    .line 372
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;Z)V
    .registers 71
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .param p4, "bindType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .param p5, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p6, "isExpanded"    # Z

    .prologue
    .line 376
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v4

    if-nez v4, :cond_38

    .line 377
    const-string v4, "AdapterBindHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindView ViewType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " BindType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pageInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_38
    if-nez p1, :cond_3b

    .line 812
    :cond_3a
    :goto_3a
    return-void

    .line 382
    :cond_3b
    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 388
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    .line 389
    .local v5, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v12

    .line 391
    .local v12, "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    const v4, 0x7f100013

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .line 395
    .local v6, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 398
    :cond_6c
    if-eqz p6, :cond_129

    .line 399
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mExpand:Landroid/widget/ImageView;

    const v10, 0x7f02008b

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    :cond_76
    :goto_76
    const/4 v9, 0x0

    .line 405
    .local v9, "isSelected":Z
    const/16 v36, 0x0

    .line 406
    .local v36, "isAllSelected":Z
    const/16 v37, 0x0

    .line 407
    .local v37, "isPartialSelected":Z
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_e6

    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSupportSelectMode()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 413
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v10, 0x7f10000f

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 414
    .local v47, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v6, v1, v4}, Lcom/pantech/app/music/list/db/SelectCallbackParam;->set(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Landroid/database/Cursor;I)V

    .line 416
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_135

    .line 418
    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v10}, Lcom/pantech/app/music/list/db/SelectManager;->isGroupSomeSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Z

    move-result v37

    .line 421
    :cond_b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v10, v11}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)Z

    move-result v36

    .line 429
    if-nez v37, :cond_cf

    if-eqz v36, :cond_133

    :cond_cf
    const/4 v9, 0x1

    :goto_d0
    move-object/from16 v0, v47

    iput-boolean v9, v0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mIsChecked:Z

    .line 432
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    if-eqz v4, :cond_e6

    .line 434
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setClickable(Z)V

    .line 452
    .end local v47    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_e6
    :goto_e6
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArrangeNob:Landroid/widget/ImageView;

    if-eqz v4, :cond_f7

    .line 453
    iget-object v10, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArrangeNob:Landroid/widget/ImageView;

    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_149

    const/16 v4, 0x8

    :goto_f4
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    :cond_f7
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    if-eqz v4, :cond_102

    .line 460
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    move/from16 v0, v36

    invoke-interface {v4, v0}, Lcom/pantech/app/music/list/component/view/IMusicCheckable;->setChecked(Z)V

    .line 468
    :cond_102
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    if-eqz v4, :cond_111

    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_111

    .line 469
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v4, v9}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setCheckedWithoutCallback(Z)V

    .line 477
    :cond_111
    sget-object v4, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_8d4

    .line 808
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 401
    .end local v9    # "isSelected":Z
    .end local v36    # "isAllSelected":Z
    .end local v37    # "isPartialSelected":Z
    :cond_129
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mExpand:Landroid/widget/ImageView;

    const v10, 0x7f02008c

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_76

    .line 429
    .restart local v9    # "isSelected":Z
    .restart local v36    # "isAllSelected":Z
    .restart local v37    # "isPartialSelected":Z
    .restart local v47    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_133
    const/4 v9, 0x0

    goto :goto_d0

    .line 441
    :cond_135
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    if-eqz v4, :cond_e6

    .line 443
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setClickable(Z)V

    .line 444
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e6

    .line 453
    .end local v47    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_149
    const/4 v4, 0x0

    goto :goto_f4

    .line 481
    :pswitch_14b
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getSearchMode()I

    move-result v52

    .line 482
    .local v52, "searchMode":I
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v35

    .line 488
    .local v35, "extraValue":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 490
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v5, v4, :cond_245

    .line 492
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v60

    .line 493
    .local v60, "title":Ljava/lang/String;
    const-string v4, "Artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 494
    .local v31, "artist":Ljava/lang/String;
    const-string v4, "Album"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 497
    .local v30, "album":Ljava/lang/String;
    const-string v4, "fileID"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, "key":Ljava/lang/String;
    const-string v4, "AlbumUrl"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "url":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 500
    invoke-direct/range {v4 .. v9}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrUboxAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 511
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :goto_1a5
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v38

    .line 513
    .local v38, "mSearchKeywords":[Ljava/lang/String;
    const/16 v55, 0x0

    .line 514
    .local v55, "spanned_title":Landroid/text/Spanned;
    const/16 v54, 0x0

    .line 515
    .local v54, "spanned_artist":Landroid/text/Spanned;
    const/16 v53, 0x0

    .line 517
    .local v53, "spanned_album":Landroid/text/Spanned;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 518
    const-string v4, "AdapterBindHelper"

    const-string v10, "mSearchKeywords:"

    move-object/from16 v0, v38

    invoke-static {v4, v10, v0}, Lcom/pantech/app/music/utils/MLog;->list(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_1c1
    const/4 v4, 0x1

    move/from16 v0, v52

    if-eq v0, v4, :cond_1d1

    const/4 v4, 0x7

    move/from16 v0, v52

    if-eq v0, v4, :cond_1d1

    const/16 v4, 0x8

    move/from16 v0, v52

    if-ne v0, v4, :cond_280

    .line 524
    :cond_1d1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSearchBackgroundColor:I

    move-object/from16 v0, v60

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->setSpanSearchKeywords(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v55

    .line 526
    if-eqz v55, :cond_1e6

    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1e6
    :goto_1e6
    const/4 v4, 0x4

    move/from16 v0, v52

    if-eq v0, v4, :cond_1f6

    const/4 v4, 0x7

    move/from16 v0, v52

    if-eq v0, v4, :cond_1f6

    const/16 v4, 0x8

    move/from16 v0, v52

    if-ne v0, v4, :cond_289

    .line 537
    :cond_1f6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSearchBackgroundColor:I

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->setSpanSearchKeywords(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v54

    .line 539
    if-eqz v54, :cond_20b

    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_20b
    :goto_20b
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "_"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 548
    const/4 v4, 0x2

    move/from16 v0, v52

    if-eq v0, v4, :cond_222

    const/4 v4, 0x7

    move/from16 v0, v52

    if-eq v0, v4, :cond_222

    const/16 v4, 0x8

    move/from16 v0, v52

    if-ne v0, v4, :cond_292

    .line 552
    :cond_222
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSearchBackgroundColor:I

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->setSpanSearchKeywords(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v53

    .line 554
    if-eqz v53, :cond_237

    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 561
    :cond_237
    :goto_237
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 562
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_3a

    .line 504
    .end local v30    # "album":Ljava/lang/String;
    .end local v31    # "artist":Ljava/lang/String;
    .end local v38    # "mSearchKeywords":[Ljava/lang/String;
    .end local v53    # "spanned_album":Landroid/text/Spanned;
    .end local v54    # "spanned_artist":Landroid/text/Spanned;
    .end local v55    # "spanned_title":Landroid/text/Spanned;
    .end local v60    # "title":Ljava/lang/String;
    :cond_245
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v60

    .line 505
    .restart local v60    # "title":Ljava/lang/String;
    const-string v4, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 506
    .restart local v31    # "artist":Ljava/lang/String;
    const-string v4, "album"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 508
    .restart local v30    # "album":Ljava/lang/String;
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v13, v6

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_1a5

    .line 530
    .restart local v38    # "mSearchKeywords":[Ljava/lang/String;
    .restart local v53    # "spanned_album":Landroid/text/Spanned;
    .restart local v54    # "spanned_artist":Landroid/text/Spanned;
    .restart local v55    # "spanned_title":Landroid/text/Spanned;
    :cond_280
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e6

    .line 543
    :cond_289
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_20b

    .line 558
    :cond_292
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_237

    .line 566
    .end local v30    # "album":Ljava/lang/String;
    .end local v31    # "artist":Ljava/lang/String;
    .end local v35    # "extraValue":Ljava/lang/String;
    .end local v38    # "mSearchKeywords":[Ljava/lang/String;
    .end local v52    # "searchMode":I
    .end local v53    # "spanned_album":Landroid/text/Spanned;
    .end local v54    # "spanned_artist":Landroid/text/Spanned;
    .end local v55    # "spanned_title":Landroid/text/Spanned;
    .end local v60    # "title":Ljava/lang/String;
    :pswitch_29a
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setNowplayingReLayout(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)Z

    move-result v39

    .line 568
    .local v39, "needToDrawAlbumart":Z
    const-string v4, "contentsType"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 570
    .local v32, "cntsType":I
    const/4 v4, 0x3

    move/from16 v0, v32

    if-ne v0, v4, :cond_301

    .line 572
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 573
    .restart local v7    # "key":Ljava/lang/String;
    const-string v4, "albumartUrl"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 575
    .restart local v8    # "url":Ljava/lang/String;
    if-eqz v39, :cond_2e1

    .line 576
    sget-object v14, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v13, p0

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v13 .. v18}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrUboxAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2e1
    :goto_2e1
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 580
    :cond_301
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 582
    .local v14, "albumID":J
    if-eqz v39, :cond_2e1

    .line 583
    sget-object v11, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v10, p0

    move-object v13, v6

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto :goto_2e1

    .line 591
    .end local v14    # "albumID":J
    .end local v32    # "cntsType":I
    .end local v39    # "needToDrawAlbumart":Z
    :pswitch_31c
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 593
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const-string v4, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 596
    .local v56, "szArtist":Ljava/lang/String;
    const-string v4, "duration"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 597
    .local v42, "nDuration":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x3e8

    div-long v10, v42, v10

    invoke-static {v4, v10, v11}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v57

    .line 599
    .local v57, "szDuration":Ljava/lang/String;
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v57

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v6

    move/from16 v22, v9

    invoke-direct/range {v16 .. v22}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 605
    .end local v42    # "nDuration":J
    .end local v56    # "szArtist":Ljava/lang/String;
    .end local v57    # "szDuration":Ljava/lang/String;
    :pswitch_397
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v40

    .line 606
    .local v40, "mediaID":J
    const-wide/16 v10, -0x4

    cmp-long v4, v40, v10

    if-nez v4, :cond_3b0

    .line 608
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 613
    :cond_3b0
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v6, v1, v2}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 614
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v6

    move/from16 v22, v9

    invoke-direct/range {v16 .. v22}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 634
    .end local v40    # "mediaID":J
    :pswitch_3f2
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 636
    .local v20, "album_id":J
    const-string v4, "numsongs"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 637
    .local v46, "numberOfSongs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0d0004

    move/from16 v0, v46

    invoke-virtual {v4, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v51

    .line 638
    .local v51, "sNumberOfSongs":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    move-object/from16 v0, v51

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 640
    if-nez v51, :cond_42c

    .line 641
    const-string v51, ""

    .line 643
    :cond_42c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 648
    .local v59, "text":Ljava/lang/String;
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v10, "album"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v6

    move/from16 v22, v9

    .line 651
    invoke-direct/range {v16 .. v22}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 655
    .end local v20    # "album_id":J
    .end local v46    # "numberOfSongs":I
    .end local v51    # "sNumberOfSongs":Ljava/lang/String;
    .end local v59    # "text":Ljava/lang/String;
    :pswitch_47c
    const-string v4, "AdapterBindHelper"

    const-string v10, "bindView:CATEGORY_ALBUM_SONG"

    invoke-static {v4, v10}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 658
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 665
    :pswitch_4c9
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    .line 666
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const-string v4, "number_of_albums"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 669
    .local v44, "numOfAlbum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0d0002

    move/from16 v0, v44

    invoke-virtual {v4, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v49

    .line 670
    .local v49, "sNumberOfAlbums":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 672
    const-string v4, "number_of_tracks"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 673
    .local v45, "numberOfArtistSongs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0d0003

    move/from16 v0, v45

    invoke-virtual {v4, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v50

    .line 674
    .local v50, "sNumberOfArtistSongs":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    move-object/from16 v0, v50

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    .line 676
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 680
    .end local v44    # "numOfAlbum":I
    .end local v45    # "numberOfArtistSongs":I
    .end local v49    # "sNumberOfAlbums":Ljava/lang/String;
    .end local v50    # "sNumberOfArtistSongs":Ljava/lang/String;
    :pswitch_57a
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 681
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 688
    :pswitch_5c0
    const-wide/16 v26, -0x1

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v29, v9

    invoke-direct/range {v23 .. v29}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JIZ)V

    .line 690
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v10, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 694
    :pswitch_5e6
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 695
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 704
    :pswitch_62c
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    invoke-static {v5}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 708
    .local v48, "playlistID":I
    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v23 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 712
    .end local v48    # "playlistID":I
    :pswitch_663
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 714
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "play_count"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    const v13, 0x7f0801ac

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 723
    :pswitch_6e3
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 724
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 731
    :pswitch_729
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 733
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 740
    :pswitch_76f
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v10, "bucket_display_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    const-wide/16 v26, -0x1

    :try_start_784
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v29, v9

    invoke-direct/range {v23 .. v29}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrIcon(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JIZ)V

    .line 746
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v4, :cond_3a

    .line 748
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v10, "_data"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->computeDisplayFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 751
    .local v58, "szFolderPath":Ljava/lang/String;
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_784 .. :try_end_7ba} :catch_7bc

    goto/16 :goto_3a

    .line 754
    .end local v58    # "szFolderPath":Ljava/lang/String;
    :catch_7bc
    move-exception v34

    .line 756
    .local v34, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3a

    .line 761
    .end local v34    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_7c6
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 762
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    const-string v4, "album_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move-object/from16 v25, v6

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;JZ)V

    goto/16 :goto_3a

    .line 770
    :pswitch_80c
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v62

    .line 771
    .local v62, "uboxID":J
    const-wide/16 v10, -0x66

    cmp-long v4, v62, v10

    if-nez v4, :cond_88b

    .line 773
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    const-string v10, "Title"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v4, :cond_3a

    .line 776
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3a

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v11, ""

    new-instance v13, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v13}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v4, v10, v11, v13}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v33

    .line 782
    .local v33, "count":I
    if-nez v33, :cond_860

    .line 784
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    const v11, 0x7f08008e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 788
    :cond_860
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    const v13, 0x7f080061

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 795
    .end local v33    # "count":I
    :cond_88b
    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-virtual {v0, v6, v1, v2}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V

    .line 797
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v4, v6, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const-string v10, "Artist"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    const-string v4, "fileID"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 801
    .restart local v7    # "key":Ljava/lang/String;
    const-string v4, "AlbumUrl"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "url":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 803
    invoke-direct/range {v4 .. v9}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->drawCheckBoxOrUboxAlbumart(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3a

    .line 477
    nop

    :pswitch_data_8d4
    .packed-switch 0x1
        :pswitch_29a
        :pswitch_729
        :pswitch_80c
        :pswitch_62c
        :pswitch_5c0
        :pswitch_62c
        :pswitch_62c
        :pswitch_4c9
        :pswitch_3f2
        :pswitch_76f
        :pswitch_397
        :pswitch_57a
        :pswitch_47c
        :pswitch_5e6
        :pswitch_7c6
        :pswitch_663
        :pswitch_6e3
        :pswitch_6e3
        :pswitch_6e3
        :pswitch_31c
        :pswitch_14b
        :pswitch_14b
        :pswitch_80c
    .end packed-switch
.end method

.method public initColorStateList()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSearchBackgroundColor:I

    .line 178
    return-void
.end method

.method public newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .param p3, "bindType"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .param p4, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 182
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v4

    if-nez v4, :cond_32

    .line 183
    const-string v4, "AdapterBindHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newView ViewType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BindType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pageInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_32
    if-nez p1, :cond_35

    .line 367
    :cond_34
    :goto_34
    return-void

    .line 188
    :cond_35
    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p2, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 190
    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {p3, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {p3, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 193
    :cond_4d
    const v4, 0x7f100122

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "album_play_view":Landroid/view/View;
    if-eqz v0, :cond_34

    .line 196
    new-instance v4, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;-><init>(Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_34

    .line 215
    .end local v0    # "album_play_view":Landroid/view/View;
    :cond_5f
    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    .line 216
    .local v1, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v2

    .line 218
    .local v2, "editMode":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    new-instance v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    invoke-direct {v3}, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;-><init>()V

    .line 223
    .local v3, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    const v4, 0x7f100013

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    instance-of v4, p1, Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    if-eqz v4, :cond_7b

    move-object v4, p1

    .line 231
    check-cast v4, Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

    .line 234
    :cond_7b
    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {p3, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {p3, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 237
    :cond_8b
    const v4, 0x7f10011e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mExpandLayer:Landroid/view/View;

    .line 238
    const v4, 0x7f10011f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mExpand:Landroid/widget/ImageView;

    .line 240
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mExpandLayer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_a5
    sget-object v4, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_27c

    .line 326
    const v4, 0x7f100120

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/AnimImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    .line 327
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 328
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 329
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    .line 337
    :cond_d8
    :goto_d8
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_107

    invoke-virtual {p4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSupportSelectMode()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 339
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v4, p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setFocusable(Z)V

    .line 341
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const v5, 0x7f10000f

    new-instance v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/SelectCallbackParam;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setTag(ILjava/lang/Object;)V

    .line 354
    iget-boolean v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    if-eqz v4, :cond_107

    .line 355
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v4, p0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V

    .line 361
    :cond_107
    iput-object p3, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mBindViewType:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 362
    iput-object v1, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 365
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V

    goto/16 :goto_34

    .line 250
    :pswitch_110
    const v4, 0x7f100006

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 251
    const v4, 0x7f020182

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    :pswitch_11c
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 256
    const v4, 0x7f100120

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/AnimImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    .line 257
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 258
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f10011d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    .line 260
    const v4, 0x7f100115

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArrangeNob:Landroid/widget/ImageView;

    .line 261
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setConvertView(Landroid/view/View;)V

    goto/16 :goto_d8

    .line 265
    :pswitch_163
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 266
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    .line 269
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v4, :cond_d8

    .line 270
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d8

    .line 277
    :pswitch_191
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 278
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    goto/16 :goto_d8

    .line 282
    :pswitch_1a9
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 283
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    .line 285
    const v4, 0x7f10010b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMultiAlbumarts:Landroid/widget/ImageView;

    .line 286
    const v4, 0x7f10010a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIcon:Landroid/view/View;

    .line 287
    const v4, 0x7f10010c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIconChecked:Landroid/widget/ImageView;

    .line 288
    const v4, 0x7f100109

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mArtistMainIconLayer:Landroid/widget/FrameLayout;

    goto/16 :goto_d8

    .line 292
    :pswitch_1f6
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 293
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 294
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    goto/16 :goto_d8

    .line 298
    :pswitch_219
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 299
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 300
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    goto/16 :goto_d8

    .line 304
    :pswitch_23c
    const v4, 0x7f100106

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNewAddedIcon:Landroid/widget/ImageView;

    .line 318
    :pswitch_247
    const v4, 0x7f1000f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 319
    const v4, 0x7f100120

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/AnimImageView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    .line 320
    iget-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 321
    const v4, 0x7f1000f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    .line 322
    const v4, 0x7f1000f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    goto/16 :goto_d8

    .line 243
    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_110
        :pswitch_11c
        :pswitch_11c
        :pswitch_163
        :pswitch_191
        :pswitch_191
        :pswitch_191
        :pswitch_1a9
        :pswitch_1f6
        :pswitch_219
        :pswitch_23c
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
    .end packed-switch
.end method

.method public onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V
    .registers 9
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    const v5, 0x7f10000b

    .line 820
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    if-eqz v4, :cond_3b

    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    instance-of v4, v4, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_3b

    .line 822
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    check-cast v0, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 824
    .local v0, "checkarableAlbumartView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_82

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isChecked()Z

    move-result v4

    if-nez v4, :cond_82

    .line 826
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 828
    const v4, 0x7f10000c

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_3c

    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 832
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 872
    .end local v0    # "checkarableAlbumartView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 836
    .restart local v0    # "checkarableAlbumartView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3c
    const-string v4, "AdapterBindHelper"

    const-string v5, "Imageview has new albumID. we will do not any action."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 841
    .end local v1    # "key":Ljava/lang/String;
    :cond_44
    invoke-virtual {v0, v5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 843
    invoke-virtual {v0, v5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 845
    .local v2, "currentAlbumID":J
    iget-wide v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_72

    .line 847
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 849
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetMulitAlbumView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v0, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->drawMultiAlbumart(Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/graphics/Bitmap;)V

    goto :goto_3b

    .line 853
    :cond_6c
    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3b

    .line 858
    :cond_72
    const-string v4, "AdapterBindHelper"

    const-string v5, "Imageview has new albumID. we will do not any action."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 863
    .end local v2    # "currentAlbumID":J
    :cond_7a
    const-string v4, "AdapterBindHelper"

    const-string v5, "Imageview has no tag."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 869
    :cond_82
    const-string v4, "AdapterBindHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Imageview is Checked or null bitmap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V
    .registers 8
    .param p1, "checkableView"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1361
    const-string v2, "AdapterBindHelper"

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

    .line 1363
    check-cast v1, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 1365
    .local v1, "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1367
    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 1369
    .local v0, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCursorLock:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4, p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 1378
    .end local v0    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1335
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    .line 1339
    .local v0, "pageInfo":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1341
    iget-boolean v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSupportDragTouch:Z

    if-nez v2, :cond_22

    .line 1343
    const v2, 0x7f10000f

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 1345
    .local v1, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mCursorLock:Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4, p0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 1352
    .end local v1    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_22
    :goto_22
    return-void

    .line 1350
    :cond_23
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->startActionMode(Landroid/view/View;Z)V

    goto :goto_22
.end method

.method public onSelectDone()V
    .registers 4

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_b

    .line 1295
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 1296
    :cond_b
    return-void
.end method

.method public setNowplayingReLayout(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)Z
    .registers 14
    .param p1, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p2, "mediaID"    # J

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v3, 0x0

    .line 1167
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    .line 1168
    .local v0, "IService":Lcom/pantech/app/music/service/IMusicPlaybackService;
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getFragmentHandler()Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    move-result-object v2

    .line 1170
    .local v2, "h":Landroid/os/Handler;
    if-nez v0, :cond_2d

    .line 1176
    if-eqz v2, :cond_1e

    .line 1178
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1179
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1270
    :cond_1d
    :goto_1d
    return v3

    .line 1183
    :cond_1e
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1184
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v4, v5, v6, v7}, Lcom/pantech/app/music/list/component/view/AnimImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 1192
    :cond_2d
    :try_start_2d
    invoke-interface {v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 1194
    :cond_41
    invoke-interface {v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_9b

    .line 1196
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v4, :cond_53

    .line 1198
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 1201
    :cond_53
    invoke-interface {v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1203
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const v5, 0x7f02013e

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setImageResource(I)V

    .line 1204
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStart()V

    .line 1211
    :goto_66
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorPlaying(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V

    .line 1227
    :cond_69
    :goto_69
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_8b

    .line 1229
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setVisibility(I)V

    .line 1231
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    iget-object v7, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    iget-object v8, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1237
    :cond_8b
    const/4 v3, 0x1

    goto :goto_1d

    .line 1208
    :cond_8d
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const v5, 0x7f02013d

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setImageResource(I)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_95} :catch_96

    goto :goto_66

    .line 1265
    :catch_96
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 1213
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9b
    :try_start_9b
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1215
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v4, :cond_bf

    .line 1217
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_bf

    .line 1219
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 1220
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 1224
    :cond_bf
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V

    goto :goto_69

    .line 1241
    :cond_c3
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v4, :cond_db

    .line 1243
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_db

    .line 1245
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 1246
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 1250
    :cond_db
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V

    .line 1252
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v4, :cond_1d

    .line 1254
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setVisibility(I)V

    .line 1256
    iget-object v4, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mNowplayingTextLeftPadding:I

    iget-object v6, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    iget-object v7, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    iget-object v8, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mNowplayingTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_102} :catch_96

    goto/16 :goto_1d
.end method

.method public setPlayingIcon(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;J)V
    .registers 12
    .param p1, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p2, "mediaID"    # J

    .prologue
    const-wide/16 v6, 0x12c

    .line 1092
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    .line 1093
    .local v0, "IService":Lcom/pantech/app/music/service/IMusicPlaybackService;
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->getFragmentHandler()Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    move-result-object v2

    .line 1095
    .local v2, "h":Landroid/os/Handler;
    if-nez v0, :cond_30

    .line 1101
    if-eqz v2, :cond_1d

    .line 1103
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1157
    :cond_1c
    :goto_1c
    return-void

    .line 1108
    :cond_1d
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v3, :cond_1c

    .line 1110
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1111
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mInvalidateFragmentJob:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;

    invoke-virtual {v3, v4, v6, v7}, Lcom/pantech/app/music/list/component/view/AnimImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c

    .line 1120
    :cond_30
    :try_start_30
    invoke-interface {v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-nez v3, :cond_67

    .line 1122
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v3, :cond_55

    .line 1124
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 1126
    invoke-interface {v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1128
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const v4, 0x7f02013e

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setImageResource(I)V

    .line 1129
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStart()V

    .line 1137
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorPlaying(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_58} :catch_59

    goto :goto_1c

    .line 1153
    :catch_59
    move-exception v1

    .line 1155
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 1133
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    :try_start_5e
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setImageResource(I)V

    goto :goto_55

    .line 1141
    :cond_67
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    if-eqz v3, :cond_7f

    .line 1143
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/AnimImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7f

    .line 1145
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/AnimImageView;->animStop()V

    .line 1146
    iget-object v3, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/component/view/AnimImageView;->setVisibility(I)V

    .line 1150
    :cond_7f
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->setTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_82} :catch_59

    goto :goto_1c
.end method

.method public setTextColorNormal(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .prologue
    .line 1275
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1276
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mNormalMainColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1278
    :cond_b
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 1279
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mNormalSubColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1280
    :cond_16
    return-void
.end method

.method public setTextColorPlaying(Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .prologue
    .line 1284
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1285
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mMainPlayingColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1287
    :cond_b
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 1288
    iget-object v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mSubPlayingColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1289
    :cond_16
    return-void
.end method
