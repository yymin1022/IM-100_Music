.class final Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/picker/MusicPickerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/pantech/app/music/picker/MusicPickerList;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    .line 425
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->mContext:Landroid/content/Context;

    .line 426
    iput-object p2, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->mContext:Landroid/content/Context;

    .line 427
    return-void
.end method

.method private makeToast()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "status":Ljava/lang/String;
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_15

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_23

    .line 432
    :cond_15
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f080125

    invoke-static {v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 437
    :goto_1d
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v1}, Lcom/pantech/app/music/picker/MusicPickerList;->finish()V

    .line 438
    return-void

    .line 435
    :cond_23
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f080137

    invoke-static {v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_1d
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 446
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v0, v0, Lcom/pantech/app/music/picker/MusicPickerList;->mAdapter:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 447
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/picker/MusicPickerList;->setProgressBarIndeterminateVisibility(Z)V

    .line 450
    if-eqz p3, :cond_54

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 451
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-static {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->access$300(Lcom/pantech/app/music/picker/MusicPickerList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :goto_28
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v0, v0, Lcom/pantech/app/music/picker/MusicPickerList;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_53

    .line 460
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 461
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-boolean v0, v0, Lcom/pantech/app/music/picker/MusicPickerList;->mListHasFocus:Z

    if-eqz v0, :cond_4a

    .line 462
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 464
    :cond_4a
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iput-boolean v2, v0, Lcom/pantech/app/music/picker/MusicPickerList;->mListHasFocus:Z

    .line 465
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/music/picker/MusicPickerList;->mListState:Landroid/os/Parcelable;

    .line 470
    :cond_53
    :goto_53
    return-void

    .line 452
    :cond_54
    if-eqz p3, :cond_5c

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_60

    .line 453
    :cond_5c
    invoke-direct {p0}, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->makeToast()V

    goto :goto_28

    .line 455
    :cond_60
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$QueryHandler;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-static {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->access$300(Lcom/pantech/app/music/picker/MusicPickerList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 468
    :cond_6a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_53
.end method
