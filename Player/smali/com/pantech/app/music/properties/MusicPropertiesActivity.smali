.class public Lcom/pantech/app/music/properties/MusicPropertiesActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MusicPropertiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;,
        Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;
    }
.end annotation


# static fields
.field private static final MSG_RELEASE_CLICK_LOCK:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MusicPropActivity"

.field private static mClickLock:Z

.field public static mTagHandler:Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field bitmapAlbumArt:Landroid/graphics/Bitmap;

.field protected mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

.field mAlbumart:Landroid/widget/ImageView;

.field mHeaderLayout:Landroid/widget/LinearLayout;

.field protected mListView:Landroid/widget/ListView;

.field mMainText:Landroid/widget/TextView;

.field protected mMusicID:J

.field private mOnTagEditCallback:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

.field private mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

.field protected mProperties:Lcom/pantech/app/music/properties/MusicProperties;

.field private mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field protected mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field mSubText:Landroid/widget/TextView;

.field private mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;

    invoke-direct {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;-><init>()V

    sput-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagHandler:Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 51
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 52
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAlbumart:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMainText:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mSubText:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    .line 314
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 319
    new-instance v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;-><init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mOnTagEditCallback:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    .line 401
    new-instance v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$3;-><init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 492
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/properties/MusicPropertiesActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;
    .param p1, "x1"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/view/SkyProgressDialog;)Lcom/pantech/app/music/view/SkyProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;
    .param p1, "x1"    # Lcom/pantech/app/music/view/SkyProgressDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    return p0
.end method

.method private setStatusBar()V
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0102

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 171
    return-void
.end method

.method private showToast(I)V
    .registers 4
    .param p1, "msgID"    # I

    .prologue
    .line 508
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 509
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    .line 512
    :cond_d
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1b

    .line 513
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 514
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    :cond_1b
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 522
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    .line 525
    :cond_d
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1b

    .line 526
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 527
    sget-object v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    :cond_1b
    return-void
.end method

