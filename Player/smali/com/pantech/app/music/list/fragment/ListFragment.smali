.class public Lcom/pantech/app/music/list/fragment/ListFragment;
.super Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;
.implements Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/ListFragment$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;",
        "Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListFragment"


# instance fields
.field mActionBarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mActionMode:Landroid/view/ActionMode;

.field mAlbumartView:Landroid/widget/ImageView;

.field mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

.field mListView:Landroid/widget/ListView;

.field mLoaderAlbumID:I

.field protected mQueryCount:I

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    .line 94
    iput v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mLoaderAlbumID:I

    .line 182
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 621
    iput v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mQueryCount:I

    return-void
.end method

.method private getAlphaforActionBar(I)I
    .registers 10
    .param p1, "scrollY"    # I

    .prologue
    .line 1235
    const/4 v2, 0x0

    .local v2, "minDist":I
    const/16 v1, 0x64

    .line 1237
    .local v1, "maxDist":I
    if-le p1, v1, :cond_8

    .line 1239
    const/16 v0, 0xff

    .line 1249
    :goto_7
    return v0

    .line 1241
    :cond_8
    if-ge p1, v2, :cond_c

    .line 1243
    const/4 v0, 0x0

    goto :goto_7

    .line 1247
    :cond_c
    const/4 v0, 0x0

    .line 1248
    .local v0, "alpha":I
    const-wide v4, 0x406fe00000000000L    # 255.0

    int-to-double v6, v1

    div-double/2addr v4, v6

    int-to-double v6, p1

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 1249
    goto :goto_7
.end method

.method private setLayerTypeListener()V
    .registers 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isLayerCategory()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_13

    .line 1228
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/MusicListView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/MusicListView;->setOnScrollAmountListener(Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;)V

    .line 1230
    :cond_13
    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V
    .registers 5
    .param p1, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 176
    const-string v0, "ListFragment"

    const-string v1, "OnServiceConnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_1b

    .line 178
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mLoaderAlbumID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 180
    :cond_1b
    return-void
.end method

.method public OnUBoxSessionChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->OnUBoxSessionChanged(Landroid/content/Intent;)V

    .line 441
    return-void
.end method

.method public changeListAdapter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v1, :cond_6

    .line 301
    :goto_5
    return-void

    .line 293
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 294
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 296
    if-eqz v0, :cond_1b

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListAdapter(Landroid/view/View;)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    goto :goto_5
.end method

