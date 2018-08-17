.class Lcom/pantech/app/music/picker/MusicPickerList$1;
.super Ljava/lang/Object;
.source "MusicPickerList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/picker/MusicPickerList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/picker/MusicPickerList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList;)V
    .registers 2

    .prologue
    .line 561
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$1;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$1;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 565
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$1;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 566
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
