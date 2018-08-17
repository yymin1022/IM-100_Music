.class public Lcom/pantech/app/music/picker/MusicPickerList;
.super Landroid/app/ListActivity;
.source "MusicPickerList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;,
        Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;,
        Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;
    }
.end annotation


# static fields
.field static final ALBUM_MENU:I = 0x2

.field static final ARTIST_MENU:I = 0x3

.field static final CURSOR_COLS:[Ljava/lang/String;

.field static final DBG:Z = false

.field static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MY_QUERY_TOKEN:I = 0x2a

.field static final SORT_MODE_KEY:Ljava/lang/String; = "sortMode"

.field static final TAG:Ljava/lang/String; = "MusicPicker"

.field static final TRACK_MENU:I = 0x1

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private final REQ_CODE_POPUP_FOR_SOCIAL_PLUS:I

.field private final SOCIAL_PLUS_ACTION:Ljava/lang/String;

.field mAdapter:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field private mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNoData:Landroid/widget/TextView;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;

.field mSelectedData:Ljava/lang/String;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private m_ActionBar:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/picker/MusicPickerList;->CURSOR_COLS:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/pantech/app/music/picker/MusicPickerList;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/pantech/app/music/picker/MusicPickerList;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/pantech/app/music/picker/MusicPickerList;->sFormatter:Ljava/util/Formatter;

    .line 128
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/pantech/app/music/picker/MusicPickerList;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 139
    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListState:Landroid/os/Parcelable;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    .line 165
    iput-wide v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    .line 173
    iput-wide v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    .line 180
    const-string v0, "android.intent.action.PICK_FOR_SOCIAL_PLUS"

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->SOCIAL_PLUS_ACTION:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mNoData:Landroid/widget/TextView;

    .line 183
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->REQ_CODE_POPUP_FOR_SOCIAL_PLUS:I

    .line 187
    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    .line 947
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/picker/MusicPickerList;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/picker/MusicPickerList;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getPhoneStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/picker/MusicPickerList;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/picker/MusicPickerList;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/pantech/app/music/picker/MusicPickerList;->displayToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/picker/MusicPickerList;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/picker/MusicPickerList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mNoData:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayToast(I)V
    .registers 5
    .param p1, "what"    # I

    .prologue
    .line 995
    packed-switch p1, :pswitch_data_14

    .line 1001
    :goto_3
    return-void

    .line 997
    :pswitch_4
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "str":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 995
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneStatus()I
    .registers 3

    .prologue
    .line 990
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/picker/MusicPickerList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 991
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    return v1
.end method

.method private setActionBar()V
    .registers 4

    .prologue
    .line 655
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_16

    .line 656
    const v1, 0x7f100142

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/picker/MusicPickerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 657
    .local v0, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->setActionBar(Landroid/widget/Toolbar;)V

    .line 658
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    .line 660
    .end local v0    # "toolbar":Landroid/widget/Toolbar;
    :cond_16
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_28

    .line 661
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0800f1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 662
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->m_ActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 664
    :cond_28
    return-void
.end method

.method private setSelectedList()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 892
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 893
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 894
    .local v2, "newId":J
    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "newData":Ljava/lang/String;
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    .line 899
    iput-wide v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    .line 900
    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    .line 902
    iget-wide v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_131

    .line 903
    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-static {p0, v6, v11, v11}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 905
    .local v0, "count":I
    if-lez v0, :cond_d5

    .line 907
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSelectedData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n mSelectedUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 911
    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v6}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 913
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080128

    invoke-static {v6, v7}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 914
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    .line 926
    :cond_8b
    :goto_8b
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 927
    const-string v6, "MusicPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSelectedList() ACTION_GET_CONTENT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 929
    .local v4, "selectedFileUri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v10, v6}, Lcom/pantech/app/music/picker/MusicPickerList;->setResult(ILandroid/content/Intent;)V

    .line 936
    .end local v4    # "selectedFileUri":Landroid/net/Uri;
    :goto_d2
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    .line 945
    .end local v0    # "count":I
    :cond_d5
    :goto_d5
    return-void

    .line 917
    .restart local v0    # "count":I
    :cond_d6
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 919
    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v6}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v6}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 921
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080129

    invoke-static {v6, v7}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 922
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    goto :goto_8b

    .line 932
    :cond_102
    const-string v6, "MusicPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSelectedList() Action  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v10, v6}, Lcom/pantech/app/music/picker/MusicPickerList;->setResult(ILandroid/content/Intent;)V

    goto :goto_d2

    .line 943
    .end local v0    # "count":I
    :cond_131
    const v6, 0x7f08013d

    invoke-static {p0, v6}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_d5
