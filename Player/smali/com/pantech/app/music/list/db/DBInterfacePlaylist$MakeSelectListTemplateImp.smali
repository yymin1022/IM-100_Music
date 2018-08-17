.class Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;
.super Ljava/lang/Object;
.source "DBInterfacePlaylist.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MakeSelectListTemplateImp"
.end annotation


# instance fields
.field public mAddedCount:I

.field mBaseAuioIDTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mBasePosition:I

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContentValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public mDuplicationCount:I

.field public mTryCount:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "basePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p3, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p4, "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput p2, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mBasePosition:I

    .line 523
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 524
    iput-object p3, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mContentValuesList:Ljava/util/ArrayList;

    .line 525
    iput-object p4, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mBaseAuioIDTable:Ljava/util/HashMap;

    .line 526
    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 8
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 532
    if-eqz p1, :cond_3e

    iget-wide v0, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3e

    .line 535
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mBaseAuioIDTable:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 537
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mContentValuesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget v2, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mBasePosition:I

    iget v3, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    add-int/2addr v2, v3

    iget-wide v4, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v1, v2, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->access$000(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IJ)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    .line 555
    :goto_30
    iget v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mTryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mTryCount:I

    .line 556
    return-void

    .line 547
    :cond_37
    iget v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    goto :goto_30

    .line 552
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Playlist : Not Support AudioID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
