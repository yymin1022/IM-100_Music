.class public abstract Lcom/pantech/app/music/list/activity/BaseListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseListActivity.java"

# interfaces
.implements Lcom/pantech/app/music/list/activity/IListActivity;
.implements Lcom/pantech/app/music/utils/LibraryUtils;
.implements Lcom/pantech/app/music/list/listener/IPlayStatusCallback;
.implements Lcom/pantech/app/music/list/listener/IForceFinishListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseListActivity"

.field protected static mISFromSetting:Z

.field protected static mUPlusSessionID:Ljava/lang/String;


# instance fields
.field protected isActivityStarted:Z

.field private isBroadcastRegistered:Z

.field protected mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

.field private mCloudListener:Landroid/content/BroadcastReceiver;

.field private mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

.field private mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field mFromWidgetStartPending:Z

.field mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

.field mMenuTable:Lcom/pantech/app/music/list/component/MenuTable;

.field protected mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field protected mQuickMenuInfo:Lcom/pantech/app/music/list/component/MenuTable;

.field mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mISFromSetting:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mFromWidgetStartPending:Z

    .line 63
    new-instance v0, Lcom/pantech/app/music/list/component/MenuTable;

    invoke-direct {v0}, Lcom/pantech/app/music/list/component/MenuTable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mMenuTable:Lcom/pantech/app/music/list/component/MenuTable;

    .line 69
    iput-boolean v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isBroadcastRegistered:Z

    .line 70
    iput-boolean v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isActivityStarted:Z

    .line 72
    iput-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 74
    iput-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 77
    iput-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    .line 85
    new-instance v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/activity/BaseListActivity$1;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudListener:Landroid/content/BroadcastReceiver;

    .line 737
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/activity/BaseListActivity;)Lcom/pantech/app/music/cloud/CloudSession;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/BaseListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    return-object v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/list/activity/BaseListActivity;Lcom/pantech/app/music/cloud/CloudSession;)Lcom/pantech/app/music/cloud/CloudSession;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/BaseListActivity;
    .param p1, "x1"    # Lcom/pantech/app/music/cloud/CloudSession;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    return-object p1
.end method

