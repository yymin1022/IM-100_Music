.class Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;
.super Ljava/lang/Object;
.source "AdapterBindHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;

.field final synthetic val$albumID:I

.field final synthetic val$artistID:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;II)V
    .registers 4

    .prologue
    .line 202
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->this$1:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;

    iput p2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->val$artistID:I

    iput p3, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->val$albumID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->this$1:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;->this$0:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    iget-object v6, v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->val$artistID:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    iget v7, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->val$artistID:I

    iget v8, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;->val$albumID:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v5, v6

    move-object v6, v0

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/pantech/app/music/list/module/PlayInterface;->playQueryArtistAlbumSong(Lcom/pantech/app/music/list/PageInfoType;IIZILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    .line 207
    return-void
.end method
