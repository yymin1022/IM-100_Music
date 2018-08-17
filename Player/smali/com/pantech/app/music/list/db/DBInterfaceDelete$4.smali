.class final Lcom/pantech/app/music/list/db/DBInterfaceDelete$4;
.super Ljava/lang/Object;
.source "DBInterfaceDelete.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteServiceQueues(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$selectedAudioLists:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 831
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$4;->val$selectedAudioLists:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 6
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 836
    iget-wide v0, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 838
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$4;->val$selectedAudioLists:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_13
    return-void
.end method
