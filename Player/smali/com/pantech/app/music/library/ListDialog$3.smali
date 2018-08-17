.class Lcom/pantech/app/music/library/ListDialog$3;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListDialog;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListDialog;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChecked(IZI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "count"    # I

    .prologue
    .line 263
    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListDialog;->access$000(Lcom/pantech/app/music/library/ListDialog;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_32

    .line 266
    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    instance-of v2, v2, Landroid/app/AlertDialog;

    if-eqz v2, :cond_32

    .line 267
    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 269
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 270
    .local v1, "positiveButton":Landroid/widget/Button;
    if-eqz v1, :cond_32

    .line 271
    const/4 v2, 0x2

    if-ge p3, v2, :cond_33

    .line 272
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "positiveButton":Landroid/widget/Button;
    :cond_32
    :goto_32
    return-void

    .line 274
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    .restart local v1    # "positiveButton":Landroid/widget/Button;
    :cond_33
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_32
.end method

.method public onItemRemoved(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public onItemSelected(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListDialog;->access$000(Lcom/pantech/app/music/library/ListDialog;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 291
    :goto_a
    return-void

    .line 286
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListDialog;->mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    if-eqz v0, :cond_20

    .line 287
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListDialog;->mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    invoke-virtual {p1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getGroupType()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;->onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V

    .line 289
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog$3;->this$0:Lcom/pantech/app/music/library/ListDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a
.end method

.method public onRequestDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V
    .registers 3
    .param p1, "info"    # Lcom/pantech/app/music/library/FragmentInfo;
    .param p2, "transitionView"    # Landroid/view/View;

    .prologue
    .line 255
    return-void
.end method

.method public onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 3
    .param p1, "playList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 251
    return-void
.end method
