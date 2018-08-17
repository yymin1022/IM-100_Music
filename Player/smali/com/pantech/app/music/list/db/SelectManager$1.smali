.class Lcom/pantech/app/music/list/db/SelectManager$1;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/SelectManager;->getSelectedAllChildList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/db/SelectManager;

.field final synthetic val$contentsList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/db/SelectManager;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 793
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$1;->this$0:Lcom/pantech/app/music/list/db/SelectManager;

    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$1;->val$contentsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 3
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$1;->val$contentsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    return-void
.end method
