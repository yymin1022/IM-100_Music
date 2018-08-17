.class Lcom/pantech/app/music/list/module/ShareUBoxContents$2;
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
    .line 92
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$2;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$2;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$2;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v1, v1, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method
