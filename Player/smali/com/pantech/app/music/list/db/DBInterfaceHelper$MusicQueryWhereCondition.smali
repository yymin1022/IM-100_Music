.class public Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
.super Ljava/lang/Object;
.source "DBInterfaceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicQueryWhereCondition"
.end annotation


# instance fields
.field public additionalWhere:Ljava/lang/String;

.field public groupID:Ljava/lang/String;

.field public isExcludeDRM:Z

.field public isExcludeRecord:Z

.field public isMusic:Z

.field public searchMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    .line 671
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    .line 672
    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    .line 673
    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    .line 680
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    .line 681
    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    .line 682
    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    .line 683
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "groupID"    # Ljava/lang/String;
    .param p2, "additionalWhere"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    .line 689
    iput-boolean v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    .line 690
    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    .line 691
    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    .line 692
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    .line 693
    iput-object p2, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "isMusic"    # Z
    .param p2, "isExcludeDRM"    # Z
    .param p3, "searchMode"    # I
    .param p4, "groupID"    # Ljava/lang/String;
    .param p5, "additionalWhere"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    .line 698
    iput-boolean p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    .line 699
    iput-boolean p2, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    .line 700
    iput p3, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    .line 701
    iput-object p4, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    .line 702
    iput-object p5, p0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 703
    return-void
.end method
