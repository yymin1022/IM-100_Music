.class Lcom/pantech/app/music/list/module/AddToPlaylistTask$1;
.super Landroid/os/Handler;
.source "AddToPlaylistTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/AddToPlaylistTask;->init(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/AddToPlaylistTask;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/AddToPlaylistTask;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$1;->this$0:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 95
    :goto_5
    return-void

    .line 92
    :pswitch_6
    iget-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$1;->this$0:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iget-object v1, v0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;->mListener:Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    invoke-interface {v1, v0}, Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;->onAddToPlaylistComplete(Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;)V

    goto :goto_5

    .line 89
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
