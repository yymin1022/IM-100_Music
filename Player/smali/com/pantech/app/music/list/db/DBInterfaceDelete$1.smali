.class final Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;
.super Ljava/lang/Object;
.source "DBInterfaceDelete.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic val$selectedAudioLists:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 297
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->val$selectedAudioLists:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->count:I

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 8
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 303
    iget v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->count:I

    div-int/lit16 v0, v1, 0x1f4

    .line 305
    .local v0, "particalPos":I
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->val$selectedAudioLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1d

    .line 306
    const-string v1, "DBInterfaceCommon"

    const-string v2, "deleteFavorites:lists"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->val$selectedAudioLists:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1d
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFavorites:particalPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5a

    .line 313
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->val$selectedAudioLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_5a
    iget v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;->count:I

    .line 317
    return-void
.end method
