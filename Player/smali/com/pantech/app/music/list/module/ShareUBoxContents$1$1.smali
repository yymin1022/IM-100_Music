.class Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;
.super Ljava/lang/Object;
.source "ShareUBoxContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/ShareUBoxContents$1;->onDrmExists(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/module/ShareUBoxContents$1;

.field final synthetic val$stringID:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/ShareUBoxContents$1;I)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;->this$1:Lcom/pantech/app/music/list/module/ShareUBoxContents$1;

    iput p2, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;->val$stringID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;->this$1:Lcom/pantech/app/music/list/module/ShareUBoxContents$1;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;->this$1:Lcom/pantech/app/music/list/module/ShareUBoxContents$1;

    iget-object v1, v1, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v1, v1, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;->val$stringID:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method
