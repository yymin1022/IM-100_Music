.class Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;
.super Ljava/lang/Object;
.source "ArrangeListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;)V
    .registers 2

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;->this$1:Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1256
    new-instance v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;->this$1:Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    iget-object v1, v1, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-direct {v0, v1, p1}, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;-><init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1252
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1261
    new-array v0, p1, [Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 1252
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;->newArray(I)[Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    move-result-object v0

    return-object v0
.end method
