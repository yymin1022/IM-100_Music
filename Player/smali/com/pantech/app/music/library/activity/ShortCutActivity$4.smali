.class Lcom/pantech/app/music/library/activity/ShortCutActivity$4;
.super Ljava/lang/Object;
.source "ShortCutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ShortCutActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 204
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v2, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->cursorLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :goto_a
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 207
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v3, v3, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-static {v1, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getList(Lcom/pantech/app/music/library/FragmentInfo$Category;Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 215
    .end local v0    # "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1

    .line 211
    .restart local v0    # "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/pantech/app/music/list/MusicItemInfo;

    iput-object v3, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 212
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->checkLoadingDialog()V

    .line 215
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_24

    .line 216
    return-void
.end method
