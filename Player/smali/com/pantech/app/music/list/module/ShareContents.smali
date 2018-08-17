.class public Lcom/pantech/app/music/list/module/ShareContents;
.super Ljava/lang/Object;
.source "ShareContents.java"

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
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 39
    iput-object p2, p0, Lcom/pantech/app/music/list/module/ShareContents;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p4, p0, Lcom/pantech/app/music/list/module/ShareContents;->mListener:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    .line 43
    iput-object p3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSelectContents:Ljava/util/Collection;

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

    iput-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSelectContents:Ljava/util/Collection;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareContents$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareContents$1;-><init>(Lcom/pantech/app/music/list/module/ShareContents;)V

    invoke-static {v3, v6, v4}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedUriLists(Ljava/util/Collection;ZLcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    .line 68
    const-string v1, "audio/*"

    .line 70
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5b

    .line 72
    const-string v3, "shareOnlineService:android.intent.action.SEND"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :goto_50
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareContents$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareContents$3;-><init>(Lcom/pantech/app/music/list/module/ShareContents;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void

    .line 80
    :cond_5b
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_a1

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_69
    if-ge v0, v5, :cond_77

    .line 85
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 88
    :cond_77
    const-string v3, "shareOnlineService split share:android.intent.action.SEND_MULTIPLE"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/list/module/ShareContents$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/module/ShareContents$2;-><init>(Lcom/pantech/app/music/list/module/ShareContents;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_50

    .line 105
    .end local v0    # "i":I
    .end local v2    # "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_a1
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_cb

    .line 107
    const-string v3, "shareOnlineService:android.intent.action.SEND_MULTIPLE"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/pantech/app/music/list/module/ShareContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareContents;->mSendIntent:Landroid/content/Intent;

    const-string v4, "exit_on_sent"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_50

    .line 116
    :cond_cb
    const-string v3, "shareOnlineService ERROR"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto :goto_50
.end method
