.class public Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;
.super Ljava/lang/Object;
.source "EmptyFragmentPageItem.java"


# instance fields
.field public mIcon:I

.field public mMainText:I

.field public mSubText:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "main"    # I
    .param p2, "sub"    # I
    .param p3, "resID"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mMainText:I

    .line 13
    iput p2, p0, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mSubText:I

    .line 15
    iput p3, p0, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mIcon:I

    .line 16
    return-void
.end method
