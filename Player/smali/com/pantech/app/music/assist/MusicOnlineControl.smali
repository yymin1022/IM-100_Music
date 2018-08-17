.class public Lcom/pantech/app/music/assist/MusicOnlineControl;
.super Ljava/lang/Object;
.source "MusicOnlineControl.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;


# static fields
.field private static final FEED_TYPE_OTHER_VENDORS:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

.field private mItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field private mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field private mVendorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 35
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private Show3gPopupWarningAndStartOnlineService()V
    .registers 5

    .prologue
    .line 143
    new-instance v1, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    new-instance v2, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    invoke-direct {v1, v2}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    .line 144
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    new-instance v1, Lcom/pantech/app/music/assist/MusicOnlineControl$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/assist/MusicOnlineControl$1;-><init>(Lcom/pantech/app/music/assist/MusicOnlineControl;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->showDialog(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method private StartOnlineServiceActivity()V
    .registers 6

    .prologue
    .line 87
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v2, :cond_5

    .line 114
    :goto_4
    return-void

    .line 91
    :cond_5
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.youtube"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "query"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_4

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_45
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mContext:Landroid/content/Context;

    const v3, 0x7f080136

    invoke-static {v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicOnlineControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicOnlineControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicOnlineControl;->StartOnlineServiceActivity()V

    return-void
.end method

.method private checkPreferenceOnlineServiceAvailable()Z
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mContext:Landroid/content/Context;

    const-string v1, "onlineServiceEnd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I

    .prologue
    .line 158
    .line 163
    return-void
.end method

.method public reLayout()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->reLayout()V

    .line 52
    :cond_9
    return-void
.end method

.method public startOnlineService(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 2
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicOnlineControl;->Show3gPopupWarningAndStartOnlineService()V

    .line 84
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mSkyMusicPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->dismiss()V

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    if-eqz v0, :cond_12

    .line 44
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicOnlineControl;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->hideDialog()V

    .line 46
    :cond_12
    return-void
.end method
