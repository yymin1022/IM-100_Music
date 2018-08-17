.class public Lcom/pantech/app/music/list/module/MusicLife$GenreType;
.super Ljava/lang/Object;
.source "MusicLife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/MusicLife;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenreType"
.end annotation


# instance fields
.field genreID:I

.field genreName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/pantech/app/music/list/module/MusicLife$GenreType;->genreID:I

    .line 183
    iput-object p2, p0, Lcom/pantech/app/music/list/module/MusicLife$GenreType;->genreName:Ljava/lang/String;

    .line 184
    return-void
.end method
