.class final Lcom/pantech/app/music/list/db/SelectManager$3;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/SelectManager;->getSelectedTransferIDList(Ljava/util/Collection;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$itemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$3;->val$itemList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 4
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$3;->val$itemList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    return-void
.end method
