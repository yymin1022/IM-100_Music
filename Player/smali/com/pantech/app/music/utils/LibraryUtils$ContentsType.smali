.class public final enum Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;
.super Ljava/lang/Enum;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

.field public static final enum CONTENTS_TYPE_LOCAL:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

.field public static final enum CONTENTS_TYPE_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

.field public static final enum CONTENTS_TYPE_SECRET_BOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

.field public static final enum CONTENTS_TYPE_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 624
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    const-string v1, "CONTENTS_TYPE_LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_LOCAL:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    .line 625
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    const-string v1, "CONTENTS_TYPE_UBOX"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    .line 626
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    const-string v1, "CONTENTS_TYPE_NOWPLAYING"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    .line 627
    new-instance v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    const-string v1, "CONTENTS_TYPE_SECRET_BOX"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_SECRET_BOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    .line 622
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_LOCAL:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_SECRET_BOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

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
    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 622
    const-class v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;
    .registers 1

    .prologue
    .line 622
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 633
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 645
    const-string v0, ""

    :goto_d
    return-object v0

    .line 636
    :pswitch_e
    const-string v0, "CONTENTS_TYPE_LOCAL"

    goto :goto_d

    .line 638
    :pswitch_11
    const-string v0, "CONTENTS_TYPE_UBOX"

    goto :goto_d

    .line 640
    :pswitch_14
    const-string v0, "CONTENTS_TYPE_NOWPLAYING"

    goto :goto_d

    .line 642
    :pswitch_17
    const-string v0, "CONTENTS_TYPE_SECRET_BOX"

    goto :goto_d

    .line 633
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method
