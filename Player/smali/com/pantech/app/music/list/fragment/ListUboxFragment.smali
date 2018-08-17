.class public Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.super Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.source "ListUboxFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;,
        Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;,
        Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;,
        Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;,
        Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;
    }
.end annotation


# static fields
.field private static final CHK_DIALOG_CALLER_NONE:I = -0x1

.field private static final CHK_DIALOG_CALLER_PLAYALLSONG:I = 0x3

.field private static final CHK_DIALOG_CALLER_PLAYSONG:I = 0x2

.field private static final CHK_DIALOG_CALLER_REFREASH:I = 0x1

.field private static final CHK_DIALOG_CALLER_RESUME:I = 0x4

.field private static final CHK_DIALOG_CALLER_START_LIST:I = 0x0

.field private static final CLOUD_TYPE_UPLUSBOX:I = 0x1

.field private static final DIALOG_CHECKBOX:I = 0x1

.field private static final DIALOG_INFO:I = 0x0

.field private static final QUERY_FEED_DONE:I = 0x1


# instance fields
.field private final UBOX_DEBUG:Z

.field mBackgroundUpdated:Z

.field mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

.field mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

.field private mDialogCallerType:I

.field private mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field private mLayoutUPlusStoreBtn:Landroid/widget/LinearLayout;

.field private mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

.field protected mListView:Landroid/widget/ListView;

.field private mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

.field mLoadingPopup:Z

.field mNoContentPage:Landroid/view/View;

.field mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

.field mResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

.field private mUPlusQueryType:I

.field mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

.field protected mUplusSessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->UBOX_DEBUG:Z

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    .line 676
    iput v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    .line 677
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 679
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 680
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 682
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtn:Landroid/widget/LinearLayout;

    .line 683
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    .line 684
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    .line 686
    iput-boolean v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingPopup:Z

    .line 1195
    new-instance v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .line 1425
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->processUPlusBoxRequest()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V
    .registers 6
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showDataNetworkDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Lcom/pantech/multimedia/data/FeedData;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # Lcom/pantech/multimedia/data/FeedData;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->parseContents(Lcom/pantech/multimedia/data/FeedData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getCloudReqStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->queryProcessForRapid()V

    return-void
.end method

