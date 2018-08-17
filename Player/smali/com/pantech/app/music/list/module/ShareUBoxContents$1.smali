.class Lcom/pantech/app/music/list/module/ShareUBoxContents$1;
.super Ljava/lang/Object;
.source "ShareUBoxContents.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;


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
    .line 52
    iput-object p1, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmExists(I)V
    .registers 4
    .param p1, "stringID"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/list/module/ShareUBoxContents$1;->this$0:Lcom/pantech/app/music/list/module/ShareUBoxContents;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/ShareUBoxContents;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/list/module/ShareUBoxContents$1$1;-><init>(Lcom/pantech/app/music/list/module/ShareUBoxContents$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method
