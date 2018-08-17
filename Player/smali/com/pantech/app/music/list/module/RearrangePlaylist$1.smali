.class Lcom/pantech/app/music/list/module/RearrangePlaylist$1;
.super Landroid/os/Handler;
.source "RearrangePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/RearrangePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/RearrangePlaylist;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/RearrangePlaylist;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist$1;->this$0:Lcom/pantech/app/music/list/module/RearrangePlaylist;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist$1;->this$0:Lcom/pantech/app/music/list/module/RearrangePlaylist;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    invoke-interface {v0}, Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;->onRearrangeComplete()V

    .line 68
    :cond_c
    return-void
.end method
