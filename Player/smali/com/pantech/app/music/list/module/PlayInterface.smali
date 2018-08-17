.class public Lcom/pantech/app/music/list/module/PlayInterface;
.super Ljava/lang/Object;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/PlayInterface$2;,
        Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;,
        Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;,
        Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;,
        Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;,
        Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;,
        Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;,
        Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;,
        Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;,
        Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;,
        Lcom/pantech/app/music/list/module/PlayInterface$PlayType;
    }
.end annotation


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mHandler:Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

.field mMakePlayInfoCompleteListener:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V
    .registers 3
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mHandler:Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

    .line 295
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/PlayInterface$1;-><init>(Lcom/pantech/app/music/list/module/PlayInterface;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mMakePlayInfoCompleteListener:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .line 96
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 98
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;-><init>(Lcom/pantech/app/music/list/module/PlayInterface;Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mHandler:Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

    .line 99
    return-void
.end method

.method public static playPlayer(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;[Lcom/pantech/app/music/list/MusicItemInfo;II)Z
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;
    .param p3, "musiclist"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p4, "startPosition"    # I
    .param p5, "addedFlag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    if-nez p1, :cond_a

    .line 189
    const-string v3, "sService is Null"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 242
    :goto_9
    return v2

    .line 193
    :cond_a
    if-eqz p3, :cond_85

    array-length v4, p3

    if-lez v4, :cond_85

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runPlayerPlayback() size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pageInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 197
    sget-object v4, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v5, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_8c

    .line 222
    iget-boolean v4, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartPlayer:Z

    if-eqz v4, :cond_61

    aget-object v4, p3, p4

    iget-object v4, v4, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-static {v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 223
    invoke-static {}, Lcom/pantech/app/music/drm/MusicDrm;->getInstance()Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/pantech/app/music/drm/MusicDrm;->setIgnoreErrorPopup(Z)V

    .line 225
    :cond_61
    invoke-static {p0, p1, p3, p4}, Lcom/pantech/app/music/common/MusicUtils;->playAll(Landroid/content/Context;Lcom/pantech/app/music/service/IMusicPlaybackService;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 227
    const-string v4, "devPlayWithPlaybackTab"

    invoke-static {p0, v4, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    .local v1, "startWithPlayback":Z
    iget-boolean v4, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartPlayer:Z

    if-nez v4, :cond_70

    if-eqz v1, :cond_75

    .line 231
    :cond_70
    iget-object v4, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCallerType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-static {p0, v4, v2, p5}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZI)V

    .end local v1    # "startWithPlayback":Z
    :cond_75
    :goto_75
    move v2, v3

    .line 236
    goto :goto_9

    .line 202
    :pswitch_77
    if-eqz p1, :cond_75

    .line 204
    :try_start_79
    invoke-interface {p1, p3, p4}, Lcom/pantech/app/music/service/IMusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 205
    invoke-interface {p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->play()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7f} :catch_80

    goto :goto_75

    .line 208
    :catch_80
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_85
    const-string v3, "playing List is Null"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 197
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_77
    .end packed-switch
.end method

.method public static playPlayer(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musiclist"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "startPosition"    # I

    .prologue
    .line 181
    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/common/MusicUtils;->playAll(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public static showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p2, "showNowplaying"    # Z
    .param p3, "addedFlag"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZILandroid/net/Uri;)V

    .line 159
    return-void
.end method

.method public static showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZILandroid/net/Uri;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p2, "showNowplaying"    # Z
    .param p3, "addedFlag"    # I
    .param p4, "data"    # Landroid/net/Uri;

    .prologue
    const/high16 v3, 0x4000000

    .line 164
    if-eqz p4, :cond_2f

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.player.SMARTBEAM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    or-int v2, v3, p3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromlist"

    invoke-virtual {p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->fromList()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v1, "callerType"

    invoke-virtual {p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "shownowplaying"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    :goto_2b
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 172
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    or-int v2, v3, p3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "fromlist"

    invoke-virtual {p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->fromList()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v1, "callerType"

    invoke-virtual {p1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "shownowplaying"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2b
.end method


# virtual methods
.method public playQueryArtistAlbumSong(Lcom/pantech/app/music/list/PageInfoType;IIZILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V
    .registers 22
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "groupID"    # I
    .param p3, "albumID"    # I
    .param p4, "playback"    # Z
    .param p5, "position"    # I
    .param p6, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    .prologue
    .line 146
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/PageInfoType;->clone(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    .line 151
    .local v3, "newPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/PageInfoType;->setTargetPlaylistID(J)V

    .line 153
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v14

    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    sget-object v9, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_QUERY_CHILD:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    const/4 v10, 0x0

    move/from16 v6, p5

    move/from16 v8, p4

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;ILcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZLcom/pantech/app/music/list/module/PlayInterface$PlayType;ILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    iget-object v4, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mMakePlayInfoCompleteListener:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    invoke-direct {v13, v14, v2, v4}, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public playSelectedSong(Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V
    .registers 20
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p4, "playback"    # Z
    .param p5, "intentFlag"    # I
    .param p6, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;",
            "ZI",
            "Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;

    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_SELECTED:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    move-object v1, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;ILcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZLcom/pantech/app/music/list/module/PlayInterface$PlayType;ILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mMakePlayInfoCompleteListener:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    invoke-direct {v11, v12, v0, p2, v1}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Ljava/util/Collection;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MakePlayInfoForSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V
    .registers 23
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "parentCursor"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "callerType"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .param p5, "playback"    # Z
    .param p6, "position"    # I
    .param p7, "intentFlag"    # I
    .param p8, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    .prologue
    .line 119
    if-nez p3, :cond_7

    .line 120
    new-instance p3, Ljava/lang/Object;

    .end local p3    # "cursorLock":Ljava/lang/Object;
    invoke-direct/range {p3 .. p3}, Ljava/lang/Object;-><init>()V

    .line 122
    .restart local p3    # "cursorLock":Ljava/lang/Object;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaySong playback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 126
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v13

    new-instance v1, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    sget-object v8, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;ILcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZLcom/pantech/app/music/list/module/PlayInterface$PlayType;ILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mMakePlayInfoCompleteListener:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    invoke-direct {v12, v13, v1, v2}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MakePlayInfoForSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v12, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface;->mHandler:Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->terminate()V

    .line 104
    return-void
.end method
