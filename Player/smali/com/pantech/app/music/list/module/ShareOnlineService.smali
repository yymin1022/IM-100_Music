.class public Lcom/pantech/app/music/list/module/ShareOnlineService;
.super Ljava/lang/Object;
.source "ShareOnlineService.java"


# instance fields
.field mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field private mIsSelected:Z

.field private mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

.field private mOnMelon3GPopupCallback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

.field private mShareMediaID:J

.field private mShareTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 4
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mIsSelected:Z

    .line 29
    new-instance v0, Lcom/pantech/app/music/list/module/ShareOnlineService$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/ShareOnlineService$1;-><init>(Lcom/pantech/app/music/list/module/ShareOnlineService;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mOnMelon3GPopupCallback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    .line 77
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 79
    iput-object p2, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/module/ShareOnlineService;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/module/ShareOnlineService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/module/ShareOnlineService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/module/ShareOnlineService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/pantech/app/music/list/module/ShareOnlineService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/module/ShareOnlineService;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mIsSelected:Z

    return p1
.end method


# virtual methods
.method public shareOnlineService(JLjava/lang/String;)V
    .registers 13
    .param p1, "mediaID"    # J
    .param p3, "mediaTitle"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const v1, 0x7f08003e

    const/4 v4, 0x1

    .line 113
    iput-object p3, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mShareTitle:Ljava/lang/String;

    .line 114
    iput-wide p1, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mShareMediaID:J

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareOnlineService:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->is3GDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isWIFIDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 123
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connect_data_notification"

    invoke-static {v0, v2, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 125
    .local v6, "is3gconnectNoti":Z
    if-eqz v6, :cond_6e

    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_5a

    .line 128
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 129
    :cond_5a
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080121

    const v3, 0x7f080143

    iget-object v5, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mOnMelon3GPopupCallback:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showCheckboxAskPopupList(Landroid/app/Activity;IIIILcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 153
    .end local v6    # "is3gconnectNoti":Z
    :cond_6e
    :goto_6e
    return-void

    .line 148
    :cond_6f
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_78

    .line 149
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 151
    :cond_78
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080135

    const/4 v3, 0x3

    move-object v4, v7

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showInformPopupList(Landroid/app/Activity;IIILjava/lang/Object;Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/ShareOnlineService;->mNetworkCheckDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    goto :goto_6e
.end method
