.class public Lcom/pantech/app/music/list/activity/ExInterfaceActivity;
.super Landroid/app/Activity;
.source "ExInterfaceActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;
.implements Landroid/content/ServiceConnection;
.implements Lcom/pantech/app/music/list/listener/IForceFinishListCallback;
.implements Lcom/pantech/app/music/list/listener/IMediaScannerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;,
        Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;
    }
.end annotation


# static fields
.field static final LOADER_ID_ACTION_VIEW:I = 0x66

.field static final LOADER_ID_PLAYLIST_SELECT_PLAY:I = 0x67

.field static final LOADER_ID_SEARCH_PLAY:I = 0x64

.field static final LOADER_ID_SHORTCUT:I = 0x65

.field static final MODE_ACTION_VIEW_NORMAL:I = 0x3

.field static final MODE_ACTION_VIEW_SHORTCUT_PLAY:I = 0x2

.field static final MODE_NONE:I = 0x0

.field static final MODE_SEARCH_PLAY:I = 0x1

.field static final MODE_SEARCH_PLAYLIST_PLAY:I = 0x4

.field static final TAG:Ljava/lang/String; = "ExInterfaceActivity"


# instance fields
.field isRegisteredBroadCast:Z

.field mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field protected mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mCursorLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field mExtraValue:Ljava/lang/String;

.field mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

.field mInterfaceMode:I

