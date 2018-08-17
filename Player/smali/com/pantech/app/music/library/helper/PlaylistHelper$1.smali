.class Lcom/pantech/app/music/library/helper/PlaylistHelper$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlaylistDialog(Landroid/app/FragmentManager;[Lcom/pantech/app/music/list/MusicItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegativeClick(Landroid/app/DialogFragment;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 293
    return-void
.end method

.method public onDialogPositiveClick(Landroid/app/DialogFragment;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 289
    return-void
.end method

.method public onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V
    .registers 9
    .param p1, "playlistID"    # J
    .param p3, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 297
    const-string v0, "PlaylistHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$6;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p3}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 324
    :goto_2d
    return-void

    .line 300
    :pswitch_2e
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    const-wide/16 v2, -0x1

    const v1, 0x7f080045

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$1$1;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper$1;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    goto :goto_2d

    .line 316
    :pswitch_3e
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_2d

    .line 319
    :pswitch_48
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->access$000(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;J)V

    goto :goto_2d

    .line 298
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3e
        :pswitch_48
    .end packed-switch
.end method
