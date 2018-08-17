.class public Lcom/pantech/app/music/list/module/AddToPlaylistTask;
.super Ljava/lang/Object;
.source "AddToPlaylistTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mListener:Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

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

.field mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mTargetName:Ljava/lang/String;

.field mTargetPlaylistID:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V
    .registers 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iface"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p4, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p5, "targetCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p6, "targetID"    # J
    .param p8, "listener"    # Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/pantech/app/music/service/IMusicPlaybackService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "J",
            "Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    invoke-direct {v0, p1, p2}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 53
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V
    .registers 17
    .param p1, "fragment"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "targetCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p5, "targetID"    # J
    .param p7, "listener"    # Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "J",
            "Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 60
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    .line 61
    return-void
.end method

.method private declared-synchronized addToNowplayingList(Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)",
            "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v7}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_dc

    if-eqz p1, :cond_dc

    invoke-interface {p1}, Ljava/util/Collection;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_df

    move-result v7

    if-lez v7, :cond_dc

    .line 105
    :try_start_11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v6, "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    iget-object v7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v7}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v5

    .line 111
    .local v5, "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-eqz v5, :cond_44

    array-length v7, v5

    if-ge v3, v7, :cond_44

    .line 112
    aget-object v7, v5, v3

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 114
    :cond_44
    new-instance v7, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;

    invoke-direct {v7, p0, v6, v4, v1}, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;-><init>(Lcom/pantech/app/music/list/module/AddToPlaylistTask;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1, v7}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 135
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 137
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d6

    .line 139
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 145
    .local v0, "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v5, :cond_66

    array-length v7, v5

    if-nez v7, :cond_9c

    .line 148
    :cond_66
    iget-object v7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v7}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/pantech/app/music/service/IMusicPlaybackService;->pause()V

    .line 149
    iget-object v7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v7}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v0, v8}, Lcom/pantech/app/music/service/IMusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 164
    :goto_79
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_c1

    .line 167
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    array-length v8, v0

    iget-object v9, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v9}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0800a2

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_99} :catch_ba
    .catchall {:try_start_11 .. :try_end_99} :catchall_df

    move-result-object v7

    .line 187
    .end local v0    # "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v1    # "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v5    # "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v6    # "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_9a
    monitor-exit p0

    return-object v7

    .line 155
    .restart local v0    # "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v1    # "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v3    # "i":I
    .restart local v4    # "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v5    # "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v6    # "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_9c
    const/4 v7, 0x0

    :try_start_9d
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/MusicItemInfo;

    iget v7, v7, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    if-eq v7, v8, :cond_af

    .line 157
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ENQUEUE_INVALID_CNTS_TYPE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_9a

    .line 161
    :cond_af
    iget-object v7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v7}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v0, v8}, Lcom/pantech/app/music/service/IMusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_b9} :catch_ba
    .catchall {:try_start_9d .. :try_end_b9} :catchall_df

    goto :goto_79

    .line 177
    .end local v0    # "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v1    # "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v5    # "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v6    # "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :catch_ba
    move-exception v2

    .line 180
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_bb
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_df

    goto :goto_9a

    .line 169
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v1    # "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v3    # "i":I
    .restart local v4    # "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v5    # "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v6    # "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_c1
    :try_start_c1
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    array-length v8, v0

    iget-object v9, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v9}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0800a2

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v7

    goto :goto_9a

    .line 173
    .end local v0    # "arrItemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_d6
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 174
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_db} :catch_ba
    .catchall {:try_start_c1 .. :try_end_db} :catchall_df

    goto :goto_9a

    .line 187
    .end local v1    # "dupAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "newAddArrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .end local v5    # "originalList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v6    # "searchTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_dc
    :try_start_dc
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_de
    .catchall {:try_start_dc .. :try_end_de} :catchall_df

    goto :goto_9a

    .line 101
    :catchall_df
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V
    .registers 11
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "targetCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p5, "targetID"    # J
    .param p7, "listener"    # Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "J",
            "Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    iput-object p3, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 67
    iput-object p4, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 68
    iput-wide p5, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetPlaylistID:J

    .line 70
    invoke-interface {p1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 72
    if-nez p2, :cond_38

    .line 74
    iget-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    .line 81
    :goto_26
    iput-object p7, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mListener:Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;

    .line 83
    new-instance v0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$1;

    invoke-interface {p1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/module/AddToPlaylistTask$1;-><init>(Lcom/pantech/app/music/list/module/AddToPlaylistTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mHandler:Landroid/os/Handler;

    .line 97
    return-void

    .line 78
    :cond_38
    iput-object p2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    goto :goto_26
.end method

.method public run()V
    .registers 8

    .prologue
    .line 196
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 198
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->addToNowplayingList(Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v1

    .line 217
    .local v1, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :goto_10
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void

    .line 200
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :cond_1d
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 202
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v1

    .restart local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    goto :goto_10

    .line 206
    .end local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :cond_36
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 208
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetPlaylistID:J

    iget-object v6, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertCloudPlaylistSongs(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v1

    .restart local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    goto :goto_10

    .line 212
    .end local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :cond_53
    iget-object v2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mIFragmentContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mTargetPlaylistID:J

    iget-object v3, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mSelectedList:Ljava/util/Collection;

    invoke-static {v2, v4, v5, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertPlaylistSongs(Landroid/content/Context;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v1

    .restart local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    goto :goto_10
.end method
