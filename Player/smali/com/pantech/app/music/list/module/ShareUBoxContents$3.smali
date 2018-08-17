.class Lcom/pantech/app/music/list/module/ShareUBoxContents$3;
.super Ljava/lang/Object;
.source "ShareUBoxContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/ShareUBoxContents;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/ShareUBoxContents;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v1, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mListener:Lcom/pantech/app/music/list/listener/ISelectMenuCallback;

    const/16 v2, 0x1000

    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    iget-object v3, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$3;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v3, v3, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mSendIntent:Landroid/content/Intent;

    invoke-interface {v1, v2, v0, v3}, Lcom/pantech/app/music/list/listener/ISelectMenuCallback;->onSelectMenuResult(IZLjava/lang/Object;)V

    .line 132
    return-void

    .line 131
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method