.end method


# virtual methods
.method controlMediaPlayer(J)V
    .registers 10
    .param p1, "newId"    # J

    .prologue
    .line 768
    const-string v1, "MusicPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlMediaPlayer()  newId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 772
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 774
    const v1, 0x7f080127

    invoke-static {p0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 797
    :cond_3c
    :goto_3c
    return-void

    .line 779
    :cond_3d
    const-string v1, "MusicPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPlayingId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-wide v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_9e

    .line 781
    :cond_77
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->stopMediaPlayer()V

    .line 782
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 784
    :try_start_81
    iput-wide p1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    .line 785
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->startMeidaPlayer()V

    .line 786
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8d} :catch_8e

    goto :goto_3c

    .line 787
    :catch_8e
    move-exception v0

    .line 788
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MusicPicker"

    const-string v2, "Unable to play track"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_3c

    .line 791
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9e
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3c

    .line 792
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->stopMediaPlayer()V

    .line 793
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->abandonFocus()Z

    .line 794
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_3c
.end method

.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "sync"    # Z
    .param p2, "filterstring"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2a

    const/4 v11, 0x0

    .line 724
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mQueryHandler:Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->cancelOperation(I)V

    .line 726
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    .line 734
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 735
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 738
    :cond_2c
    if-eqz p1, :cond_40

    .line 740
    :try_start_2e
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/music/picker/MusicPickerList;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2e .. :try_end_3e} :catch_56

    move-result-object v0

    .line 750
    :goto_3f
    return-object v0

    .line 746
    :cond_40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->setProgressBarIndeterminateVisibility(Z)V

    .line 747
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mQueryHandler:Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;

    sget-object v6, Lcom/pantech/app/music/picker/MusicPickerList;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    move-object v4, v11

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    move-object v0, v11

    .line 750
    goto :goto_3f

    .line 742
    :catch_56
    move-exception v0

    goto :goto_54
.end method