.method public clearAdapter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v1, :cond_6

    .line 284
    :cond_5
    :goto_5
    return-void

    .line 279
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 280
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 282
    if-eqz v0, :cond_5

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method public doCommand(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 545
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->doCommand(ILjava/lang/Object;)V

    .line 546
    return-void
.end method

.method public drop(IIILjava/lang/Object;)V
    .registers 17
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "mode"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RearrangeDrop mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 838
    if-nez p3, :cond_2f

    if-ne p1, p2, :cond_2f

    .line 919
    :cond_2e
    :goto_2e
    return-void

    .line 850
    :cond_2f
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4a

    .line 851
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_89

    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 853
    .local v11, "str":Ljava/lang/String;
    :goto_43
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    .end local v11    # "str":Ljava/lang/String;
    :cond_4a
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 859
    const/4 v1, 0x2

    if-ne p3, v1, :cond_71

    .line 861
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_71

    if-eqz p4, :cond_71

    move-object/from16 v8, p4

    .line 863
    check-cast v8, Landroid/database/Cursor;

    .line 864
    .local v8, "delCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v8, v4, v5}, Lcom/pantech/app/music/list/db/SelectManager;->unselect(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)V

    .line 865
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->updateSelectionMenu()Z

    .line 869
    .end local v8    # "delCursor":Landroid/database/Cursor;
    :cond_71
    new-instance v10, Lcom/pantech/app/music/list/module/RearrangeQueue;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-direct {v10, p0, v1, v2, p0}, Lcom/pantech/app/music/list/module/RearrangeQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V

    .line 880
    .local v10, "savingQueue":Lcom/pantech/app/music/list/module/RearrangeQueue;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Rearrange playlist"

    invoke-direct {v1, v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2e

    .line 851
    .end local v10    # "savingQueue":Lcom/pantech/app/music/list/module/RearrangeQueue;
    :cond_89
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_43

    .line 882
    :cond_91
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 888
    :cond_a5
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    .line 894
    .local v7, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v1

    if-gtz v1, :cond_cd

    .line 897
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v7, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 898
    .local v9, "playlistMemberUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v9, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 903
    .end local v9    # "playlistMemberUri":Landroid/net/Uri;
    :cond_cd
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v7, v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "parentGroupID":Ljava/lang/String;
    new-instance v0, Lcom/pantech/app/music/list/module/RearrangePlaylist;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/module/RearrangePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V

    .line 916
    .local v0, "savingPlaylist":Lcom/pantech/app/music/list/module/RearrangePlaylist;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Rearrange playlist"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2e
.end method

.method getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    return-object v0
.end method

.method public getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public invalidateFragment(Z)V
    .registers 9
    .param p1, "dataChanged"    # Z

    .prologue
    const/4 v6, 0x4

    .line 552
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {v1, v6}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeMessages(I)V

    .line 553
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    new-instance v2, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;-><init>(Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/ChildListViewManager;Z)V

    invoke-virtual {v1, v6, v2}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1278
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1279
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getBroadcastMask()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .line 100
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->register()V

    .line 101
    return-void
.end method

.method public onContentsDBChanged(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, 0x1f4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentsDBChanged category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    .line 475
    :cond_43
    :goto_43
    :pswitch_43
    return-void

    .line 452
    :pswitch_44
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mActivityVisible:Z

    if-eqz v0, :cond_43

    sget-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->SimilarityUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 454
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 468
    :pswitch_5f
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mActivityVisible:Z

    if-eqz v0, :cond_43

    .line 470
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 449
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_5f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "ListFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 108
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 561
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 563
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 565
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 568
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    if-eqz v1, :cond_20

    .line 569
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 573
    :cond_20
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 11
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1255
    const-string v0, "ListFragment"

    const-string v1, "onCreateLoader"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mLoaderAlbumID:I

    if-ne p1, v0, :cond_3a

    .line 1258
    invoke-static {}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getInstance()Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getQueryInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;

    move-result-object v7

    .line 1259
    .local v7, "queryInfo":Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    .end local v7    # "queryInfo":Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    :goto_39
    return-object v0

    :cond_3a
    move-object v0, v5

    goto :goto_39
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 112
    const-string v3, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v2, :cond_114

    const-string v2, ""

    :goto_14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getFragmentLayoutID()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 116
    .local v11, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v2, v3, :cond_e7

    .line 117
    const v2, 0x7f1000a8

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAlbumartView:Landroid/widget/ImageView;

    .line 120
    new-instance v2, Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/library/ListAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    .line 123
    const v2, 0x7f1000ab

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 124
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 128
    const v2, 0x7f1000a9

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/Toolbar;

    .line 129
    .local v10, "toolBar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Landroid/support/v7/app/AppCompatActivity;

    .line 130
    .local v8, "compatActivity":Landroid/support/v7/app/AppCompatActivity;
    invoke-virtual {v8, v10}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 131
    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_86

    .line 133
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    :cond_86
    const v2, 0x7f1000a7

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 136
    .local v7, "collapsingToolbarLayout":Landroid/support/design/widget/CollapsingToolbarLayout;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    move-result-object v1

    .line 139
    .local v1, "extractor":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    sget-object v3, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getAlbumartInfoSync(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;JZ)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    move-result-object v9

    .line 140
    .local v9, "resultInfo":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    invoke-virtual {v9}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_d6

    .line 141
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAlbumartView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_d6
    invoke-virtual {v9}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_e7

    .line 144
    invoke-virtual {v9}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 148
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "extractor":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
    .end local v7    # "collapsingToolbarLayout":Landroid/support/design/widget/CollapsingToolbarLayout;
    .end local v8    # "compatActivity":Landroid/support/v7/app/AppCompatActivity;
    .end local v9    # "resultInfo":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    .end local v10    # "toolBar":Landroid/support/v7/widget/Toolbar;
    :cond_e7
    invoke-virtual {p0, v11}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListAdapter(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->setLayerTypeListener()V

    .line 153
    invoke-virtual {p0, v11}, Lcom/pantech/app/music/list/fragment/ListFragment;->createHintLayer(Landroid/view/View;)V

    .line 165
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 166
    new-instance v2, Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    invoke-direct {v2, p0, v3, v11}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Lcom/pantech/app/music/list/PageInfoType;Landroid/view/View;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    .line 167
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->close()V

    .line 170
    :cond_110
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    .line 172
    return-object v11

    .line 112
    .end local v11    # "view":Landroid/view/View;
    :cond_114
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    goto/16 :goto_14
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroy()V

    .line 236
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 582
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 585
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 586
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 588
    :cond_17
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyView()V

    .line 231
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 241
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDetach()V

    .line 243
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    if-eqz v1, :cond_12

    .line 244
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/library/ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 247
    :cond_12
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v1, :cond_17

    .line 273
    :cond_16
    :goto_16
    return-void

    .line 252
    :cond_17
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 254
    if-eqz v0, :cond_16

    .line 261
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 263
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 271
    :cond_4b
    :goto_4b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 268
    :cond_4f
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_4b
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 34
    .param p2, "adapterView"    # Landroid/view/View;
    .param p3, "_position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v3, "ListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick() position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2d

    .line 1169
    :cond_2c
    :goto_2c
    return-void

    .line 950
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v23, p3, v3

    .line 955
    .local v23, "position":I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_86

    .line 957
    sget-object v3, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_386

    goto :goto_2c

    .line 960
    :pswitch_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    .line 964
    .local v14, "count":I
    if-lez v14, :cond_7b

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSubListActivity(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    goto :goto_2c

    .line 970
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08012c

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_2c

    .line 995
    .end local v14    # "count":I
    :cond_86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-eq v3, v4, :cond_2c

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 1005
    const v3, 0x7f1000f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 1007
    .local v26, "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    const v3, 0x7f10000f

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 1009
    .local v20, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    new-instance v5, Lcom/pantech/app/music/list/fragment/ListFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/pantech/app/music/list/fragment/ListFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/ListFragment;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto/16 :goto_2c

    .line 1019
    .end local v20    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .end local v26    # "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    :cond_cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1024
    const/16 v3, 0x1f4

    const-wide/16 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/pantech/app/music/list/fragment/ListFragment;->setButtonLock(IJ)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 1026
    const-string v3, "Skip TOUCHLOCK_ON_ITEM_CLICK"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 1030
    :cond_eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemPosition(I)I

    move-result v8

    .line 1035
    .local v8, "cursorPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItem(I)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-static {v3, v8, v4, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;IILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v15

    .line 1036
    .local v15, "currentCursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1038
    sget-object v3, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_38c

    .line 1153
    :pswitch_11e
    const/4 v7, 0x0

    .line 1155
    .local v7, "launchPlayback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->isPlayingAudioID(Lcom/pantech/app/music/service/IMusicPlaybackService;J)Z

    move-result v3

    if-eqz v3, :cond_136

    .line 1156
    const/4 v7, 0x1

    .line 1158
    :cond_136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v3

    if-eqz v3, :cond_164

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v3, :cond_151

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 1161
    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080188

    const v5, 0x7f080181

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 1164
    :cond_164
    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 1165
    .local v2, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    sget-object v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto/16 :goto_2c

    .line 1047
    .end local v2    # "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    .end local v7    # "launchPlayback":Z
    :pswitch_184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v3, v15, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1049
    .local v17, "groupID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v13

    .line 1051
    .local v13, "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v13}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v13}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v12

    .line 1053
    .local v12, "childCount":I
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v13, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-nez v3, :cond_1cd

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v13, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-nez v3, :cond_1cd

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v13, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-nez v3, :cond_1cd

    if-lez v12, :cond_1de

    .line 1064
    :cond_1cd
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v13}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v13}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSubListActivity(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 1069
    :cond_1de
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08012c

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_2c

    .line 1074
    .end local v12    # "childCount":I
    .end local v13    # "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    .end local v17    # "groupID":Ljava/lang/String;
    :pswitch_1ea
    if-eqz v15, :cond_2c

    .line 1076
    sget-object v24, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1077
    .local v24, "shortCutCategoryType":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v3, v15, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1078
    .local v21, "playlistID":Ljava/lang/String;
    const-string v3, "name"

    invoke-static {v15, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1080
    .local v22, "playlistName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1081
    .local v19, "nPlaylistID":I
    const/4 v14, 0x0

    .line 1083
    .restart local v14    # "count":I
    const/16 v3, -0x64

    move/from16 v0, v19

    if-ne v0, v3, :cond_232

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    .line 1108
    :goto_224
    if-nez v14, :cond_2a0

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080148

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_2c

    .line 1087
    :cond_232
    const/4 v3, -0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_249

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    goto :goto_224

    .line 1091
    :cond_249
    const/4 v3, -0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_260

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    goto :goto_224

    .line 1095
    :cond_260
    const/4 v3, -0x5

    move/from16 v0, v19

    if-ne v0, v3, :cond_277

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    goto :goto_224

    .line 1099
    :cond_277
    const/4 v3, -0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_28e

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    goto :goto_224

    .line 1105
    :cond_28e
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0, v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v14

    goto :goto_224

    .line 1115
    :cond_2a0
    new-instance v25, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v25, "shortcut":Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/playlist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v3, "playlist"

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1118
    const/high16 v3, 0x4000000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1119
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".list.activity.ExInterfaceActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1121
    const-string v3, "player_if_from_shortcut"

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    const-string v3, "player_if_category_type"

    invoke-virtual/range {v24 .. v24}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    const-string v3, "player_if_shortcut_playlist_id"

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1124
    const-string v3, "player_if_shortcut_playlist_added_time"

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getPlaylistAddedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string v3, "ListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHORTCUT setResult and finish() playlistID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 1128
    .local v18, "intent2":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1129
    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f02015a

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2c

    .line 1144
    .end local v14    # "count":I
    .end local v18    # "intent2":Landroid/content/Intent;
    .end local v19    # "nPlaylistID":I
    .end local v21    # "playlistID":Ljava/lang/String;
    .end local v22    # "playlistName":Ljava/lang/String;
    .end local v24    # "shortCutCategoryType":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v25    # "shortcut":Landroid/content/Intent;
    :pswitch_372
    :try_start_372
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v11

    .line 1145
    .local v11, "IService":Lcom/pantech/app/music/service/IMusicPlaybackService;
    if-eqz v11, :cond_2c

    .line 1146
    const-wide/16 v4, 0x0

    invoke-interface {v11, v8, v4, v5}, Lcom/pantech/app/music/service/IMusicPlaybackService;->setQueuePosition(IJ)V
    :try_end_37d
    .catch Landroid/os/RemoteException; {:try_start_372 .. :try_end_37d} :catch_37f

    goto/16 :goto_2c

    .line 1147
    .end local v11    # "IService":Lcom/pantech/app/music/service/IMusicPlaybackService;
    :catch_37f
    move-exception v16

    .line 1148
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .line 957
    nop

    :pswitch_data_386
    .packed-switch 0x9
        :pswitch_50
    .end packed-switch

    .line 1038
    :pswitch_data_38c
    .packed-switch 0x3
        :pswitch_184
        :pswitch_11e
        :pswitch_184
        :pswitch_372
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_184
        :pswitch_184
        :pswitch_184
        :pswitch_184
        :pswitch_1ea
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1175
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1177
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1179
    :try_start_d
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, p3, v4

    .line 1184
    .local v0, "newPosition":I
    if-gez v0, :cond_19

    .line 1186
    monitor-exit v3

    .line 1203
    .end local v0    # "newPosition":I
    :cond_18
    :goto_18
    return v1

    .line 1188
    .restart local v0    # "newPosition":I
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_30

    .line 1192
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1194
    const v1, 0x7f1000f2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->startActionMode(Landroid/view/View;Z)V

    move v1, v2

    .line 1199
    goto :goto_18

    .line 1188
    .end local v0    # "newPosition":I
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ListFragment"

    const-string v1, "onLoadFinished"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/library/ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1269
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ListFragment"

    const-string v1, "onLoaderReset"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method public onMTPFileModified()V
    .registers 11

    .prologue
    .line 487
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onMTPFileModified()V

    .line 489
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v7}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v0

    .line 491
    .local v0, "contentCount":I
    sget-object v5, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8c

    .line 531
    :goto_22
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 532
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onMTPFileModified()V

    .line 533
    :cond_39
    return-void

    .line 498
    :pswitch_3a
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 500
    const/4 v2, 0x0

    .line 502
    .local v2, "defaultCount":I
    :try_start_3e
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 504
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_45
    const/4 v5, 0x3

    if-ge v3, v5, :cond_61

    .line 506
    if-eqz v1, :cond_5e

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 508
    const-string v5, "_id"

    invoke-static {v1, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 510
    .local v4, "playlistID":I
    const/4 v5, -0x4

    if-eq v4, v5, :cond_5c

    const/4 v5, -0x6

    if-ne v4, v5, :cond_5e

    .line 512
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    .line 504
    .end local v4    # "playlistID":I
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 517
    :cond_61
    const/4 v5, 0x2

    if-ge v2, v5, :cond_79

    .line 519
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v7, v8, v9}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    :cond_74
    :goto_74
    monitor-exit v6

    goto :goto_22

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "i":I
    :catchall_76
    move-exception v5

    monitor-exit v6
    :try_end_78
    .catchall {:try_start_3e .. :try_end_78} :catchall_76

    throw v5

    .line 522
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "i":I
    :cond_79
    if-nez v0, :cond_74

    .line 524
    :try_start_7b
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mMainQuery:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v7, v8, v9}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_76

    goto :goto_74

    .line 491
    :pswitch_data_8c
    .packed-switch 0x5
        :pswitch_3a
    .end packed-switch
.end method

.method onPageEmpty(Z)V
    .registers 4
    .param p1, "isEmpty"    # Z

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageEmpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onPageSelected()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 593
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageSelected()V

    .line 601
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 603
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    .line 609
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 611
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v3}, Lcom/pantech/app/music/list/module/RemovingEmptyGenres;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteGenre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    :cond_51
    return-void
.end method

.method public onPageUnSelected()V
    .registers 1

    .prologue
    .line 618
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageUnSelected()V

    .line 619
    return-void
.end method

.method public onPlayingQueueChanged(I)V
    .registers 4
    .param p1, "queueSize"    # I

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingQueueChanged(I)V

    .line 427
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mActivityVisible:Z

    if-eqz v0, :cond_15

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    .line 431
    :cond_15
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayingStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    if-eqz v0, :cond_25

    .line 412
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mTrackListAdapter:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListAdapter;->notifyDataSetChanged()V

    .line 415
    :cond_25
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 416
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 417
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isBuffering(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 421
    :cond_3e
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/SmartFalg;->clear(I)V

    .line 662
    iget v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mQueryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mQueryCount:I

    .line 664
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v2, :cond_1e

    .line 666
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 668
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 669
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 673
    :cond_1e
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/ListUtil;->isValidCursor(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  cursorCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_6a

    const/4 v2, -0x1

    :goto_4c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v2, :cond_61

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6f

    .line 679
    :cond_61
    if-eqz p1, :cond_66

    .line 680
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_f7

    .line 813
    :cond_66
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 815
    :goto_69
    return-void

    .line 675
    :cond_6a
    :try_start_6a
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_4c

    .line 702
    :cond_6f
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 705
    :cond_83
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    .line 707
    .local v1, "newCursor":Landroid/database/Cursor;
    if-eqz p1, :cond_8e

    .line 708
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 710
    :cond_8e
    move-object p1, v1

    .line 713
    .end local v1    # "newCursor":Landroid/database/Cursor;
    :cond_8f
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2, p1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 715
    if-eqz p1, :cond_cf

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_cf

    .line 717
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    if-nez v2, :cond_f1

    .line 718
    new-instance v2, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-direct {v2, p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    .line 725
    :goto_a7
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 727
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 728
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/external/audio"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 737
    :cond_cf
    :goto_cf
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_102

    .line 739
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    .line 741
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isNoneEmptyGroupChild()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 743
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_ec
    .catchall {:try_start_6a .. :try_end_ec} :catchall_f7

    .line 813
    :cond_ec
    :goto_ec
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    goto/16 :goto_69

    .line 720
    :cond_f1
    :try_start_f1
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->setCursor(Landroid/database/Cursor;)V
    :try_end_f6
    .catchall {:try_start_f1 .. :try_end_f6} :catchall_f7

    goto :goto_a7

    .line 813
    :catchall_f7
    move-exception v2

    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    throw v2

    .line 732
    :cond_fc
    :try_start_fc
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_cf

    .line 754
    :cond_102
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    goto :goto_ec

    .line 759
    :cond_107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query Error, Cursor is Null ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 765
    sget-object v2, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a0

    .line 803
    :pswitch_13a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    goto :goto_ec

    .line 768
    :pswitch_13f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/pantech/app/music/list/activity/NavigationListActivity;

    if-eqz v2, :cond_167

    .line 770
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    .line 772
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "devNowPlayingTab"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 773
    .local v0, "enableNowplayingTab":Z
    if-eqz v0, :cond_167

    .line 775
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    .line 776
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V
    :try_end_162
    .catchall {:try_start_fc .. :try_end_162} :catchall_f7

    .line 813
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    goto/16 :goto_69

    .line 781
    .end local v0    # "enableNowplayingTab":Z
    :cond_167
    :try_start_167
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 783
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08012c

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 784
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_ec

    .line 791
    :pswitch_180
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    goto/16 :goto_ec

    .line 796
    :pswitch_186
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08013b

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 798
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 799
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_19d
    .catchall {:try_start_167 .. :try_end_19d} :catchall_f7

    goto/16 :goto_ec

    .line 765
    nop

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_186
        :pswitch_13a
        :pswitch_13a
        :pswitch_13a
        :pswitch_13a
        :pswitch_13f
        :pswitch_180
        :pswitch_180
    .end packed-switch
.end method

.method public onRearrangeComplete()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 820
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 822
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    .line 828
    :goto_e
    return-void

    .line 826
    :cond_f
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListFragment;->invalidateFragment(Z)V

    goto :goto_e
.end method

.method public onScrollChangedAmount(IIIII)V
    .registers 9
    .param p1, "scrollY"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollChangedAmount(): ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mActionBarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->getAlphaforActionBar(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1216
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    if-eqz v0, :cond_5e

    .line 1218
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListHeaderView:Landroid/view/View;

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1220
    :cond_5e
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStart()V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v0, :cond_9

    .line 212
    :goto_8
    return-void

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isValidCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 197
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v0

    if-gtz v0, :cond_25

    move v0, v1

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListFragment;->drawNoContentsPage(Z)V

    .line 205
    :cond_21
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListFragment;->queryList(I)V

    goto :goto_8

    .line 197
    :cond_25
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_16

    .line 220
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 225
    :cond_16
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStop()V

    .line 226
    return-void
.end method

.method public onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "add"    # Z
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V

    .line 436
    return-void
.end method

.method queryList(I)V
    .registers 11
    .param p1, "queryType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 624
    const-string v0, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryList() queryType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 627
    const-string v0, "Querying. Check Routine."

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 651
    :cond_37
    :goto_37
    return-void

    .line 631
    :cond_38
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v8, :cond_79

    .line 633
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_a2

    move v1, v7

    .line 635
    .local v1, "priority":I
    :goto_45
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    new-instance v4, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 636
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/list/component/SmartFalg;->set(I)V

    .line 638
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 640
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f08018b

    const v3, 0x7f080184

    invoke-static {v0, v2, v3, v7}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mSimilarityLoadingDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 644
    .end local v1    # "priority":I
    :cond_79
    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_37

    .line 646
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 648
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->querySubList(Ljava/lang/String;)V

    goto :goto_37

    :cond_a2
    move v1, v8

    .line 633
    goto :goto_45
.end method

.method public requestActionMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .prologue
    .line 184
    return-void
.end method

.method setListAdapter(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f1000a5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 304
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_10

    .line 405
    :goto_f
    return-void

    .line 307
    :cond_10
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListAdapter():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    .line 310
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListHeaderView(Landroid/widget/ListView;)V

    .line 314
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 316
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 317
    .local v7, "listLayoutView":Landroid/view/View;
    if-eqz v7, :cond_58

    .line 319
    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 323
    .end local v7    # "listLayoutView":Landroid/view/View;
    :cond_58
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListFragment$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20e

    .line 399
    :goto_69
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 401
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 402
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 404
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerViewHierachyChangeListener(Landroid/widget/AbsListView;)V

    goto/16 :goto_f

    .line 326
    :pswitch_ac
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 333
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 334
    .restart local v7    # "listLayoutView":Landroid/view/View;
    if-eqz v7, :cond_c1

    .line 336
    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 340
    .end local v7    # "listLayoutView":Landroid/view/View;
    :cond_c1
    new-instance v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 341
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    invoke-interface {v0, v8, v9}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_69

    .line 349
    :pswitch_f4
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 350
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    invoke-interface {v0, v8, v9}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_69

    .line 358
    :pswitch_127
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 359
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 365
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    invoke-interface {v0, v8, v9}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_69

    .line 369
    :pswitch_15f
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 370
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v8}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_69

    .line 378
    :pswitch_193
    new-instance v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 379
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setFastScrollEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setDropListener(Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;)V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, v9}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setActiveMode(I)V

    goto/16 :goto_69

    .line 390
    :pswitch_1db
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterSimilarityCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterSimilarityCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 391
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterSimilarityCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    invoke-interface {v0, v8, v9}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_69

    .line 323
    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_ac
        :pswitch_f4
        :pswitch_127
        :pswitch_15f
        :pswitch_193
        :pswitch_1db
    .end packed-switch
.end method
