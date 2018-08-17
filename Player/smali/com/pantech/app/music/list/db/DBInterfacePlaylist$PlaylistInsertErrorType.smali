.class public final enum Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
.super Ljava/lang/Enum;
.source "DBInterfacePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistInsertErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_ENQUEUE_INVALID_CNTS_TYPE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

.field public static final enum ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;


# instance fields
.field mCount:I

.field mPlaylistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_NONE"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 45
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_DUPLICATION"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 46
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_ALL_DUPLICATION"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 47
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_NONE_TO_ADD"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 48
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 49
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_REARRANGE_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 50
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    const-string v1, "ERROR_ENQUEUE_INVALID_CNTS_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ENQUEUE_INVALID_CNTS_TYPE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ENQUEUE_INVALID_CNTS_TYPE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->$VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->$VALUES:[Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    return-object v0
.end method


# virtual methods
.method public getInsertedCount()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->mCount:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$2;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistInsertErrorType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 82
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 79
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 75
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 3
    .param p1, "val"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput p1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->mCount:I

    .line 58
    iput-object p2, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->mPlaylistName:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$2;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistInsertErrorType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 105
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 92
    :pswitch_10
    const-string v0, "ERROR_NONE"

    goto :goto_f

    .line 94
    :pswitch_13
    const-string v0, "ERROR_DUPLICATION"

    goto :goto_f

    .line 96
    :pswitch_16
    const-string v0, "ERROR_ALL_DUPLICATION"

    goto :goto_f

    .line 98
    :pswitch_19
    const-string v0, "ERROR_NONE_TO_ADD"

    goto :goto_f

    .line 100
    :pswitch_1c
    const-string v0, "ERROR_UNKNOWN"

    goto :goto_f

    .line 102
    :pswitch_1f
    const-string v0, "ERROR_ENQUEUE_INVALID_CNTS_TYPE"

    goto :goto_f

    .line 89
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method
