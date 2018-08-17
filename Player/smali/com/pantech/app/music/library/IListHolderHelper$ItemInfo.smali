.class public Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
.super Ljava/lang/Object;
.source "IListHolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/IListHolderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field itemID:J

.field itemTitle:Ljava/lang/String;

.field itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 5
    .param p1, "itemID"    # J
    .param p3, "itemName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemID:J

    .line 44
    iput-object p3, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemTitle:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/pantech/app/music/library/FragmentInfo$Category;)V
    .registers 6
    .param p1, "itemID"    # J
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "itemType"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemID:J

    .line 49
    iput-object p3, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemTitle:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 51
    return-void
.end method


# virtual methods
.method public getGroupType()Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    return-object v0
.end method

.method public getID()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemID:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->itemTitle:Ljava/lang/String;

    return-object v0
.end method
