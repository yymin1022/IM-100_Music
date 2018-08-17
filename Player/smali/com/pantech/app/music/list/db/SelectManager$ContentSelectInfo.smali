.class public Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
.super Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
.source "SelectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentSelectInfo"
.end annotation


# instance fields
.field public audioID:J

.field private groupID:Ljava/lang/String;

.field public mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1669
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 1671
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->chooseCntsType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    invoke-direct {v0, p3, v1}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1673
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    iput-wide v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    .line 1674
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->groupID:Ljava/lang/String;

    .line 1677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentSelectInfo audioID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cntInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "cntInfo"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 1655
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 1657
    invoke-virtual {p3}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1659
    iget-wide v0, p3, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    iput-wide v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    .line 1660
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->groupID:Ljava/lang/String;

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentSelectInfo audioID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cntInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1665
    return-void
.end method


# virtual methods
.method public clone()Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .registers 5

    .prologue
    .line 1709
    new-instance v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->groupID:Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 1710
    .local v0, "cloned":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->clone()Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAllContentsCount()I
    .registers 2

    .prologue
    .line 1697
    const/4 v0, 0x1

    return v0
.end method

.method public getContentsValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->groupID:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1683
    const-string v0, ""

    .line 1685
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->groupID:Ljava/lang/String;

    goto :goto_6
.end method

.method public getSelectedContentsCount()I
    .registers 2

    .prologue
    .line 1691
    const/4 v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 1703
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cntInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
