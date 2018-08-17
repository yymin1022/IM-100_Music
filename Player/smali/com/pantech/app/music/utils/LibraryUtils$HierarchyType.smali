.class public final enum Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;
.super Ljava/lang/Enum;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HierarchyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

.field public static final enum HIERARCHY_ALONE:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

.field public static final enum HIERARCHY_CHILD:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

.field public static final enum HIERARCHY_GROUP:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    const-string v1, "HIERARCHY_GROUP"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_GROUP:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    .line 595
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    const-string v1, "HIERARCHY_CHILD"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_CHILD:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    .line 596
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    const-string v1, "HIERARCHY_ALONE"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_ALONE:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    .line 592
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_GROUP:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_CHILD:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_ALONE:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 592
    const-class v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;
    .registers 1

    .prologue
    .line 592
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 612
    const-string v0, ""

    :goto_d
    return-object v0

    .line 605
    :pswitch_e
    const-string v0, "HIERARCHY_GROUP"

    goto :goto_d

    .line 607
    :pswitch_11
    const-string v0, "HIERARCHY_CHILD"

    goto :goto_d

    .line 609
    :pswitch_14
    const-string v0, "HIERARCHY_ALONE"

    goto :goto_d

    .line 602
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method
