.class public Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ArrangeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/ArrangeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavedState"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public colTable:[Ljava/lang/String;

.field public rowData:[Ljava/util/List;

.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .line 1235
    invoke-direct {p0, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1252
    new-instance v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;-><init>(Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1236
    const-class v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->colTable:[Ljava/lang/String;

    .line 1238
    const-class v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/List;

    check-cast v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->rowData:[Ljava/util/List;

    .line 1240
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;Landroid/os/Parcelable;)V
    .registers 4
    .param p2, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .line 1243
    invoke-direct {p0, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1252
    new-instance v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState$1;-><init>(Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1244
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->colTable:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1249
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;->rowData:[Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1250
    return-void
.end method