.method private loadIntentAndPreference()V
    .registers 24

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 556
    .local v19, "intent":Landroid/content/Intent;
    if-nez v19, :cond_7

    .line 659
    :cond_6
    :goto_6
    return-void

    .line 557
    :cond_7
    const-string v2, "BaseListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIntentAndPreference() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 560
    new-instance v2, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v6, 0x7

    const-string v7, ""

    invoke-direct/range {v2 .. v7}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    goto :goto_6

    .line 562
    :cond_4a
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 563
    const-string v2, "query"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 564
    .local v20, "queryString":Ljava/lang/String;
    new-instance v2, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v6, 0x7

    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 571
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.pantech.app.music.action.FINISH_LIST_SEARCH_RESULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 584
    .end local v20    # "queryString":Ljava/lang/String;
    :cond_7f
    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 585
    const/16 v21, 0x7

    .line 586
    .local v21, "searchMode":I
    const-string v7, ""

    .line 587
    .local v7, "listID":Ljava/lang/String;
    const-string v2, "query"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 588
    .restart local v20    # "queryString":Ljava/lang/String;
    const-string v2, "android.intent.extra.artist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 589
    .local v15, "artist":Ljava/lang/String;
    const-string v2, "android.intent.extra.title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 590
    .local v22, "title":Ljava/lang/String;
    const-string v2, "android.intent.extra.focus"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 591
    .local v17, "focus":Ljava/lang/String;
    const-string v2, "android.intent.extra.album"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 593
    .local v14, "album":Ljava/lang/String;
    const-string v2, "extras.searchFromPlayback"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 594
    .local v18, "fromPlayback":Z
    const-string v2, "extras.searchCntsType"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 595
    .local v16, "cntsType":I
    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 597
    if-eqz v18, :cond_172

    .line 598
    if-eqz v15, :cond_d7

    .line 599
    invoke-static {v15}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 600
    const/16 v21, 0x4

    .line 625
    :cond_d7
    :goto_d7
    const-string v2, "BaseListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## mime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / artist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / song = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / album = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "BaseListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## queryString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / queryString trim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / mSearchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-eqz v18, :cond_1b0

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_1b0

    .line 631
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 637
    .local v3, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :goto_156
    new-instance v2, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v6, 0x7

    invoke-direct/range {v2 .. v7}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 640
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.pantech.app.music.action.FINISH_LIST_SEARCH_RESULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 604
    .end local v3    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_172
    if-eqz v17, :cond_d7

    .line 605
    const-string v2, "audio/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    if-eqz v22, :cond_188

    .line 606
    invoke-static/range {v22 .. v22}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 607
    const/16 v21, 0x1

    goto/16 :goto_d7

    .line 609
    :cond_188
    const-string v2, "vnd.android.cursor.item/album"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 610
    if-eqz v14, :cond_d7

    .line 612
    invoke-static {v14}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 613
    const/16 v21, 0x2

    goto/16 :goto_d7

    .line 616
    :cond_19c
    const-string v2, "vnd.android.cursor.item/artist"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 617
    if-eqz v15, :cond_d7

    .line 618
    invoke-static {v15}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 619
    const/16 v21, 0x4

    goto/16 :goto_d7

    .line 634
    :cond_1b0
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .restart local v3    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    goto :goto_156

    .line 643
    .end local v3    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v7    # "listID":Ljava/lang/String;
    .end local v14    # "album":Ljava/lang/String;
    .end local v15    # "artist":Ljava/lang/String;
    .end local v16    # "cntsType":I
    .end local v17    # "focus":Ljava/lang/String;
    .end local v18    # "fromPlayback":Z
    .end local v20    # "queryString":Ljava/lang/String;
    .end local v21    # "searchMode":I
    .end local v22    # "title":Ljava/lang/String;
    :cond_1b3
    const-string v2, "com.pantech.app.music.preference.category"

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    .line 644
    .restart local v3    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    const-string v2, "com.pantech.app.music.extras.category"

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    .line 646
    new-instance v8, Lcom/pantech/app/music/list/PageInfoType;

    const-string v2, "com.pantech.app.music.extras.editMode"

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v10

    const-string v2, "com.pantech.app.music.extras.pickerMode"

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v11

    const-string v2, "com.pantech.app.music.extras.searchMode"

    const/4 v4, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v2, "com.pantech.app.music.extras.listID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v4, "com.pantech.app.music.extras.targetPlaylistID"

    const-wide/16 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/list/PageInfoType;->setTargetPlaylistID(J)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v4, "com.pantech.app.music.extras.targetPlaylistName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/PageInfoType;->setTargetPlaylistName(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v4, "com.pantech.app.music.extras.targetCategory"

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/PageInfoType;->setTargetCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 728
    return-object p0
.end method

.method public getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 719
    monitor-enter p0

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v0, :cond_9

    .line 721
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    monitor-exit p0

    .line 723
    :goto_8
    return-object v0

    .line 722
    :cond_9
    monitor-exit p0

    .line 723
    const/4 v0, 0x0

    goto :goto_8

    .line 722
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected initUPlusBox()V
    .registers 3

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/cloud/SessionFactory;->getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    .line 708
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v0}, Lcom/pantech/app/music/cloud/CloudSession;->isValidSession()Z

    move-result v0

    if-nez v0, :cond_18

    .line 710
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v0}, Lcom/pantech/app/music/cloud/CloudSession;->refreshSession()V

    .line 712
    :cond_18
    return-void
.end method

