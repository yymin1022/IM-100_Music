.class Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler$1;
.super Landroid/os/Handler;
.source "AlbumartExtracter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;-><init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;Landroid/content/Context;Landroid/os/Looper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

.field final synthetic val$this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;Landroid/os/Looper;Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler$1;->this$1:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    iput-object p3, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler$1;->val$this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 824
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 828
    invoke-static {}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 845
    :goto_e
    return-void

    .line 830
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    .line 834
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .line 836
    .local v0, "job":Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
    iget-object v1, v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    invoke-interface {v1, v0}, Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;->onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V

    .line 838
    iput-object v2, v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    .line 839
    iput-object v2, v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_e
.end method
