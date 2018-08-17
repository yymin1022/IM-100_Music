.class Lcom/pantech/app/music/list/module/DeleteContents$1;
.super Landroid/os/Handler;
.source "DeleteContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/DeleteContents;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/DeleteContents;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/DeleteContents;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/app/music/list/module/DeleteContents$1;->this$0:Lcom/pantech/app/music/list/module/DeleteContents;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 56
    :goto_5
    return-void

    .line 53
    :pswitch_6
    iget-object v0, p0, Lcom/pantech/app/music/list/module/DeleteContents$1;->this$0:Lcom/pantech/app/music/list/module/DeleteContents;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/DeleteContents;->mListener:Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;->onDeleteComplete(I)V

    goto :goto_5

    .line 50
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
