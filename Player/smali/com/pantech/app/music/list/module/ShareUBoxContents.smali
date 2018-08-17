.class public Lcom/pantech/app/music/list/module/ShareUBoxContents;
.super Ljava/lang/Object;
.source "ShareUBoxContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

.field mSelectContents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSendIntent:Landroid/content/Intent;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/os/Handler;Ljava/util/Collection;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V
    .registers 5
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/pantech/app/music/list/listener/ISelectMenuCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Landroid/os/Handler;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/listener/ISelectMenuCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 39
    iput-object p2, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p4, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mListener:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 43
    iput-object p3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSelectContents:Ljava/util/Collection;

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v5, 0x1f4

    const/4 v6, 0x1

    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSelectContents:Ljava/util/Collection;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;-><init>(Lcom/pantech/app/music/list/module/ShareUBoxContents;)V

    invoke-static {v3, v6, v4}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedUriLists(Ljava/util/Collection;ZLcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    .line 68
    const-string v1, "audio/*"

    .line 70
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_62

    .line 72
    const-string v3, "uploadubox Service:android.intent.action.SEND"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "lg.uplusbox"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_57
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;-><init>(Lcom/pantech/app/music/list/module/ShareUBoxContents;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void

    .line 81
    :cond_62
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_af

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_70
    if-ge v0, v5, :cond_7e

    .line 86
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 89
    :cond_7e
    const-string v3, "uploadubox Service split share:android.intent.action.SEND_MULTIPLE"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareUBoxContents$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareUBoxContents$2;-><init>(Lcom/pantech/app/music/list/module/ShareUBoxContents;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "lg.uplusbox"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_57

    .line 107
    .end local v0    # "i":I
    .end local v2    # "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_af
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_e1

    .line 109
    const-string v3, "uploadubox Service:android.intent.action.SEND_MULTIPLE"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "lg.uplusbox"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_57

    .line 119
    :cond_e1
    const-string v3, "shareOnlineService ERROR"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto/16 :goto_57
.end method
