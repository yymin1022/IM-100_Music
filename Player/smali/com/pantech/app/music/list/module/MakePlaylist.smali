.class public Lcom/pantech/app/music/list/module/MakePlaylist;
.super Ljava/lang/Object;
.source "MakePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/MakePlaylist$1;,
        Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;
    }
.end annotation


# static fields
.field static final MAKE_PLAYLIST:I = 0x1

.field static final MAKE_PLAYLIST_ADD_CART:I = 0x3

.field static final RENAME_PLAYLIST:I = 0x2


# instance fields
.field mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

.field mCommand:I

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mDBInterfacePlaylist:Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

.field mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mListener:Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;

.field mOldPlaylistName:Ljava/lang/String;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mRenameTargetPlaylistID:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    .line 49
    new-instance v0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-direct {p0, v0, p2, p3}, Lcom/pantech/app/music/list/module/MakePlaylist;->init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 5
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/list/module/MakePlaylist;->init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 45
    return-void
.end method

.method private init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 6
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "callback"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .prologue
    .line 56
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-interface {p1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDBInterfacePlaylist:Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    .line 58
    iput-object p2, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 60
    iput-object p3, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MakePlaylist category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private retryMakePlaylistDialog()V
    .registers 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getDefaultPlaylistName(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "defaultPlaylistName":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08008d

    const v3, 0x7f08005c

    invoke-static {v1, v2, v3, v0, p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 90
    return-void
.end method

.method private retryRenamePlaylistDialog(Ljava/lang/String;)V
    .registers 6
    .param p1, "defaultPlaylistName"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080090

    const v2, 0x7f08005c

    iget-object v3, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 95
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    return-object v0
.end method

.method public makePlaylistAndAddCardDialog(Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mListener:Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;

    .line 74
    const/4 v1, 0x3

    iput v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    .line 75
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getDefaultPlaylistName(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "defaultPlaylistName":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08008d

    const v3, 0x7f08005c

    invoke-static {v1, v2, v3, v0, p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 77
    return-void
.end method

.method public makePlaylistDialog()V
    .registers 5

    .prologue
    .line 81
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getDefaultPlaylistName(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "defaultPlaylistName":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08008d

    const v3, 0x7f08005c

    invoke-static {v1, v2, v3, v0, p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f08015b

    const v9, 0x7f080141

    const v8, 0x7f080139

    const v7, 0x7f08012f

    const/4 v6, 0x3

    .line 114
    instance-of v4, p1, Lcom/pantech/app/music/view/SkyEditText;

    if-eqz v4, :cond_40

    .line 116
    iget v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1a

    iget v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    if-ne v4, v6, :cond_be

    :cond_1a
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/pantech/app/music/view/SkyEditText;

    .line 120
    .local v0, "editText":Lcom/pantech/app/music/view/SkyEditText;
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "newPlaylistName":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDBInterfacePlaylist:Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->checkPlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v3

    .line 124
    .local v3, "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    sget-object v4, Lcom/pantech/app/music/list/module/MakePlaylist$1;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_17e

    .line 220
    .end local v0    # "editText":Lcom/pantech/app/music/view/SkyEditText;
    .end local v1    # "newPlaylistName":Ljava/lang/String;
    .end local v3    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :cond_40
    :goto_40
    return-void

    .line 127
    .restart local v0    # "editText":Lcom/pantech/app/music/view/SkyEditText;
    .restart local v1    # "newPlaylistName":Ljava/lang/String;
    .restart local v3    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :pswitch_41
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 128
    invoke-direct {p0}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryMakePlaylistDialog()V

    goto :goto_40

    .line 132
    :pswitch_4e
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 133
    invoke-direct {p0}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryMakePlaylistDialog()V

    goto :goto_40

    .line 136
    :pswitch_5b
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 137
    invoke-direct {p0}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryMakePlaylistDialog()V

    goto :goto_40

    .line 141
    :pswitch_68
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_40

    .line 145
    :pswitch_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start MakePlaylist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 146
    iget v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    if-ne v4, v6, :cond_a2

    .line 148
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDBInterfacePlaylist:Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v2

    .line 149
    .local v2, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mListener:Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->getPlaylistID()J

    move-result-wide v6

    invoke-interface {v4, v2, v6, v7}, Lcom/pantech/app/music/list/module/MakePlaylist$OnMakePlaylistCompleteListener;->onMakePlaylistComplete(Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;J)V

    goto :goto_40

    .line 153
    .end local v2    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :cond_a2
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-static {v4, v5, v1}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startMakePlaylist(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Ljava/lang/String;)V

    goto :goto_40

    .line 158
    :pswitch_ae
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0800db

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 159
    invoke-direct {p0}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryMakePlaylistDialog()V

    goto :goto_40

    .line 163
    .end local v0    # "editText":Lcom/pantech/app/music/view/SkyEditText;
    .end local v1    # "newPlaylistName":Ljava/lang/String;
    .end local v3    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :cond_be
    iget v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/pantech/app/music/view/SkyEditText;

    .line 167
    .restart local v0    # "editText":Lcom/pantech/app/music/view/SkyEditText;
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "newPlaylistName":Ljava/lang/String;
    sget-object v3, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 171
    .restart local v3    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 173
    sget-object v3, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 182
    :goto_dc
    sget-object v4, Lcom/pantech/app/music/list/module/MakePlaylist$1;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_18e

    .line 216
    :goto_e7
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    if-eqz v4, :cond_40

    .line 217
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCallback:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    const/16 v5, 0x20

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->isSuccess()Z

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/pantech/app/music/list/listener/ISelectMenuCallback;->onSelectMenuResult(IZLjava/lang/Object;)V

    goto/16 :goto_40

    .line 177
    :cond_f9
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDBInterfacePlaylist:Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    iget v6, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mRenameTargetPlaylistID:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->renamePlayList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v3

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renamePlaylist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto :goto_dc

    .line 185
    :pswitch_11e
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 186
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryRenamePlaylistDialog(Ljava/lang/String;)V

    goto :goto_e7

    .line 190
    :pswitch_12d
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 191
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryRenamePlaylistDialog(Ljava/lang/String;)V

    goto :goto_e7

    .line 195
    :pswitch_13c
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_e7

    .line 200
    :pswitch_146
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15d

    .line 202
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 203
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryRenamePlaylistDialog(Ljava/lang/String;)V

    goto :goto_e7

    .line 207
    :cond_15d
    :pswitch_15d
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080146

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_e7

    .line 211
    :pswitch_16b
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0800dc

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 212
    iget-object v4, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/module/MakePlaylist;->retryRenamePlaylistDialog(Ljava/lang/String;)V

    goto/16 :goto_e7

    .line 124
    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4e
        :pswitch_5b
        :pswitch_68
        :pswitch_72
        :pswitch_ae
    .end packed-switch

    .line 182
    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_146
        :pswitch_11e
        :pswitch_12d
        :pswitch_13c
        :pswitch_15d
        :pswitch_16b
    .end packed-switch
.end method

.method public renamePlaylistDialog(I)V
    .registers 6
    .param p1, "playlistID"    # I

    .prologue
    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mCommand:I

    .line 100
    iput p1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mRenameTargetPlaylistID:I

    .line 101
    iget-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080090

    const v2, 0x7f08005c

    iget-object v3, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mOldPlaylistName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MakePlaylist;->mDialogFragment:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 103
    return-void
.end method
