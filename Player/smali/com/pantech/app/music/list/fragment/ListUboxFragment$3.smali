.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 2

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;I)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "msg"    # I

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1230
    :cond_c
    :goto_c
    return-void

    .line 1205
    :cond_d
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    if-nez v1, :cond_1a

    .line 1207
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$700(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)V

    goto :goto_c

    .line 1211
    :cond_1a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_46

    .line 1214
    if-eqz p1, :cond_c

    .line 1217
    sget-object v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v2, v2, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    goto :goto_c

    .line 1220
    :pswitch_33
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1221
    .local v0, "uBoxHandlerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1222
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_c

    .line 1228
    .end local v0    # "uBoxHandlerMsg":Landroid/os/Message;
    :cond_46
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v1, p1, p2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$800(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Ljava/lang/Object;I)V

    goto :goto_c

    .line 1217
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method
