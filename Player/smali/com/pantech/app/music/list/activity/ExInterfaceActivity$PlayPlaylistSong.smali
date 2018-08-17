.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayPlaylistSong"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mPlaylistID:I

.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/app/Activity;I)V
    .registers 5
    .param p2, "activiy"    # Landroid/app/Activity;
    .param p3, "playlistID"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mPlaylistID:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    .line 314
    iput p3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mPlaylistID:I

    .line 315
    iput-object p2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    .line 316
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 321
    const-string v1, "ExInterfaceActivity"

    const-string v2, "PlayPlaylistSong run()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v3, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget v5, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mPlaylistID:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v11

    .line 324
    .local v11, "songCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1, v2, v11, v12}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v8

    .line 326
    .local v8, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v11, :cond_2a

    .line 327
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2a
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 331
    .local v0, "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v6, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    new-instance v7, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;Z)V

    move v9, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/pantech/app/music/list/module/PlayInterface;->playPlayer(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;[Lcom/pantech/app/music/list/MusicItemInfo;II)Z

    .line 335
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    iput-object v12, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->mActivity:Landroid/app/Activity;

    .line 346
    return-void
.end method