.method private startFileTagEdit()V
    .registers 8

    .prologue
    .line 421
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 425
    const-string v1, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->getFileUsedNow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 429
    const v1, 0x7f08014d

    invoke-direct {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(I)V

    .line 452
    :goto_41
    const/4 v0, 0x0

    .line 453
    return-void

    .line 431
    :cond_43
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->checkAudioFile()Z

    move-result v1

    if-nez v1, :cond_50

    .line 433
    const v1, 0x7f08014a

    invoke-direct {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(I)V

    goto :goto_41

    .line 435
    :cond_50
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xc800000

    cmp-long v1, v2, v4

    if-lez v1, :cond_62

    .line 437
    const v1, 0x7f08014c

    invoke-direct {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(I)V

    goto :goto_41

    .line 441
    :cond_62
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    if-nez v1, :cond_76

    .line 442
    new-instance v1, Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    iget-object v6, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mOnTagEditCallback:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/properties/MusicFileTagEdit;-><init>(Landroid/content/Context;Landroid/os/Looper;JLcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .line 444
    :cond_76
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->startTagEdit()V

    goto :goto_41

    .line 449
    :cond_7c
    const v1, 0x7f08014b

    invoke-direct {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->showToast(I)V

    goto :goto_41
.end method

.method private updateHeaderView()V
    .registers 9

    .prologue
    .line 183
    const v4, 0x7f1001a2

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 184
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_15

    .line 185
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :cond_15
    const v4, 0x7f1000f2

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAlbumart:Landroid/widget/ImageView;

    .line 188
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAlbumart:Landroid/widget/ImageView;

    if-eqz v4, :cond_79

    .line 206
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 207
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 208
    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    iput v4, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 209
    const-string v4, "MusicPropActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHeaderView() AlbumId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 212
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v4, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$1;-><init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V

    invoke-virtual {v0, v1, v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 223
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c6

    .line 224
    const-string v4, "MusicPropActivity"

    const-string v5, "updateHeaderView() getAlbumArt!!!"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAlbumart:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    .end local v0    # "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    .end local v1    # "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    :cond_79
    :goto_79
    const v4, 0x7f0f004a

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getColor(I)I

    move-result v3

    .line 232
    .local v3, "titleTextColor":I
    const v4, 0x7f0f0051

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getColor(I)I

    move-result v2

    .line 234
    .local v2, "subTextColor":I
    const v4, 0x7f1000f3

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMainText:Landroid/widget/TextView;

    .line 235
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMainText:Landroid/widget/TextView;

    if-eqz v4, :cond_a6

    .line 237
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMainText:Landroid/widget/TextView;

    sget-object v5, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    :cond_a6
    const v4, 0x7f1000f4

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mSubText:Landroid/widget/TextView;

    .line 242
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mSubText:Landroid/widget/TextView;

    if-eqz v4, :cond_c5

    .line 244
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mSubText:Landroid/widget/TextView;

    sget-object v5, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    :cond_c5
    return-void

    .line 227
    .end local v2    # "subTextColor":I
    .end local v3    # "titleTextColor":I
    .restart local v0    # "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    .restart local v1    # "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    :cond_c6
    const-string v4, "MusicPropActivity"

    const-string v5, "updateHeaderView() getAlbumArt  NULL!!!"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79
.end method


# virtual methods
.method public checkAudioFile()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 457
    const-string v2, "VMusicTagEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAudioFile() audioID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-wide v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_34

    .line 468
    :cond_33
    :goto_33
    return v1

    .line 462
    :cond_34
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "format":Ljava/lang/String;
    if-eqz v0, :cond_33

    const-string v2, "MP3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "FLAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 466
    :cond_4c
    const/4 v1, 0x1

    goto :goto_33
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    const v6, 0x7f08012e

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extras.targetMediaID"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    .line 72
    const-string v1, "MusicPropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPropertiesActivity onCreate mMusicID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const v1, 0x7f0300aa

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->setActionbar()V

    .line 77
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->setStatusBar()V

    .line 79
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 84
    iget-wide v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_4f

    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->finish()V

    .line 87
    invoke-static {p0, v6}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 113
    :goto_4e
    return-void

    .line 92
    :cond_4f
    new-instance v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    .line 93
    new-instance v1, Lcom/pantech/app/music/properties/MusicProperties;

    iget-wide v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    invoke-direct {v1, p0, v2, v3}, Lcom/pantech/app/music/properties/MusicProperties;-><init>(Landroid/content/Context;J)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    .line 95
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    iget-object v1, v1, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    if-nez v1, :cond_77

    .line 96
    :cond_69
    const-string v1, "MusicPropActivity"

    const-string v2, "MusicPropertiesActivity  mProperties.mFilePath NULL"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->finish()V

    .line 98
    invoke-static {p0, v6}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_4e

    .line 102
    :cond_77
    const v1, 0x7f1001a0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    .line 103
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02032a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 106
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 107
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 109
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 111
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->updateHeaderView()V

    goto :goto_4e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 252
    const-string v0, "onCreateOptionsMenu >> EF71 Tag Edit Delete"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 135
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 136
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 137
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 139
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 141
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 142
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProgressDialog:Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 145
    :cond_1f
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    if-eqz v0, :cond_28

    .line 147
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->destoryProcess()V

    .line 150
    :cond_28
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected  item.getGroupId():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  item.getItemId():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    .line 300
    :goto_2f
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_33
    return v0

    .line 289
    :sswitch_34
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->finish()V

    .line 290
    const/4 v0, 0x1

    goto :goto_33

    .line 293
    :sswitch_39
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->setItemClickLock(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 294
    const/4 v0, 0x0

    goto :goto_33

    .line 296
    :cond_43
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->startFileTagEdit()V

    goto :goto_2f

    .line 286
    nop

    :sswitch_data_48
    .sparse-switch
        0x102002c -> :sswitch_34
        0x7f10020c -> :sswitch_39
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 263
    const-string v0, "onPrepareOptionsMenu >> EF71 Tag Edit Delete"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagEdit:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->onStartForIME()V

    .line 120
    :cond_9
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 121
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserLeaveHint()V

    .line 127
    return-void
.end method

.method protected setActionbar()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 157
    .local v0, "bar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_31

    .line 158
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 159
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0102

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    .end local v1    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_31
    return-void
.end method

.method protected setItemClickLock(I)Z
    .registers 7
    .param p1, "lockTime"    # I

    .prologue
    const/16 v4, 0xa

    .line 473
    sget-boolean v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    .line 475
    .local v0, "lockBackUp":Z
    sget-boolean v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    if-nez v1, :cond_14

    if-lez p1, :cond_14

    .line 477
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    .line 478
    sget-object v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagHandler:Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v4, v2, v3}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 487
    :cond_13
    :goto_13
    return v0

    .line 481
    :cond_14
    if-nez p1, :cond_13

    .line 483
    sget-object v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mTagHandler:Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;->removeMessages(I)V

    .line 484
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mClickLock:Z

    goto :goto_13
.end method
