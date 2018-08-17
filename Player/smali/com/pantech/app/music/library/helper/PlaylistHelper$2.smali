.class Lcom/pantech/app/music/library/helper/PlaylistHelper$2;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V
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
    .line 369
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 371
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 372
    .local v2, "playlistID":J
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "newName":Ljava/lang/String;
    cmp-long v1, v2, v4

    if-gez v1, :cond_58

    .line 374
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 375
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->makePlayList(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 376
    cmp-long v1, v2, v4

    if-lez v1, :cond_3b

    .line 377
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showNotice4Created()V

    .line 379
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mListener:Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

    if-eqz v1, :cond_48

    .line 380
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mListener:Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;->onItemSelected(J)V

    .line 388
    :cond_48
    :goto_48
    return-void

    .line 383
    :cond_49
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    const-wide/16 v4, -0x1

    const v6, 0x7f080045

    iget-object v7, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v7, v7, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mListener:Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    goto :goto_48

    .line 386
    :cond_58
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->access$200(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_48
.end method