.method static synthetic access$1600(Lcom/pantech/app/music/list/fragment/ListUboxFragment;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->errorProcedure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->playSong()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->playAllSong()V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->requestUPlusBoxRequestSongs()V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownLoadingDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setCloudReqStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->errorSendMessage(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownInfoDialog()V

    return-void
.end method

.method private checkTimeoutAndReset(I)V
    .registers 6
    .param p1, "reqType"    # I

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1123
    .local v0, "mainHandlerMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1124
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    return-void
.end method

.method private drawNoContentsPage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "icon"    # I
    .param p2, "main"    # Ljava/lang/String;
    .param p3, "sub"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, "txtNoContentPage":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 465
    .local v3, "txtNoContentPageIcon":Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 466
    .local v4, "txtNoContentPageSubText":Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 467
    .local v5, "txtNoContentPageText":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 469
    .local v0, "btnImportContents":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_f

    .line 528
    :cond_e
    :goto_e
    return-void

    .line 476
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1000b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "txtNoContentPage":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 478
    .restart local v2    # "txtNoContentPage":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 498
    .local v1, "goneLayout":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    if-eqz v6, :cond_5f

    if-eqz v1, :cond_5f

    .line 500
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    const v7, 0x7f1000bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "txtNoContentPageSubText":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 501
    .restart local v4    # "txtNoContentPageSubText":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    const v7, 0x7f1000bb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "txtNoContentPageText":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 502
    .restart local v5    # "txtNoContentPageText":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    const v7, 0x7f1000ba

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "txtNoContentPageIcon":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 503
    .restart local v3    # "txtNoContentPageIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    const v7, 0x7f1000bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnImportContents":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 505
    .restart local v0    # "btnImportContents":Landroid/widget/Button;
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 506
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    if-eqz v0, :cond_5f

    .line 510
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    :cond_5f
    const v6, 0x7f02015c

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    if-eqz p2, :cond_6d

    .line 519
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 523
    :cond_6d
    if-eqz p3, :cond_e

    goto :goto_e
.end method

.method private errorProcedure(ILjava/lang/String;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1274
    :goto_8
    :sswitch_8
    return-void

    .line 1240
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownInfoDialog()V

    .line 1241
    sparse-switch p1, :sswitch_data_5e

    goto :goto_8

    .line 1244
    :sswitch_10
    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    goto :goto_8

    .line 1249
    :sswitch_1e
    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 1250
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setUPlusBoxSessionIDReset()V

    .line 1253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 1255
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    goto :goto_8

    .line 1260
    :sswitch_42
    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    goto :goto_8

    .line 1267
    :sswitch_50
    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    goto :goto_8

    .line 1241
    :sswitch_data_5e
    .sparse-switch
        0x65 -> :sswitch_10
        0x66 -> :sswitch_8
        0x3e8 -> :sswitch_42
        0x7d1 -> :sswitch_1e
        0x7e4 -> :sswitch_50
        0x7e5 -> :sswitch_50
        0x7e6 -> :sswitch_50
        0x7e7 -> :sswitch_50
        0x270f -> :sswitch_42
    .end sparse-switch
.end method

.method private errorSendMessage(Ljava/lang/Object;I)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "msg"    # I

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownLoadingDialog()V

    .line 1278
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setCloudReqStatus(I)V

    .line 1279
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1280
    .local v0, "mainHandlerMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1281
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1282
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1283
    return-void
.end method

.method private getCloudReqStatus()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1185
    const/4 v1, 0x0

    .line 1186
    .local v1, "status":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "cloud_reqstatus_pref"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1187
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "key_cloud_sessionid_req_status"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1192
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "status":I
    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18
.end method

.method private getUPlusBoxSessionID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v0}, Lcom/pantech/app/music/cloud/CloudSession;->getSession()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private isDBEmpty()Z
    .registers 6

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, ""

    new-instance v4, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v4}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v0

    .line 1391
    .local v0, "count":I
    if-nez v0, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isForeground()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 872
    const/4 v2, 0x0

    .line 873
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 874
    .local v1, "activitymanager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 875
    .local v4, "runningtaskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_25

    .line 876
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    .line 879
    :cond_25
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 880
    .local v3, "idx":I
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, "topActivityName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "activityName":Ljava/lang/String;
    const-string v6, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " topActivityName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v6, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " activityName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    move v6, v7

    .line 890
    :goto_74
    return v6

    :cond_75
    move v6, v8

    goto :goto_74
.end method

.method private parseContents(Lcom/pantech/multimedia/data/FeedData;)V
    .registers 4
    .param p1, "data"    # Lcom/pantech/multimedia/data/FeedData;

    .prologue
    .line 1299
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1305
    :goto_11
    return-void

    .line 1302
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->parseUPlusBoxContents(Lcom/pantech/multimedia/data/FeedData;)V

    goto :goto_11

    .line 1299
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method private parseUPlusBoxContents(Lcom/pantech/multimedia/data/FeedData;)V
    .registers 5
    .param p1, "data"    # Lcom/pantech/multimedia/data/FeedData;

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1295
    :goto_6
    return-void

    .line 1290
    :cond_7
    const/4 v0, 0x0

    .line 1291
    .local v0, "runnableTask":Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;
    new-instance v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;

    .end local v0    # "runnableTask":Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Landroid/content/Context;Lcom/pantech/multimedia/data/FeedData;)V

    .line 1293
    .restart local v0    # "runnableTask":Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "UplusDataBoxDatabaseTask"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1294
    .local v1, "th":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method private playAllSong()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 1420
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 1422
    .local v0, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    sget-object v4, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    .line 1423
    return-void
.end method

.method private playSong()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 1396
    const/4 v5, 0x0

    .line 1397
    .local v5, "launchPlayback":Z
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1416
    :goto_8
    return-void

    .line 1399
    :cond_9
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getCurrentPlaying(Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v9

    .line 1401
    .local v9, "itemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-ne v1, v8, :cond_25

    .line 1402
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayCursor:Landroid/database/Cursor;

    .line 1405
    :cond_25
    if-eqz v9, :cond_38

    iget-wide v2, v9, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget-object v4, v4, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayCursor:Landroid/database/Cursor;

    invoke-static {v1, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_38

    .line 1407
    const/4 v5, 0x1

    .line 1410
    :cond_38
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 1411
    :cond_41
    if-nez v5, :cond_53

    .line 1412
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080188

    const v3, 0x7f080181

    invoke-static {v1, v2, v3, v8}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 1414
    :cond_53
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 1415
    .local v0, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    sget-object v4, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget v6, v6, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;->mPlayPosition:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto :goto_8
.end method

.method private processUPlusBoxRequest()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1047
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getCloudReqStatus()I

    move-result v0

    .line 1051
    .local v0, "status":I
    if-ne v0, v1, :cond_b

    .line 1053
    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->checkTimeoutAndReset(I)V

    .line 1060
    :goto_a
    return-void

    .line 1057
    :cond_b
    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setCloudReqStatus(I)V

    .line 1059
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->requestUPlusBoxRequestSongs()V

    goto :goto_a
.end method

.method private queryProcessForRapid()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1087
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getCloudReqStatus()I

    move-result v0

    .line 1089
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1094
    :goto_8
    return-void

    .line 1092
    :cond_9
    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setCloudReqStatus(I)V

    .line 1093
    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->requetUPlusBoxLogin(I)V

    goto :goto_8
.end method

.method private requestUPlusBoxRequestSongs()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1064
    const/4 v3, 0x0

    .line 1065
    .local v3, "ubox":Lcom/pantech/multimedia/cloud/UPlusBox;
    new-instance v0, Lcom/pantech/multimedia/cloud/CloudCreator;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v8, v4}, Lcom/pantech/multimedia/cloud/CloudCreator;-><init>(ILandroid/content/Context;)V

    .line 1066
    .local v0, "creator":Lcom/pantech/multimedia/cloud/CloudCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/cloud/CloudCreator;->createCloud()Lcom/pantech/multimedia/cloud/CloudClient;

    move-result-object v3

    .end local v3    # "ubox":Lcom/pantech/multimedia/cloud/UPlusBox;
    check-cast v3, Lcom/pantech/multimedia/cloud/UPlusBox;

    .line 1067
    .restart local v3    # "ubox":Lcom/pantech/multimedia/cloud/UPlusBox;
    invoke-virtual {v3}, Lcom/pantech/multimedia/cloud/UPlusBox;->initCloud()Z

    .line 1068
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    invoke-virtual {v3, v4}, Lcom/pantech/multimedia/cloud/UPlusBox;->setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 1070
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v4, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1072
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showLoadingDialog()V

    .line 1075
    :cond_24
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "uplus_sessionid_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1076
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "key_uplus_current_dt"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "tempCurrentDT":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/pantech/multimedia/cloud/UPlusBox;->requestSongs(Ljava/lang/String;J)Ljava/lang/Object;

    .line 1079
    invoke-direct {p0, v8}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setCloudReqStatus(I)V

    .line 1082
    invoke-direct {p0, v8}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->checkTimeoutAndReset(I)V

    .line 1083
    return-void
.end method

.method private requetUPlusBoxLogin(I)V
    .registers 9
    .param p1, "reason"    # I

    .prologue
    const/4 v6, 0x2

    .line 1098
    const/4 v3, 0x0

    .line 1100
    .local v3, "ubox":Lcom/pantech/multimedia/cloud/UPlusBox;
    :try_start_2
    new-instance v1, Lcom/pantech/multimedia/cloud/CloudCreator;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/pantech/multimedia/cloud/CloudCreator;-><init>(ILandroid/content/Context;)V

    .line 1101
    .local v1, "creator":Lcom/pantech/multimedia/cloud/CloudCreator;
    invoke-virtual {v1}, Lcom/pantech/multimedia/cloud/CloudCreator;->createCloud()Lcom/pantech/multimedia/cloud/CloudClient;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/pantech/multimedia/cloud/UPlusBox;

    move-object v3, v0

    .line 1102
    invoke-virtual {v3}, Lcom/pantech/multimedia/cloud/UPlusBox;->initCloud()Z

    .line 1103
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    invoke-virtual {v3, v4}, Lcom/pantech/multimedia/cloud/UPlusBox;->setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 1104
    invoke-virtual {v3}, Lcom/pantech/multimedia/cloud/UPlusBox;->logIn()Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_25

    .line 1110
    .end local v1    # "creator":Lcom/pantech/multimedia/cloud/CloudCreator;
    :goto_1f
    if-ne p1, v6, :cond_24

    .line 1114
    invoke-direct {p0, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->checkTimeoutAndReset(I)V

    .line 1116
    :cond_24
    return-void

    .line 1105
    :catch_25
    move-exception v2

    .line 1106
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private resumeProcedureUPlusBox()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 994
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getUPlusBoxSessionID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 997
    const-string v3, "BongBong"

    const-string v4, "resumeProcedureUPlusBox"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v3, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1001
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1003
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_3d

    .line 1005
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    .line 1006
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "uplus_sessionid_pref"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1007
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1008
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_uplus_current_dt"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1009
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1012
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_3d
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->is3GDataConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isWIFIDataConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1042
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_51
    :goto_51
    return-void

    .line 1015
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_52
    iput v5, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    .line 1018
    const/4 v3, 0x4

    iput v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    .line 1019
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showDataNetworkDialog()V

    goto :goto_51

    .line 1037
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_5b
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-nez v3, :cond_51

    .line 1039
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 1040
    const v3, 0x7f02015c

    const v4, 0x7f0801b5

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->drawNoContentsPage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method private setCloudReqStatus(I)V
    .registers 7
    .param p1, "status"    # I

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1179
    :goto_6
    return-void

    .line 1175
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "cloud_reqstatus_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1176
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1177
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_cloud_sessionid_req_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method private setUPlusBoxSessionIDReset()V
    .registers 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1168
    :goto_6
    return-void

    .line 1167
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v0}, Lcom/pantech/app/music/cloud/CloudSession;->sessionInit()V

    goto :goto_6
.end method

.method private setUPlusBoxStoreView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1131
    const v0, 0x7f1000b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    .line 1135
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1137
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1161
    :goto_1a
    return-void

    .line 1141
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1143
    const v0, 0x7f1000b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtn:Landroid/widget/LinearLayout;

    .line 1145
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1a
.end method

.method private showDataNetworkDialog()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 941
    const-string v1, "showDataNetworkDialog"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-ne v1, v2, :cond_f

    .line 973
    :cond_e
    :goto_e
    return-void

    .line 947
    :cond_f
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v1, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 952
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eq v1, v2, :cond_e

    .line 957
    iget-boolean v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mActivityVisible:Z

    if-eqz v1, :cond_e

    .line 962
    :try_start_25
    new-instance v1, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    .line 963
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    new-instance v2, Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->setDismissListener(Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;)V

    .line 969
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    new-instance v2, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->showDialog(Ljava/lang/Runnable;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_42

    goto :goto_e

    .line 970
    :catch_42
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private showInfoDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V
    .registers 12
    .param p1, "mainMessage"    # Ljava/lang/String;
    .param p2, "subMessage"    # Ljava/lang/String;
    .param p3, "popupListId"    # I
    .param p4, "callback"    # Ljava/lang/Object;
    .param p5, "type"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 938
    :cond_e
    :goto_e
    return-void

    .line 928
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 933
    :cond_1b
    if-nez p5, :cond_2e

    .line 934
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x3

    move-object v4, p4

    check-cast v4, Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 935
    :cond_2e
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCancelable(Z)V

    goto :goto_e
.end method

.method private showLoadingDialog()V
    .registers 6

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownLoadingDialog()V

    .line 897
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_12

    .line 907
    :cond_11
    :goto_11
    return-void

    .line 902
    :cond_12
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 905
    :cond_1e
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080180

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/utils/ListUtils;->ProgressLoadingDialogStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    goto :goto_11
.end method

.method private shutdownInfoDialog()V
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 985
    :goto_8
    return-void

    .line 982
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_12

    .line 983
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 984
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mInfoDialog:Lcom/pantech/app/music/view/SkyMusicPopupList;

    goto :goto_8
.end method

.method private shutdownLoadingDialog()V
    .registers 2

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 919
    :goto_6
    return-void

    .line 916
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 917
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 918
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLoadingDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    goto :goto_6
.end method

.method private triggerUPlusBox(Ljava/lang/Object;I)V
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 1317
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 1385
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-void

    .line 1320
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1323
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 1324
    iput p2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    .line 1328
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_21

    .line 1329
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    goto :goto_a

    .line 1332
    :cond_21
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    if-ne v3, v7, :cond_33

    .line 1334
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->isDBEmpty()Z

    move-result v3

    if-ne v3, v5, :cond_2f

    .line 1335
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    goto :goto_a

    .line 1337
    :cond_2f
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    goto :goto_a

    .line 1341
    :cond_33
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    if-ne v3, v5, :cond_3b

    .line 1343
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    goto :goto_a

    .line 1346
    :cond_3b
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    .line 1348
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->isDBEmpty()Z

    move-result v3

    if-ne v3, v5, :cond_55

    .line 1349
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 1351
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1352
    .local v1, "mainHandlerMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_a

    .line 1354
    .end local v1    # "mainHandlerMsg":Landroid/os/Message;
    :cond_55
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    goto :goto_a

    .line 1359
    :cond_59
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_6b

    .line 1361
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1362
    .restart local v1    # "mainHandlerMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_a

    .line 1364
    .end local v1    # "mainHandlerMsg":Landroid/os/Message;
    :cond_6b
    iget v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUPlusQueryType:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_a

    .line 1366
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-nez v3, :cond_82

    .line 1369
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1370
    .restart local v1    # "mainHandlerMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 1374
    .end local v1    # "mainHandlerMsg":Landroid/os/Message;
    :cond_82
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "uplus_sessionid_pref"

    invoke-virtual {v3, v4, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1375
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1376
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_uplus_current_dt"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1377
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1381
    iput v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    .line 1382
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1383
    .restart local v1    # "mainHandlerMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_a
.end method


# virtual methods
.method public OnUBoxSessionChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->OnUBoxSessionChanged(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public clearAdapter()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method public doCommand(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 440
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->doCommand(ILjava/lang/Object;)V

    .line 441
    return-void
.end method

.method getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    .registers 2

    .prologue
    .line 1621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 562
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    return-object v0
.end method

.method public invalidateFragment(Z)V
    .registers 3
    .param p1, "dataChanged"    # Z

    .prologue
    .line 569
    if-eqz p1, :cond_7

    .line 570
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmNotifyDataSetChanged()V

    .line 572
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->updateListHeaderView()V

    .line 574
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 575
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getBroadcastMask()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .line 116
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->register()V

    .line 117
    return-void
.end method

.method public onClearSelection()V
    .registers 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onClearSelection()V

    .line 300
    return-void
.end method

.method public onContentsDBChanged(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentsDBChanged visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mActivityVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mActivityVisible:Z

    if-eqz v0, :cond_21

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->invalidateFragment(Z)V

    .line 311
    :goto_20
    return-void

    .line 310
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBackgroundUpdated:Z

    goto :goto_20
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/cloud/SessionFactory;->getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    .line 128
    :cond_18
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 130
    new-instance v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    .line 131
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    .line 645
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 324
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const v0, 0x7f030032

    .line 139
    .local v0, "layout_id":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setListAdapter(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->createHintLayer(Landroid/view/View;)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->queryList(I)V

    .line 147
    return-object v1
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroy()V

    .line 270
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 657
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mLayoutUPlusStoreBtnLayer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    :cond_10
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 660
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownLoadingDialog()V

    .line 260
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownInfoDialog()V

    .line 262
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyView()V

    .line 263
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 276
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 281
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 283
    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_16
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDetach()V

    .line 286
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .line 1525
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x3e8

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setButtonLock(IJ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1582
    :cond_a
    :goto_a
    return-void

    .line 1531
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1534
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, p3, v3

    .line 1539
    .local v1, "position":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_32

    .line 1541
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1542
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSubListActivity(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    goto :goto_a

    .line 1549
    :cond_32
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-eq v3, v4, :cond_a

    .line 1554
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1556
    const v3, 0x7f1000f2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 1558
    .local v2, "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    const v3, 0x7f10000f

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 1560
    .local v0, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    new-instance v5, Lcom/pantech/app/music/list/fragment/ListUboxFragment$4;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$4;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    invoke-static {v3, p0, v0, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_a

    .line 1568
    .end local v0    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .end local v2    # "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    :cond_63
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1570
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1572
    :try_start_70
    sget-object v3, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_a0

    .line 1580
    :goto_81
    monitor-exit v4

    goto :goto_a

    :catchall_83
    move-exception v3

    monitor-exit v4
    :try_end_85
    .catchall {:try_start_70 .. :try_end_85} :catchall_83

    throw v3

    .line 1575
    :pswitch_86
    :try_start_86
    new-instance v3, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v6, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemPosition(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;-><init>(Landroid/database/Cursor;I)V

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPlayInfo:Lcom/pantech/app/music/list/fragment/ListUboxFragment$PlayInfo;

    .line 1577
    const/4 v3, 0x2

    iput v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    .line 1578
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showDataNetworkDialog()V
    :try_end_9f
    .catchall {:try_start_86 .. :try_end_9f} :catchall_83

    goto :goto_81

    .line 1572
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_86
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

    .line 1588
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1590
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1592
    :try_start_d
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, p3, v4

    .line 1597
    .local v0, "newPosition":I
    if-gez v0, :cond_19

    .line 1599
    monitor-exit v3

    .line 1614
    .end local v0    # "newPosition":I
    :cond_18
    :goto_18
    return v1

    .line 1601
    .restart local v0    # "newPosition":I
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_26

    .line 1606
    const v1, 0x7f1000f2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->startActionMode(Landroid/view/View;Z)V

    move v1, v2

    .line 1611
    goto :goto_18

    .line 1601
    .end local v0    # "newPosition":I
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method onPageEmpty(Z)V
    .registers 4
    .param p1, "isEmpty"    # Z

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageEmpty isEmpty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onPageSelected()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 336
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageSelected()V

    .line 339
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v4

    if-eq v4, v7, :cond_13

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_14

    .line 381
    :cond_13
    :goto_13
    return-void

    .line 343
    :cond_14
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->isForeground()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 347
    const-string v4, "BongBong"

    const-string v5, "onPageSelected"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 351
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 353
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 357
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getUPlusBoxSessionID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 361
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_69

    .line 362
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "uplus_sessionid_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 363
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 364
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_uplus_current_dt"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_69
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-nez v4, :cond_83

    .line 370
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 371
    const v4, 0x7f02015c

    const v5, 0x7f0801b5

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->drawNoContentsPage(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    const/16 v4, 0x7d1

    invoke-direct {p0, v8, v4}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->errorSendMessage(Ljava/lang/Object;I)V

    goto :goto_13

    .line 376
    :cond_83
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 377
    .local v2, "mainHandlerMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v4, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method public onPageUnSelected()V
    .registers 2

    .prologue
    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mDialogCallerType:I

    .line 388
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageUnSelected()V

    .line 391
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->shutdownLoadingDialog()V

    .line 392
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPause()V

    .line 240
    return-void
.end method

.method public onPlayingQueueChanged(I)V
    .registers 2
    .param p1, "queueSize"    # I

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingQueueChanged(I)V

    .line 399
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 413
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_47
    .catchall {:try_start_0 .. :try_end_3} :catchall_59

    .line 585
    :try_start_3
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 587
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 589
    sget-object v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_5e

    .line 609
    :cond_1e
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_44

    .line 617
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 619
    :goto_22
    return-void

    .line 592
    :pswitch_23
    :try_start_23
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getUPlusBoxSessionID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 595
    const v1, 0x7f02015c

    const v3, 0x7f0801b6

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->drawNoContentsPage(ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 599
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->requetUPlusBoxLogin(I)V

    goto :goto_1e

    .line 609
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_59

    .line 611
    :catch_47
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_59

    .line 617
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    goto :goto_22

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4f
    const/4 v1, 0x0

    :try_start_50
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 607
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1, p1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_44

    goto :goto_1e

    .line 617
    :catchall_59
    move-exception v1

    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    throw v1

    .line 589
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 225
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onResume()V

    .line 227
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 233
    :goto_14
    return-void

    .line 230
    :pswitch_15
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->resumeProcedureUPlusBox()V

    goto :goto_14

    .line 227
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStart()V

    .line 209
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 219
    :cond_b
    :goto_b
    return-void

    .line 212
    :cond_c
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBackgroundUpdated:Z

    if-eqz v0, :cond_b

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mBackgroundUpdated:Z

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->invalidateFragment(Z)V

    goto :goto_b
.end method

.method public onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStop()V

    .line 249
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 250
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    .line 253
    :cond_15
    return-void
.end method

.method public onUserPresent()V
    .registers 1

    .prologue
    .line 426
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onUserPresent()V

    .line 427
    return-void
.end method

.method public onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "add"    # Z
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 433
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V

    .line 434
    return-void
.end method

.method queryList(I)V
    .registers 10
    .param p1, "type"    # I

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 626
    const-string v0, "~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! not attached"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 636
    :goto_b
    return-void

    .line 630
    :cond_c
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v7

    .line 632
    :try_start_f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    .line 634
    .local v1, "priority":I
    :goto_18
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    new-instance v4, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 635
    monitor-exit v7

    goto :goto_b

    .end local v1    # "priority":I
    :catchall_2f
    move-exception v0

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v0

    .line 632
    :cond_32
    const/4 v1, 0x1

    goto :goto_18
.end method

.method setListAdapter(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 152
    const v0, 0x7f1000ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setListHeaderView(Landroid/widget/ListView;)V

    .line 156
    const v0, 0x7f1000b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    .line 158
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a8

    .line 189
    :goto_2e
    return-void

    .line 161
    :pswitch_2f
    const v0, 0x7f02015c

    invoke-direct {p0, v0, v2, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->drawNoContentsPage(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setUPlusBoxStoreView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 171
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 172
    .local v7, "listLayoutView":Landroid/view/View;
    if-eqz v7, :cond_50

    .line 174
    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 178
    .end local v7    # "listLayoutView":Landroid/view/View;
    :cond_50
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 179
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 186
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v8}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto :goto_2e

    .line 158
    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch
.end method

.method public triggerByActivity(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    .line 1309
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1314
    :goto_11
    return-void

    .line 1311
    :pswitch_12
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerUPlusBox(Ljava/lang/Object;I)V

    goto :goto_11

    .line 1309
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method protected updateListHeaderView()V
    .registers 7

    .prologue
    .line 445
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListHeaderView:Landroid/view/View;

    const v3, 0x7f1000f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    .local v0, "subText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v4, ""

    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v1

    .line 449
    .local v1, "uboxPlaylistCount":I
    if-nez v1, :cond_25

    .line 451
    const v2, 0x7f08008e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 457
    :goto_24
    return-void

    .line 455
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method public visibleNoContentsPage(Z)V
    .registers 5
    .param p1, "fVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 532
    if-eqz p1, :cond_10

    .line 534
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 542
    :goto_f
    return-void

    .line 539
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mNoContentPage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_f
.end method
