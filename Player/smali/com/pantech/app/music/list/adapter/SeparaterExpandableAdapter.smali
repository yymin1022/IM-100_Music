.class public Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "SeparaterExpandableAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;
.implements Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;


# static fields
.field public static final OPTION_SEPERATOR_CHILD_ARTIST_ALBUM:I = 0x2

.field public static final OPTION_SEPERATOR_INDEX:I = 0x1

.field static final TAG:Ljava/lang/String; = "VMusicAdapterTag"


# instance fields
.field groupCursorPosition:I

.field mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field mArtistAlbumSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

.field mBindGetChildFailCount:I

.field mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mChildViewLayoutID:I

.field mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mFactory:Lcom/pantech/app/music/list/module/QueryFactory;

.field mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mGroupViewLayoutID:I

.field mIFragmentCommon:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

.field mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

.field mLeftPadding:I

.field mListview:Landroid/widget/ExpandableListView;

.field private mSeperatorOption:I

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ExpandableListView;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/PageInfoType;IIILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/ExpandableListView;
    .param p3, "groupPageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "childPageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p5, "groupLayoutID"    # I
    .param p6, "childLayoutID"    # I
    .param p7, "option"    # I
    .param p8, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p9, "callback"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
    .param p10, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupViewLayoutID:I

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildViewLayoutID:I

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mLeftPadding:I

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mBindGetChildFailCount:I

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 750
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->groupCursorPosition:I

    .line 88
    invoke-static {p1}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 90
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mListview:Landroid/widget/ExpandableListView;

    .line 94
    iput-object p3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 100
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 102
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 104
    iput-object p8, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIFragmentCommon:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 106
    new-instance v1, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 108
    new-instance v1, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 110
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    .line 112
    iput p5, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupViewLayoutID:I

    .line 114
    iput p6, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildViewLayoutID:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mLeftPadding:I

    .line 118
    iput p7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    .line 123
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p4, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 125
    iget v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    .line 128
    :cond_7d
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 129
    new-instance v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    move-object/from16 v0, p10

    invoke-direct {v1, p1, p0, v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    .line 131
    :cond_8c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 132
    new-instance v1, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    move-object/from16 v0, p10

    invoke-direct {v1, p1, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mArtistAlbumSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    .line 133
    :cond_9b
    return-void
.end method

.method private newChildView(II)Landroid/view/View;
    .registers 14
    .param p1, "viewType"    # I
    .param p2, "groupPosition"    # I

    .prologue
    const/4 v9, 0x0

    .line 596
    const/4 v4, 0x0

    .line 598
    .local v4, "view":Landroid/view/View;
    if-nez p1, :cond_35

    .line 600
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildViewLayoutID:I

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    .line 602
    check-cast v6, Landroid/view/ViewGroup;

    .line 603
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 604
    .local v2, "paddingRight":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 605
    .local v3, "paddingTop":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 608
    .local v1, "paddingBottom":I
    const v7, 0x7f020184

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 610
    iget v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mLeftPadding:I

    invoke-virtual {v6, v7, v3, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 612
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v8, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    move-object v5, v4

    .line 640
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    .local v5, "view":Landroid/view/View;
    :goto_34
    return-object v5

    .line 620
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    :cond_35
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 622
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030076

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 624
    const v7, 0x7f100122

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 626
    .local v0, "album_play_view":Landroid/view/View;
    if-eqz v0, :cond_5e

    .line 628
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 630
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_5a
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 636
    :cond_5e
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v8, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .end local v0    # "album_play_view":Landroid/view/View;
    :cond_6b
    move-object v5, v4

    .line 640
    .end local v4    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_34
.end method

.method private newGroupview(I)Landroid/view/View;
    .registers 7
    .param p1, "iViewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_40

    .line 412
    :goto_5
    return-object v0

    .line 392
    :pswitch_6
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030074

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 401
    :cond_1b
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 405
    :pswitch_29
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupViewLayoutID:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 389
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_29
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 816
    :cond_c
    const/4 v0, 0x0

    .line 818
    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_d
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 587
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 475
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    if-nez p1, :cond_14

    :try_start_5
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    if-eqz v0, :cond_14

    .line 495
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 497
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 899
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->clearAll()V

    .line 1046
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mArtistAlbumSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->clearAll()V

    .line 1047
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 1000
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, p1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 1005
    .local v2, "packedPosition":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 1007
    .local v4, "type":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 1008
    .local v1, "groupPosition":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 1010
    .local v0, "childPosition":I
    if-nez v4, :cond_19

    .line 1012
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v5

    .line 1016
    :goto_18
    return-object v5

    :cond_19
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_18
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 973
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cmGetItemPosition : We can\'t support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 966
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cmGetViewPosition : We can\'t support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 922
    if-ltz p1, :cond_28

    .line 924
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, p1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 929
    .local v2, "packedPosition":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 931
    .local v4, "type":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 932
    .local v1, "groupPosition":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 934
    .local v0, "childPosition":I
    if-nez v4, :cond_1f

    .line 936
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupType(I)I

    move-result v5

    invoke-static {v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v5

    .line 940
    :goto_1e
    return-object v5

    :cond_1f
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildType(II)I

    move-result v5

    invoke-static {v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v5

    goto :goto_1e

    .line 945
    .end local v0    # "childPosition":I
    .end local v1    # "groupPosition":I
    .end local v2    # "packedPosition":J
    .end local v4    # "type":I
    :cond_28
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->notifyDataSetChanged()V

    .line 994
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->clearPosition()V

    .line 1025
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 913
    return-void
.end method

.method public getChild(II)Landroid/database/Cursor;
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .registers 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 381
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    goto :goto_8
.end method

.method public getChildId(II)J
    .registers 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 832
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 834
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 836
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 838
    const-string v2, "fileID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 840
    .local v0, "columnIndex":I
    if-eqz v1, :cond_34

    if-ltz v0, :cond_34

    .line 842
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v4

    .line 856
    :goto_20
    return-wide v2

    .line 847
    .end local v0    # "columnIndex":I
    :cond_21
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 849
    .restart local v0    # "columnIndex":I
    if-eqz v1, :cond_34

    if-ltz v0, :cond_34

    .line 851
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_20

    .line 854
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_31
    move-exception v2

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v2

    .restart local v0    # "columnIndex":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_34
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 856
    invoke-super {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChildId(II)J

    move-result-wide v2

    goto :goto_20
.end method

.method public getChildListID(I)Ljava/lang/String;
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 591
    const-string v0, ""

    return-object v0
.end method

.method public getChildPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public getChildType(II)I
    .registers 7
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 867
    .local v0, "childCursor":Landroid/database/Cursor;
    const-string v3, "seperator_type"

    invoke-static {v0, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 869
    .local v1, "seperatorType":I
    const/16 v3, -0x64

    if-ne v1, v3, :cond_16

    .line 870
    const/4 v2, 0x1

    .line 876
    .end local v0    # "childCursor":Landroid/database/Cursor;
    .end local v1    # "seperatorType":I
    :cond_16
    return v2
.end method

.method public getChildTypeCount()I
    .registers 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 886
    const/4 v0, 0x2

    .line 890
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 648
    invoke-virtual/range {p0 .. p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildType(II)I

    move-result v14

    .line 650
    .local v14, "childViewType":I
    const/4 v3, 0x0

    .line 652
    .local v3, "view":Landroid/view/View;
    if-nez p4, :cond_a0

    .line 654
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->newChildView(II)Landroid/view/View;

    move-result-object v3

    .line 661
    :goto_f
    const v2, 0x7f100012

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 662
    const v2, 0x7f10000e

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    invoke-virtual/range {p0 .. p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v4

    .line 669
    .local v4, "childCursor":Landroid/database/Cursor;
    if-nez v4, :cond_a4

    .line 671
    const-string v2, "==========================================================="

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ERROR]_this should only be called when the cursor is valid mBindGetChildFailCount:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mBindGetChildFailCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ERROR]_groupPosition:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " childPosition:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 674
    const-string v2, "[ERROR]_this should only be called when the cursor is valid"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 675
    const-string v2, "==========================================================="

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 677
    new-instance v16, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 680
    .local v16, "h":Landroid/os/Handler;
    move/from16 v15, p1

    .line 681
    .local v15, "errorGroupPosition":I
    move-object/from16 v18, p5

    .line 682
    .local v18, "parentView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1, v15}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;-><init>(Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;Landroid/view/ViewGroup;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mBindGetChildFailCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mBindGetChildFailCount:I

    .line 740
    .end local v15    # "errorGroupPosition":I
    .end local v16    # "h":Landroid/os/Handler;
    .end local v18    # "parentView":Landroid/view/ViewGroup;
    :cond_9f
    :goto_9f
    return-object v3

    .line 658
    .end local v4    # "childCursor":Landroid/database/Cursor;
    :cond_a0
    move-object/from16 v3, p4

    goto/16 :goto_f

    .line 701
    .restart local v4    # "childCursor":Landroid/database/Cursor;
    :cond_a4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mBindGetChildFailCount:I

    .line 704
    packed-switch v14, :pswitch_data_14c

    goto :goto_9f

    .line 708
    :pswitch_ad
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 710
    :try_start_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v5, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 711
    monitor-exit v8

    goto :goto_9f

    :catchall_c5
    move-exception v2

    monitor-exit v8
    :try_end_c7
    .catchall {:try_start_b2 .. :try_end_c7} :catchall_c5

    throw v2

    .line 717
    :pswitch_c8
    const v2, 0x7f100121

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 718
    .local v19, "text":Landroid/widget/TextView;
    const v2, 0x7f100122

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 720
    .local v13, "button":Landroid/widget/Button;
    if-eqz v19, :cond_9f

    if-eqz v13, :cond_9f

    .line 722
    const-string v2, "album"

    invoke-static {v4, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 723
    .local v17, "headerString":Ljava/lang/String;
    const-string v2, "album_id"

    invoke-static {v4, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 724
    .local v11, "albumID":I
    const-string v2, "artist_id"

    invoke-static {v4, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 726
    .local v12, "artistID":I
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f014a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    const v2, 0x7f100010

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 731
    const v2, 0x7f100011

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {p0 .. p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildListID(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v10

    .line 734
    .local v10, "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderChildHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    const/4 v7, 0x0

    sget-object v8, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v9

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto/16 :goto_9f

    .line 704
    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_c8
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 8
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 757
    .local v1, "groupID":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->groupCursorPosition:I

    .line 759
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 761
    const-string v2, "VMusicAdapterTag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildrenCursor groupID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupCursor position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    .line 765
    .local v0, "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getQueryWhereCondition()Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getQueryLimit()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public getCursorPosition(I)I
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemPosition(I)I

    move-result p1

    .line 179
    .end local p1    # "viewPosition":I
    :cond_c
    return p1
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .registers 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 371
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 373
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    goto :goto_8
.end method

.method public getGroupCount()I
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 209
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v0

    .line 211
    .local v0, "iRet":I
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    .end local v0    # "iRet":I
    :goto_11
    return v0

    :cond_12
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v0

    goto :goto_11
.end method

.method public getGroupId(I)J
    .registers 9
    .param p1, "groupPosition"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 243
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v3, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->isSeparatorPos(I)I

    move-result v2

    .line 246
    .local v2, "seperatorPos":I
    if-ltz v2, :cond_12

    .line 248
    mul-int/lit8 v3, v2, -0x1

    int-to-long v4, v3

    .line 295
    .end local v2    # "seperatorPos":I
    :goto_11
    return-wide v4

    .line 252
    :cond_12
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 254
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 256
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 258
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v3, "bucket_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "columnIndex":I
    if-eqz v1, :cond_36

    if-ltz v0, :cond_36

    .line 262
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    monitor-exit v6

    goto :goto_11

    .line 264
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_33
    move-exception v3

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw v3

    .restart local v0    # "columnIndex":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_36
    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 295
    :goto_37
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_11

    .line 266
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3c
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 268
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 270
    :try_start_49
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 272
    .restart local v1    # "cursor":Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 274
    .restart local v0    # "columnIndex":I
    if-eqz v1, :cond_60

    if-ltz v0, :cond_60

    .line 276
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    monitor-exit v6

    goto :goto_11

    .line 278
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_5d
    move-exception v3

    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_5d

    throw v3

    .restart local v0    # "columnIndex":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_60
    :try_start_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5d

    goto :goto_37

    .line 282
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_62
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 284
    :try_start_65
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    .restart local v1    # "cursor":Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 288
    .restart local v0    # "columnIndex":I
    if-eqz v1, :cond_7c

    if-ltz v0, :cond_7c

    .line 290
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    monitor-exit v6

    goto :goto_11

    .line 292
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_79
    move-exception v3

    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_79

    throw v3

    .restart local v0    # "columnIndex":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_7c
    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_79

    goto :goto_37
.end method

.method public getGroupPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public getGroupType(I)I
    .registers 3
    .param p1, "groupInternalPosition"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 317
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemViewType(I)I

    move-result v0

    .line 321
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroupType(I)I

    move-result v0

    goto :goto_c
.end method

.method public getGroupTypeCount()I
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    const/4 v0, 0x2

    .line 335
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->getGroupTypeCount()I

    move-result v0

    goto :goto_7
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 422
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupType(I)I

    move-result v8

    .line 424
    .local v8, "viewType":I
    if-nez p3, :cond_1d

    .line 426
    invoke-direct {p0, v8}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->newGroupview(I)Landroid/view/View;

    move-result-object v1

    .line 433
    :goto_e
    const v0, 0x7f100012

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 435
    packed-switch v8, :pswitch_data_84

    .line 460
    :goto_1b
    monitor-exit v9

    .line 462
    return-object v1

    .line 430
    :cond_1d
    move-object v1, p3

    goto :goto_e

    .line 439
    :pswitch_1f
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 442
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;Z)V

    goto :goto_1b

    .line 460
    .end local v8    # "viewType":I
    :catchall_36
    move-exception v0

    monitor-exit v9
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v0

    .line 448
    .restart local v8    # "viewType":I
    :pswitch_39
    const/4 v0, 0x1

    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 449
    const v0, 0x7f100121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 450
    .local v7, "text":Landroid/widget/TextView;
    if-eqz v7, :cond_74

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexCharacter(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f014a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    :cond_74
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mAdapterBinderGroupHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;Z)V
    :try_end_83
    .catchall {:try_start_3a .. :try_end_83} :catchall_36

    goto :goto_1b

    .line 435
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_39
    .end packed-switch
.end method

.method public getIndexHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPosition(I)I
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getViewPosition(II)I

    move-result p1

    .line 167
    .end local p1    # "cursorPosition":I
    :cond_10
    return p1
.end method

.method public isChildArtistAlbumSeperator()Z
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChildSelectable(II)Z
    .registers 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v0, 0x1

    .line 793
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 795
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildType(II)I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 796
    const/4 v0, 0x0

    .line 802
    :cond_e
    return v0
.end method

.method public isIndex()Z
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mSeperatorOption:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 537
    const-string v0, "VMusicAdapterTag"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 552
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public notifyDataSetChanged(Z)V
    .registers 6
    .param p1, "flag"    # Z

    .prologue
    .line 511
    const-string v1, "VMusicAdapterTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataSetChanged flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 515
    :try_start_1b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 518
    .local v0, "adapterCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isIndex()Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_38

    .line 520
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mGroupPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 523
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    .line 524
    monitor-exit v2

    .line 525
    return-void

    .line 524
    .end local v0    # "adapterCursor":Landroid/database/Cursor;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 558
    const-string v0, "VMusicAdapterTag"

    const-string v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onGroupCollapsed(I)V
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorTreeAdapter;->onGroupCollapsed(I)V

    .line 343
    return-void
.end method

.method public onGroupExpanded(I)V
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorTreeAdapter;->onGroupExpanded(I)V

    .line 349
    return-void
.end method

.method public onIndexChanged(Landroid/widget/AbsListView;ICLjava/lang/Object;)Z
    .registers 8
    .param p1, "attachedView"    # Landroid/widget/AbsListView;
    .param p2, "iIndex"    # I
    .param p3, "ch"    # C
    .param p4, "pParam"    # Ljava/lang/Object;

    .prologue
    .line 354
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v2, p2, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getSeperaterPosition(IC)I

    move-result v1

    .line 356
    .local v1, "iSeperatorPos":I
    if-eqz p1, :cond_18

    if-ltz v1, :cond_18

    move-object v2, p1

    .line 358
    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 360
    .local v0, "headerViewCount":I
    add-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 362
    const/4 v2, 0x1

    .line 365
    .end local v0    # "headerViewCount":I
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 747
    iget v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->groupCursorPosition:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getInternalPosition(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 748
    return-void
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .registers 5
    .param p1, "groupPosition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 777
    move-object v0, p2

    .line 779
    .local v0, "childrenCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->isChildArtistAlbumSeperator()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 781
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->mArtistAlbumSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v1, p2}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->buildNewCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 784
    if-eqz p2, :cond_12

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 787
    :cond_12
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getCursorPosition(I)I

    move-result v1

    invoke-super {p0, v1, v0}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 788
    return-void
.end method
