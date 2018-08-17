.class public Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;
.super Ljava/lang/Object;
.source "FragmentMainHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamRestoreHierarchyState"
.end annotation


# instance fields
.field mAbsListview:Landroid/widget/AbsListView;

.field public mAdditionalDelay:J

.field mListViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public mReadyToRestore:Z

.field public mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listviewState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAbsListview:Landroid/widget/AbsListView;

    .line 31
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mListViewState:Landroid/util/SparseArray;

    .line 32
    iput-boolean v2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mReadyToRestore:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    .line 34
    iput v2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mRetryCount:I

    .line 35
    return-void
.end method
