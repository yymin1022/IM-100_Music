.class public Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;
.super Ljava/lang/Object;
.source "MusicLife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/MusicLife;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicLifeItem"
.end annotation


# instance fields
.field public mAssosiatedGenres:[Ljava/lang/String;

.field public mResID:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "resID"    # I
    .param p2, "assosiatedGenres"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;->mResID:I

    .line 45
    iput-object p2, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;->mAssosiatedGenres:[Ljava/lang/String;

    .line 46
    return-void
.end method
