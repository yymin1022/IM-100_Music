.class public Lcom/pantech/app/music/list/component/AddToCartDialog;
.super Landroid/app/DialogFragment;
.source "AddToCartDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;
.implements Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/AddToCartDialog$2;
    }
.end annotation


# static fields
.field public static final ADDTO_FAVORITE:I = -0x6

.field public static final ADDTO_NEW_PLAYLIST:I = -0x67

.field public static final ADDTO_NOWPLAYING:I = -0x65

.field static final EXTRAS_KEY_ADD_TO_CART_FROM_PLAYBACK:Ljava/lang/String; = "fromPlayback"

.field static final TAG:Ljava/lang/String; = "VMusicListDialogFragment"


# instance fields
.field mAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

.field mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mSelectID:J

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSelectedList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 139
    return-void
.end method

.method private query()Landroid/database/Cursor;
    .registers 22

    .prologue
    .line 741
    const/4 v4, 0x0

    .line 743
    .local v4, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_c9

    const-string v14, ""

    .line 744
    .local v14, "popupItemNowplaying":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_dc

    const-string v12, ""

    .line 745
    .local v12, "popupItemFavorite":Ljava/lang/String;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_ef

    const-string v13, ""

    .line 747
    .local v13, "popupItemMakeNewPlaylist":Ljava/lang/String;
    :goto_2b
    new-instance v11, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v11}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    .line 752
    .local v11, "mQueryCondition":Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    const v16, -0x98967f

    .line 755
    .local v16, "selectedGroupID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-nez v18, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-eqz v18, :cond_7e

    .line 756
    :cond_4f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "!="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 761
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-nez v18, :cond_9a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-eqz v18, :cond_14f

    .line 763
    :cond_9a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v8, "groupSelectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedGroupList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v15

    .line 767
    .local v15, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_b7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_102

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 769
    .local v10, "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    check-cast v10, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .end local v10    # "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 743
    .end local v8    # "groupSelectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "mQueryCondition":Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .end local v12    # "popupItemFavorite":Ljava/lang/String;
    .end local v13    # "popupItemMakeNewPlaylist":Ljava/lang/String;
    .end local v14    # "popupItemNowplaying":Ljava/lang/String;
    .end local v15    # "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v16    # "selectedGroupID":I
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0800a2

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_f

    .line 744
    .restart local v14    # "popupItemNowplaying":Ljava/lang/String;
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0800a0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1d

    .line 745
    .restart local v12    # "popupItemFavorite":Ljava/lang/String;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0800a1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2b

    .line 772
    .restart local v8    # "groupSelectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "mQueryCondition":Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .restart local v13    # "popupItemMakeNewPlaylist":Ljava/lang/String;
    .restart local v15    # "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .restart local v16    # "selectedGroupID":I
    :cond_102
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14f

    .line 774
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 776
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "!="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 780
    .end local v8    # "groupSelectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v11, v2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v17

    .line 782
    .local v17, "tmpCursor":Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v5, "cursorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz v17, :cond_1ed

    .line 790
    :try_start_16c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "fromPlayback"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 791
    .local v7, "fromPlayback":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-eqz v18, :cond_197

    if-nez v7, :cond_197

    .line 793
    const/16 v18, -0x65

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_197
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v18

    if-eqz v18, :cond_1de

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/app/music/list/PageInfoType;->isNotCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v18

    if-eqz v18, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v18

    if-nez v18, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/app/music/list/PageInfoType;->isUBoxNowplayingList()Z

    move-result v18

    if-nez v18, :cond_1de

    const/16 v18, -0x6

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1de

    .line 803
    const/16 v18, -0x6

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v12, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_1de
    const/16 v18, -0x67

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v13, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ed
    .catch Ljava/lang/IllegalStateException; {:try_start_16c .. :try_end_1ed} :catch_213

    .line 818
    .end local v7    # "fromPlayback":Z
    :cond_1ed
    :goto_1ed
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_218

    .line 820
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/Cursor;

    .line 822
    .local v3, "arrCursor":[Landroid/database/Cursor;
    new-instance v4, Landroid/database/MergeCursor;

    .end local v4    # "cursor":Landroid/database/Cursor;
    invoke-direct {v4, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 823
    .restart local v4    # "cursor":Landroid/database/Cursor;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 830
    .end local v3    # "arrCursor":[Landroid/database/Cursor;
    :goto_212
    return-object v4

    .line 810
    :catch_213
    move-exception v6

    .line 815
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1ed

    .line 827
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_218
    move-object/from16 v4, v17

    goto :goto_212
.end method

.method public static showAddToCartDialog(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)Lcom/pantech/app/music/list/component/AddToCartDialog;
    .registers 11
    .param p0, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "IService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p3, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 202
    const-string v5, "VMusicListDialogFragment"

    const-string v6, "showAddToCartDialog()"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-interface {p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 206
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "VMusicListDialogFragment"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 207
    .local v4, "prev":Landroid/app/Fragment;
    if-eqz v4, :cond_22

    .line 208
    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 212
    :cond_22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    const-class v5, Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/component/AddToCartDialog;

    .line 215
    .local v3, "listSelectDialogFragment":Lcom/pantech/app/music/list/component/AddToCartDialog;
    invoke-virtual {v3, v1}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setArguments(Landroid/os/Bundle;)V

    .line 216
    const-string v5, "VMusicListDialogFragment"

    invoke-virtual {v3, v2, v5}, Lcom/pantech/app/music/list/component/AddToCartDialog;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v3, p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setContextAndIService(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 218
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setSelectedList(Ljava/util/Collection;)V

    .line 219
    invoke-virtual {v3, p3}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setSelectMenuCallback(Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 221
    return-object v3
.end method

.method public static showAddToCartDialogPlayback(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)Lcom/pantech/app/music/list/component/AddToCartDialog;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "IService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p4, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/service/IMusicPlaybackService;",
            "Lcom/pantech/app/music/list/listener/ISelectMenuCallback;",
            ")",
            "Lcom/pantech/app/music/list/component/AddToCartDialog;"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const-string v4, "VMusicListDialogFragment"

    const-string v5, "showAddToCartDialogPlayback()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 229
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "VMusicListDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 230
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_1e

    .line 231
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 235
    :cond_1e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    const-string v4, "fromPlayback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-class v4, Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/AddToCartDialog;

    .line 239
    .local v2, "listSelectDialogFragment":Lcom/pantech/app/music/list/component/AddToCartDialog;
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setArguments(Landroid/os/Bundle;)V

    .line 240
    const-string v4, "VMusicListDialogFragment"

    invoke-virtual {v2, v1, v4}, Lcom/pantech/app/music/list/component/AddToCartDialog;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v2, p0, p3}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setContextAndIService(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    .line 242
    invoke-virtual {v2, p2}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setSelectedList(Ljava/util/Collection;)V

    .line 243
    invoke-virtual {v2, p4}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setSelectMenuCallback(Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 245
    return-object v2
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->dismissAllowingStateLoss()V

    .line 94
    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 638
    const-string v0, "VMusicListDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->query()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 643
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 644
    return-void
.end method

.method public onAddToPlaylistComplete(Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;)V
    .registers 11
    .param p1, "error"    # Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 103
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 105
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "resource":Landroid/content/res/Resources;
    sget-object v3, Lcom/pantech/app/music/list/component/AddToCartDialog$2;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistInsertErrorType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_c0

    .line 143
    .end local v0    # "resource":Landroid/content/res/Resources;
    :cond_20
    :goto_20
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    if-eqz v3, :cond_33

    .line 145
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->isSuccess()Z

    move-result v4

    iget-wide v6, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v8, v4, v5}, Lcom/pantech/app/music/list/listener/ISelectMenuCallback;->onSelectMenuResult(IZLjava/lang/Object;)V

    .line 147
    :cond_33
    return-void

    .line 111
    .restart local v0    # "resource":Landroid/content/res/Resources;
    :pswitch_34
    const v3, 0x7f0d0001

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "val":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "val2":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20

    .line 119
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "val2":Ljava/lang/String;
    :pswitch_5f
    const/high16 v3, 0x7f0d0000

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "val":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "val2":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20

    .line 126
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "val2":Ljava/lang/String;
    :pswitch_89
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800a4

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_20

    .line 130
    :pswitch_96
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800a5

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_20

    .line 134
    :pswitch_a4
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800a3

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_20

    .line 138
    :pswitch_b2
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08009f

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_20

    .line 107
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_5f
        :pswitch_89
        :pswitch_96
        :pswitch_a4
        :pswitch_b2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 650
    const-string v0, "VMusicListDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 653
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 278
    const-string v1, "VMusicListDialogFragment"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/PageInfoType;

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 284
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 286
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isUBoxNowplayingList()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 288
    :cond_39
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 295
    :goto_3d
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mViewInflater:Landroid/view/LayoutInflater;

    .line 297
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/component/AddToCartDialog;->setRetainInstance(Z)V

    .line 299
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 300
    return-void

    .line 292
    :cond_55
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_3d
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 304
    new-instance v0, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, "listSelectDialog":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const v2, 0x7f0800a6

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 308
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v1, "listView":Landroid/widget/ListView;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isBlackTheme()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 312
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_2d
    new-instance v2, Lcom/pantech/app/music/list/component/AddToCartDialog$1;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;-><init>(Lcom/pantech/app/music/list/component/AddToCartDialog;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 621
    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 622
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 623
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 624
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 625
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 627
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 629
    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 631
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 693
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 695
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 696
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 697
    if-eqz v0, :cond_14

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_14
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 682
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 684
    :cond_14
    const-string v0, "VMusicListDialogFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 687
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 169
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->dismissAllowingStateLoss()V

    .line 171
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 173
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    .line 175
    iget-wide v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    const-wide/16 v4, -0x67

    cmp-long v1, v2, v4

    if-nez v1, :cond_37

    .line 177
    new-instance v1, Lcom/pantech/app/music/list/module/MakePlaylist;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/app/music/list/module/MakePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    .line 178
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/list/module/MakePlaylist;->makePlaylistAndAddCardDialog(Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;)V

    .line 198
    :goto_36
    return-void

    .line 182
    :cond_37
    iget-wide v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    const-wide/16 v4, -0x6

    cmp-long v1, v2, v4

    if-nez v1, :cond_71

    .line 184
    new-instance v1, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectedList:Ljava/util/Collection;

    iget-object v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    .line 185
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFavorite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_36

    .line 187
    :cond_71
    iget-wide v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_ab

    .line 189
    new-instance v1, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectedList:Ljava/util/Collection;

    iget-object v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    .line 190
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPlaylist Nowplaying:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_36

    .line 194
    :cond_ab
    new-instance v1, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectedList:Ljava/util/Collection;

    iget-object v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-wide v6, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    .line 195
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPlaylist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_36
.end method

.method public onMakePlaylistComplete(Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;J)V
    .registers 14
    .param p1, "error"    # Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .param p2, "playlistID"    # J

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 155
    new-instance v1, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectedList:Ljava/util/Collection;

    iget-object v4, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-wide v6, p2

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    .line 157
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mAddToPlaylist:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makePlaylist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    :goto_34
    return-void

    .line 161
    :cond_35
    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08012f

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_34
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 659
    const-string v0, "VMusicListDialogFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 662
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 668
    const-string v0, "VMusicListDialogFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 671
    return-void
.end method

.method public onUserPresent()V
    .registers 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 705
    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showInputMethodForEditBox(Landroid/content/Context;Lcom/pantech/app/music/view/SkyDialogFragment;)V

    .line 707
    :cond_23
    return-void
.end method

.method public setContextAndIService(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "IService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 261
    new-instance v0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    invoke-direct {v0, p1, p2}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 262
    return-void
.end method

.method public setContextAndIService(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V
    .registers 2
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 258
    return-void
.end method

.method public setSelectMenuCallback(Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 267
    return-void
.end method

.method public setSelectedList(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    iput-object p1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog;->mSelectedList:Ljava/util/Collection;

    .line 272
    return-void
.end method
