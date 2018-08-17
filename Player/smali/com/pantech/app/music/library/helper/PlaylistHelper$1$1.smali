.class Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/helper/PlaylistHelper$1;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper$1;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;->this$1:Lcom/pantech/app/music/library/helper/PlaylistHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonSelected(Z)V
    .registers 2
    .param p1, "yes"    # Z

    .prologue
    .line 308
    return-void
.end method

.method public onDialogDismissed()V
    .registers 1

    .prologue
    .line 312
    return-void
.end method

.method public onItemSelected(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;->this$1:Lcom/pantech/app/music/library/helper/PlaylistHelper$1;

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;->this$1:Lcom/pantech/app/music/library/helper/PlaylistHelper$1;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 304
    return-void
.end method