.field mMusicItemLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<[",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

.field mSearchMode:I

.field mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 80
    iput v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    .line 81
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->isRegisteredBroadCast:Z

    .line 88
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 94
    new-instance v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mMusicItemLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 213
    new-instance v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCursorLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 482
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mToast:Landroid/widget/Toast;

    .line 483
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 520
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 868
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->askPlayAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/database/Cursor;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/ExInterfaceActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->setTabSelectDialog(Landroid/database/Cursor;)V

    return-void
.end method

.method private askPlayAll()V
    .registers 5

    .prologue
    .line 784
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08015c

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x136

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->askPopupList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 786
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_25

    .line 788
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    new-instance v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$6;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 797
    :cond_25
    return-void
.end method

.method private loadIntentActionView(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f080138

    .line 801
    if-nez p1, :cond_6

    .line 866
    :goto_5
    return-void

    .line 804
    :cond_6
    const-string v8, "ExInterfaceActivity"

    const-string v9, "loadIntentActionView()"

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v4, "vnd.android.cursor.dir/playlist"

    .line 807
    .local v4, "mimeTypePlayList":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/album"

    .line 808
    .local v3, "mimeTypeAlbum":Ljava/lang/String;
    const-string v5, "vnd.android.cursor.dir/vega.search"

    .line 810
    .local v5, "mimeTypeSearch":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 811
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 812
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 814
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, "ExInterfaceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent.ACTION_VIEW type ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v8, "ExInterfaceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent.ACTION_VIEW uri ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v2, 0x0

    .line 818
    .local v2, "listID":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 820
    .local v1, "key":Ljava/lang/String;
    if-eqz v6, :cond_c0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 822
    const-string v1, "playlist"

    .line 823
    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 843
    :goto_5f
    if-eqz v0, :cond_87

    if-eqz v1, :cond_87

    .line 845
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 847
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 850
    .end local v2    # "listID":Ljava/lang/Object;
    :cond_87
    if-nez v2, :cond_8f

    if-eqz v7, :cond_8f

    .line 851
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 853
    :cond_8f
    if-eqz v2, :cond_ea

    .line 855
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    .line 857
    const/4 v8, 0x3

    iput v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 865
    :goto_9a
    const-string v8, "ExInterfaceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent.ACTION_VIEW listID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSortType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 825
    .restart local v2    # "listID":Ljava/lang/Object;
    :cond_c0
    if-eqz v6, :cond_cf

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 827
    const-string v1, "album"

    .line 828
    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_5f

    .line 830
    :cond_cf
    if-eqz v6, :cond_de

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 832
    const-string v1, "keywords"

    .line 833
    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_5f

    .line 837
    :cond_de
    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v8, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 839
    invoke-static {p0, v11}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 840
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto/16 :goto_5f

    .line 861
    .end local v2    # "listID":Ljava/lang/Object;
    :cond_ea
    invoke-static {p0, v11}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 862
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_9a
.end method

.method private loadIntentShortcut(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 717
    const-string v3, "ExInterfaceActivity"

    const-string v4, "loadIntentShortcut()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v3, "player_if_category_type"

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 720
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    .line 721
    const-string v3, "player_if_shortcut_playlist_id"

    const/16 v4, -0x63

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 722
    .local v2, "playlistID":I
    const-string v3, "player_if_shortcut_playlist_added_time"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "playlistAddedTime":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistAddedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "playlistAddedTimeOrigin":Ljava/lang/String;
    const-string v3, "ExInterfaceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->Category:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v3, "ExInterfaceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->playlistID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    int-to-long v6, v2

    invoke-static {v5, p0, v6, v7}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v3, "ExInterfaceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->TimeAdded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TimeOrigin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    if-nez v0, :cond_9b

    if-eqz v1, :cond_a3

    :cond_9b
    if-eqz v0, :cond_fe

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 733
    :cond_a3
    invoke-static {p0}, Lcom/pantech/app/music/utils/StorageUtils;->isMediaScanning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f4

    .line 735
    const/4 v3, 0x2

    iput v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 737
    const/16 v3, -0x64

    if-ne v2, v3, :cond_b9

    .line 739
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 740
    const-string v3, ""

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    .line 781
    :goto_b8
    return-void

    .line 742
    :cond_b9
    const/4 v3, -0x3

    if-ne v2, v3, :cond_c5

    .line 744
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 745
    const-string v3, ""

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    goto :goto_b8

    .line 747
    :cond_c5
    const/4 v3, -0x4

    if-ne v2, v3, :cond_d1

    .line 749
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 750
    const-string v3, ""

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    goto :goto_b8

    .line 752
    :cond_d1
    const/4 v3, -0x5

    if-ne v2, v3, :cond_dd

    .line 754
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 755
    const-string v3, ""

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    goto :goto_b8

    .line 757
    :cond_dd
    const/4 v3, -0x6

    if-ne v2, v3, :cond_e9

    .line 759
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 760
    const-string v3, ""

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    goto :goto_b8

    .line 764
    :cond_e9
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 765
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    goto :goto_b8

    .line 770
    :cond_f4
    const v3, 0x7f080134

    invoke-static {p0, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 771
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_b8

    .line 776
    :cond_fe
    const v3, 0x7f080138

    invoke-static {p0, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 777
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_b8
.end method

.method private loadIntentVoiceAction(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 576
    const-string v10, "method"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "method":Ljava/lang/String;
    const-string v10, "category"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "category":Ljava/lang/String;
    const-string v10, "queryString"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 580
    .local v8, "queryString":Ljava/lang/String;
    const-string v10, "VMusicInterfaceTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Interface Action Sky Music View Intent [method: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " /category: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/queryString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v6, "pause":Landroid/content/Intent;
    const-string v10, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v10, "command"

    const-string v11, "pause"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 591
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_77

    const-string v10, "playAll"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 593
    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 594
    const/4 v10, 0x1

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 596
    const-string v10, "VMusicInterfaceTag"

    const-string v11, "Interface, Playall"

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :goto_76
    return-void

    .line 598
    :cond_77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_94

    const-string v10, "playPlaylist"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    .line 600
    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 601
    const/4 v10, 0x1

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 603
    const-string v10, "VMusicInterfaceTag"

    const-string v11, "Interface, Play Playlist"

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 605
    :cond_94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_208

    const-string v10, "searchPlay"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_208

    .line 607
    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 609
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1fd

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1fd

    .line 611
    const/4 v10, 0x1

    new-instance v11, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v11}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {p0, v10, v11}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v10

    if-nez v10, :cond_c8

    .line 613
    const v10, 0x7f080138

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    .line 614
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_76

    .line 618
    :cond_c8
    const/4 v10, 0x1

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 625
    invoke-static {v8}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    .line 628
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_102

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "categories":[Ljava/lang/String;
    :goto_e5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_eb
    array-length v10, v0

    if-ge v3, v10, :cond_106

    .line 633
    aget-object v10, v0, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ff

    .line 635
    aget-object v10, v0, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_ff
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 629
    .end local v0    # "categories":[Ljava/lang/String;
    .end local v2    # "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_102
    const/4 v10, 0x0

    new-array v0, v10, [Ljava/lang/String;

    goto :goto_e5

    .line 639
    .restart local v0    # "categories":[Ljava/lang/String;
    .restart local v2    # "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :cond_106
    const-string v10, "VMusicInterfaceTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "categories:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_126
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 643
    .local v9, "splitedCategory":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_172

    const-string v10, "playlist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_172

    .line 645
    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 646
    const/4 v10, 0x1

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    .line 647
    const/4 v10, 0x4

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    .line 679
    .end local v9    # "splitedCategory":Ljava/lang/String;
    :cond_14a
    :goto_14a
    const-string v10, "VMusicInterfaceTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCategoryType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mSearchMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_76

    .line 652
    .restart local v9    # "splitedCategory":Ljava/lang/String;
    :cond_172
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b3

    const-string v10, "all"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b3

    .line 654
    const/4 v10, 0x7

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    .line 676
    :goto_183
    const-string v10, "VMusicInterfaceTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Interface Search Play: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " category search title \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' And Play"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 656
    :cond_1b3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c8

    const-string v10, "artist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    .line 658
    iget v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    goto :goto_183

    .line 660
    :cond_1c8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1dd

    const-string v10, "album"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1dd

    .line 662
    iget v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    goto :goto_183

    .line 664
    :cond_1dd
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f2

    const-string v10, "title"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f2

    .line 667
    iget v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    or-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    goto :goto_183

    .line 671
    :cond_1f2
    const v10, 0x7f08012e

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    .line 672
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto/16 :goto_14a

    .line 684
    .end local v0    # "categories":[Ljava/lang/String;
    .end local v2    # "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "splitedCategory":Ljava/lang/String;
    :cond_1fd
    const v10, 0x7f08012e

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    .line 685
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto/16 :goto_76

    .line 688
    :cond_208
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_254

    const-string v10, "playCurrentSong"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_254

    .line 691
    const/4 v10, 0x1

    new-instance v11, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v11}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {p0, v10, v11}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v10

    if-lez v10, :cond_24d

    .line 693
    sget-object v10, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v11, 0x0

    const v12, 0x10008000

    invoke-static {p0, v10, v11, v12}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZI)V

    .line 695
    const-string v10, "VMusicInterfaceTag"

    const-string v11, "Interface, Play current Queue"

    invoke-static {v10, v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    .local v7, "playCurrentSong":Landroid/content/Intent;
    const-string v10, "com.android.music.musicservicecommand"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v10, "command"

    const-string v11, "play"

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 707
    .end local v7    # "playCurrentSong":Landroid/content/Intent;
    :goto_248
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto/16 :goto_76

    .line 704
    :cond_24d
    const v10, 0x7f080138

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    goto :goto_248

    .line 711
    :cond_254
    const v10, 0x7f08012e

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    .line 712
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto/16 :goto_76
.end method

.method private setTabSelectDialog(Landroid/database/Cursor;)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 888
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v4, "mListDialog":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080061

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 891
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v5, "playlistItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_35

    .line 895
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 896
    const-string v7, "_id"

    invoke-static {p1, v7}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 897
    .local v2, "id":I
    const-string v7, "name"

    invoke-static {p1, v7}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, "title":Ljava/lang/String;
    new-instance v7, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;

    invoke-direct {v7, p0, v2, v6}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;ILjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 902
    .end local v2    # "id":I
    .end local v6    # "title":Ljava/lang/String;
    :cond_35
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 904
    .local v3, "listView":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v0, p0, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 905
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 907
    new-instance v7, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;

    invoke-direct {v7, p0, v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 921
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 923
    new-instance v7, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$8;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$8;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 932
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 933
    return-void
.end method


# virtual methods
.method public askPopupList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "_popupListID"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 529
    :cond_9
    new-instance v4, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/utils/ListUtils;->showSkyAskPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;Ljava/lang/String;Z)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 565
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 566
    .local v7, "button1":Landroid/widget/Button;
    if-eqz v7, :cond_26

    invoke-virtual {v7, p4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 568
    :cond_26
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 569
    .local v8, "button2":Landroid/widget/Button;
    if-eqz v8, :cond_32

    invoke-virtual {v8, p4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 571
    :cond_32
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mAskPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    const-string v2, "ExInterfaceActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 354
    invoke-static {p0}, Lcom/pantech/app/music/utils/StorageUtils;->isMediaScanning(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_19

    .line 355
    const v2, 0x7f080133

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showPopupAndFinsih(I)V

    .line 396
    :goto_18
    return-void

    .line 359
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_35

    .line 361
    const-string v2, "com.pantech.app.music.action.view"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 362
    const-string v2, "ExInterfaceActivity"

    const-string v3, "->Start With ACTION_SKYMUSIC_VIEW"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->loadIntentVoiceAction(Landroid/content/Intent;)V

    .line 377
    :cond_35
    :goto_35
    new-instance v2, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    const/16 v3, 0x400

    invoke-direct {v2, p0, v3, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .line 378
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->register()V

    .line 380
    iput-boolean v6, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->isRegisteredBroadCast:Z

    .line 383
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v2, :cond_4e

    .line 384
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 385
    :cond_4e
    const v2, 0x7f080188

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080181

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Lcom/pantech/app/music/utils/ListUtils;->ProgressLoadingDialogStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 386
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    new-instance v3, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$3;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkyProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 395
    invoke-static {p0, p0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    goto :goto_18

    .line 366
    :cond_74
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 367
    const-string v2, "player_if_from_shortcut"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 368
    .local v1, "isShortCut":Z
    const-string v2, "ExInterfaceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->Start With ACTION_VIEW(shortcut:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    if-eqz v1, :cond_aa

    .line 370
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->loadIntentShortcut(Landroid/content/Intent;)V

    goto :goto_35

    .line 372
    :cond_aa
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->loadIntentActionView(Landroid/content/Intent;)V

    goto :goto_35
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 415
    const-string v0, "ExInterfaceActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    if-eqz v0, :cond_10

    .line 418
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 422
    iget v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 424
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 439
    :cond_23
    :goto_23
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 440
    return-void

    .line 426
    :cond_27
    iget v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 428
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_23

    .line 430
    :cond_36
    iget v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 432
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_23

    .line 434
    :cond_45
    iget v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 436
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_23
.end method

.method public onForceFinish(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "mast"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    .line 945
    return-void
.end method

.method public onMediaScanner(ZLandroid/content/Intent;)V
    .registers 3
    .param p1, "start"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    .line 939
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 445
    const-string v1, "ExInterfaceActivity"

    const-string v2, "onServiceConnected()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eqz v1, :cond_21

    .line 451
    const-string v1, "com.pantech.app.music.extras.category"

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    :cond_21
    const-string v1, "com.pantech.app.music.extras.listID"

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 456
    const-string v1, "com.pantech.app.music.extras.searchMode"

    iget v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mSearchMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mMusicItemLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 473
    :cond_3f
    :goto_3f
    new-instance v1, Lcom/pantech/app/music/list/module/PlayInterface;

    new-instance v2, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    invoke-direct {v1, v2}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

    .line 474
    return-void

    .line 460
    :cond_4e
    iget v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5f

    .line 462
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCursorLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_3f

    .line 464
    :cond_5f
    iget v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_70

    .line 466
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mMusicItemLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_3f

    .line 468
    :cond_70
    iget v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mInterfaceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3f

    .line 470
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mMusicItemLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_3f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 480
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 401
    const-string v0, "ExInterfaceActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 403
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 408
    const-string v0, "ExInterfaceActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 410
    return-void
.end method

.method protected showPopupAndFinsih(I)V
    .registers 8
    .param p1, "resID"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 500
    :cond_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x159

    const/4 v3, 0x2

    new-instance v4, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$4;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 518
    return-void
.end method

.method protected showToast(I)V
    .registers 2
    .param p1, "resid"    # I

    .prologue
    .line 487
    invoke-static {p0, p1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 488
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {p0, p1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 493
    return-void
.end method
