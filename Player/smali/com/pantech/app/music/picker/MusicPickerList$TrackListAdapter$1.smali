.class Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "MusicPickerList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "c"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 323
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-static {v1}, Lcom/pantech/app/music/picker/MusicPickerList;->access$000(Lcom/pantech/app/music/picker/MusicPickerList;)I

    move-result v1

    if-ne v1, v2, :cond_13

    .line 324
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-static {v1, v2}, Lcom/pantech/app/music/picker/MusicPickerList;->access$100(Lcom/pantech/app/music/picker/MusicPickerList;I)V

    .line 332
    :goto_12
    return-void

    .line 328
    :cond_13
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->access$200(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 330
    .local v0, "num":I
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 331
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    iget-object v1, v1, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;->this$1:Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    iget-object v2, v2, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v2, v2, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/picker/MusicPickerList;->setSelected(Landroid/database/Cursor;)V

    goto :goto_12
.end method
