.class Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;
.super Ljava/lang/Object;
.source "MusicItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColumnsMapType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;
    }
.end annotation


# instance fields
.field columns:[Ljava/lang/String;

.field type:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;->type:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    .line 73
    iput-object p2, p0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;->columns:[Ljava/lang/String;

    .line 74
    return-void
.end method
