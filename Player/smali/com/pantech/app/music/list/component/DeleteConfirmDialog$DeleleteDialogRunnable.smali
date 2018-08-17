.class public Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;
.super Ljava/lang/Object;
.source "DeleteConfirmDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleleteDialogRunnable"
.end annotation


# instance fields
.field protected mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field protected mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field protected mSelectedInfo:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;)V
    .registers 4
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "selectedInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 66
    iput-object p2, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 67
    iput-object p3, p0, Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;->mSelectedInfo:Ljava/util/Collection;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method