.method public isCurrentFragment(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 316
    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    .line 318
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 319
    .local v0, "IFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    if-eqz v0, :cond_f

    .line 321
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->requestQueryList(I)V

    .line 324
    .end local v0    # "IFragment":Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->setScreenLayout(I)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 181
    invoke-static {p0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->allocInstance(Landroid/content/Context;)V

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.action.FINISH_WIDGETLIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->setVolumeControlStream(I)V

    .line 187
    new-instance v2, Lcom/pantech/app/music/list/component/MenuTable;

    invoke-direct {v2}, Lcom/pantech/app/music/list/component/MenuTable;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mQuickMenuInfo:Lcom/pantech/app/music/list/component/MenuTable;

    .line 189
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->loadIntentAndPreference()V

    .line 192
    const/16 v0, 0x1181

    .line 196
    .local v0, "mask":I
    new-instance v2, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-direct {v2, p0, v0, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .line 197
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->register()V

    .line 199
    iput-boolean v5, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isBroadcastRegistered:Z

    .line 209
    invoke-static {}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "status":Ljava/lang/String;
    const-string v2, "BaseListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external storage state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 213
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_67

    .line 214
    const-string v2, "Environment.MEDIA_REMOVED."

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 215
    const v2, 0x7f08013a

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->showPopupAndFinsih(I)V

    .line 226
    :cond_63
    :goto_63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    return-void

    .line 217
    :cond_67
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 218
    const-string v2, "Environment.MEDIA_SHARED."

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 219
    const v2, 0x7f080125

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->showPopupAndFinsih(I)V

    goto :goto_63

    .line 222
    :cond_7b
    const-string v2, "R.string.popupNotAccessibleSDCard."

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 223
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/BaseListActivity;->showPopupAndFinsih(I)V

    goto :goto_63
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 278
    :cond_a
    iget-boolean v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isBroadcastRegistered:Z

    if-eqz v0, :cond_21

    .line 280
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mBroadcastRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 282
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 283
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mCloudListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ListUtils;->unregisterCloudListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 286
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isBroadcastRegistered:Z

    .line 289
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    if-eqz v0, :cond_2a

    .line 290
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    :cond_2a
    iput-object v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 294
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->clearInstance()V

    .line 297
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mQuickMenuInfo:Lcom/pantech/app/music/list/component/MenuTable;

    if-eqz v0, :cond_38

    .line 298
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mQuickMenuInfo:Lcom/pantech/app/music/list/component/MenuTable;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/MenuTable;->clear()V

    .line 300
    :cond_38
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 301
    return-void
.end method

.method public onForceFinish(ILandroid/content/Intent;)V
    .registers 6
    .param p1, "mast"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    sparse-switch p1, :sswitch_data_30

    .line 372
    :cond_3
    :goto_3
    return-void

    .line 357
    :sswitch_4
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->finish()V

    goto :goto_3

    .line 361
    :sswitch_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 363
    .local v0, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->finish()V

    goto :goto_3

    .line 353
    :sswitch_data_30
    .sparse-switch
        0x40 -> :sswitch_4
        0x80 -> :sswitch_4
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->invalidateOptionsMenu()V

    .line 335
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPlayingQueueChanged(I)V
    .registers 4
    .param p1, "queueSize"    # I

    .prologue
    .line 348
    const-string v0, "BaseListActivity"

    const-string v1, "onPlayingQueueChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 340
    const-string v0, "BaseListActivity"

    const-string v1, "onPlayingStatusChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v0, :cond_10

    .line 343
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/library/IListMiniPlayer;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 344
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isActivityStarted:Z

    .line 235
    iget-boolean v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mFromWidgetStartPending:Z

    if-nez v0, :cond_24

    .line 238
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getCategoryPosition(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 240
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/BaseListActivity;->initUPlusBox()V

    .line 243
    :cond_24
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 244
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 249
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 250
    .local v0, "searchManager":Landroid/app/SearchManager;
    if-eqz v0, :cond_d

    .line 251
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 269
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->isActivityStarted:Z

    .line 270
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 271
    return-void
.end method

.method protected showPopupAndFinsih(I)V
    .registers 8
    .param p1, "resID"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 664
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 666
    :cond_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x159

    const/4 v3, 0x2

    new-instance v4, Lcom/pantech/app/music/list/activity/BaseListActivity$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/activity/BaseListActivity$2;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 684
    return-void
.end method

.method protected showPopupAndNothing(I)V
    .registers 8
    .param p1, "resID"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 689
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 691
    :cond_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15b

    const/4 v3, 0x2

    new-instance v4, Lcom/pantech/app/music/list/activity/BaseListActivity$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/activity/BaseListActivity$3;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/BaseListActivity;->mDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 702
    return-void
.end method

.method protected abstract triggerForCloud(Ljava/lang/Object;I)V
.end method
