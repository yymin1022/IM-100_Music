.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->setTabSelectDialog(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .prologue
    .line 908
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iput-object p2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;

    .line 914
    .local v0, "item":Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;
    if-eqz v0, :cond_1f

    .line 916
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$7;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget v5, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlaylistItem;->mId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/app/Activity;I)V

    const-string v3, "ExInterface.PlayPlaylistSong"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 918
    :cond_1f
    return-void
.end method