.method makeListShown()V
    .registers 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListShown:Z

    if-nez v0, :cond_f

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListShown:Z

    .line 701
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListContainer:Landroid/view/View;

    if-nez v0, :cond_10

    .line 711
    :cond_f
    :goto_f
    return-void

    .line 704
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 709
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 881
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 882
    if-ne p2, v1, :cond_d

    .line 883
    invoke-virtual {p0, v1, p3}, Lcom/pantech/app/music/picker/MusicPickerList;->setResult(ILandroid/content/Intent;)V

    .line 884
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    .line 889
    :cond_c
    :goto_c
    return-void

    .line 885
    :cond_d
    if-nez p2, :cond_c

    goto :goto_c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 987
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 801
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion()  mMediaPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_3b

    .line 803
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 804
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 806
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    .line 807
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    if-eqz v0, :cond_34

    .line 808
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->abandonFocus()Z

    .line 809
    :cond_34
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 811
    :cond_3b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1004
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1005
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 1006
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 476
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 478
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->requestWindowFeature(I)Z

    .line 480
    const/4 v11, 0x1

    .line 481
    .local v11, "sortMode":I
    if-nez p1, :cond_11e

    .line 482
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    .line 494
    :goto_1a
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 495
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    .line 507
    :cond_2e
    :goto_2e
    const v0, 0x7f03008f

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->setContentView(I)V

    .line 511
    invoke-direct {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->setActionBar()V

    .line 513
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 517
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 520
    new-instance v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    const v4, 0x7f030090

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v12, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;-><init>(Lcom/pantech/app/music/picker/MusicPickerList;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mAdapter:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    .line 523
    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 526
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mAdapter:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    new-instance v0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;-><init>(Lcom/pantech/app/music/picker/MusicPickerList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mQueryHandler:Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;

    .line 531
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mProgressContainer:Landroid/view/View;

    .line 532
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListContainer:Landroid/view/View;

    .line 534
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mNoData:Landroid/widget/TextView;

    .line 537
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_100

    .line 538
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 539
    .local v8, "builder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 540
    .local v10, "path":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 541
    .local v9, "idx":I
    if-ltz v9, :cond_9d

    .line 542
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 544
    :cond_9d
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 545
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 546
    .local v7, "baseSelectedUri":Landroid/net/Uri;
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected base Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 552
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    .line 556
    .end local v7    # "baseSelectedUri":Landroid/net/Uri;
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v9    # "idx":I
    .end local v10    # "path":Ljava/lang/String;
    :cond_100
    invoke-virtual {p0, v11}, Lcom/pantech/app/music/picker/MusicPickerList;->setSortMode(I)Z

    .line 558
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 559
    new-instance v0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;-><init>(Lcom/pantech/app/music/picker/MusicPickerList;)V

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    .line 561
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/pantech/app/music/picker/MusicPickerList$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/picker/MusicPickerList$1;-><init>(Lcom/pantech/app/music/picker/MusicPickerList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 569
    .end local v3    # "listView":Landroid/widget/ListView;
    :goto_11d
    return-void

    .line 485
    :cond_11e
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    .line 489
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListState:Landroid/os/Parcelable;

    .line 490
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mListHasFocus:Z

    .line 491
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_1a

    .line 496
    :cond_140
    const-string v0, "android.intent.action.PICK_FOR_SOCIAL_PLUS"

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 497
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    goto/16 :goto_2e

    .line 499
    :cond_156
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    .line 500
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_2e

    .line 501
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    goto :goto_11d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 611
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 612
    const/16 v0, -0x3039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 613
    const v0, 0x7f0801a9

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 614
    const/4 v0, 0x2

    const v1, 0x7f0801a7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 615
    const/4 v0, 0x3

    const v1, 0x7f0801a8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 616
    return v3
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 595
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 873
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 874
    invoke-direct {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->setSelectedList()V

    .line 875
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 599
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 603
    :goto_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 604
    const/4 v0, 0x1

    .line 606
    :goto_12
    return v0

    .line 601
    :pswitch_13
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    goto :goto_7

    .line 606
    :cond_17
    const/4 v0, 0x0

    goto :goto_12

    .line 599
    nop

    :pswitch_data_1a
    .packed-switch 0x102002c
        :pswitch_13
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 638
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 639
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->stopMediaPlayer()V

    .line 640
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->abandonFocus()Z

    .line 641
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 574
    iget v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    packed-switch v0, :pswitch_data_2c

    .line 585
    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/picker/MusicPickerList;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 587
    invoke-direct {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->setActionBar()V

    .line 588
    return-void

    .line 576
    :pswitch_11
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    goto :goto_8

    .line 579
    :pswitch_1a
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    goto :goto_8

    .line 582
    :pswitch_23
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    goto :goto_8

    .line 574
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1a
        :pswitch_23
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 630
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 634
    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 635
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 623
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    const-string v0, "sortMode"

    iget v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 644
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 651
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mAdapter:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 652
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .registers 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 754
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 755
    .local v1, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 756
    .local v2, "newId":J
    iget-object v4, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "newData":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    .line 760
    iput-wide v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    .line 761
    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedData:Ljava/lang/String;

    .line 763
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/picker/MusicPickerList;->controlMediaPlayer(J)V

    .line 765
    return-void
.end method

.method setSortMode(I)Z
    .registers 6
    .param p1, "sortMode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 671
    iget v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    if-eq p1, v0, :cond_a

    .line 672
    packed-switch p1, :pswitch_data_36

    .line 690
    :cond_a
    :goto_a
    return v1

    .line 674
    :pswitch_b
    iput p1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    .line 675
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    .line 676
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/picker/MusicPickerList;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_a

    .line 679
    :pswitch_19
    iput p1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    .line 680
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    .line 681
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/picker/MusicPickerList;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_a

    .line 684
    :pswitch_27
    iput p1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    .line 685
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSortOrder:Ljava/lang/String;

    .line 686
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/picker/MusicPickerList;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_a

    .line 672
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_b
        :pswitch_19
        :pswitch_27
    .end packed-switch
.end method

.method startMeidaPlayer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 814
    const-string v1, "MusicPicker"

    const-string v2, "startMeidaPlayer()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mFocusHelper:Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->requestTransientFocus()Z

    .line 817
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-static {p0, v1, v3, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 818
    .local v0, "count":I
    if-gtz v0, :cond_1d

    .line 819
    const-string v1, "MusicPicker"

    const-string v2, "return!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_1c
    return-void

    .line 823
    :cond_1d
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 824
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 825
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 826
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 827
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1c
.end method

.method stopMediaPlayer()V
    .registers 4

    .prologue
    .line 831
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMediaPlayer()  mMediaPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2f

    .line 833
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 834
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 836
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    .line 838
    :cond_2f
    return-void
.end method
