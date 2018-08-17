.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong$1;->this$1:Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 342
    :cond_11
    return-void
.end method
