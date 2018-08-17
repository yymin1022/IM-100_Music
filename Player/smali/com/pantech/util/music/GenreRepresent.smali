.class public Lcom/pantech/util/music/GenreRepresent;
.super Ljava/lang/Object;
.source "GenreRepresent.java"


# static fields
.field protected static final mBallad:[Ljava/lang/String;

.field protected static final mColor_etc:I = -0x1000000

.field protected static final mDance:[Ljava/lang/String;

.field protected static final mDrama:[Ljava/lang/String;

.field private static mGenreTable:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/util/music/Category;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mGenre_etc:Ljava/lang/String; = "\uae30\ud0c0"

.field protected static final mRnB:[Ljava/lang/String;

.field protected static final mRock:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\ub77d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mRock:[Ljava/lang/String;

    .line 13
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\ub304\uc2a4"

    aput-object v1, v0, v2

    const-string v1, "Dance"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mDance:[Ljava/lang/String;

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\ubc1c\ub77c\ub4dc"

    aput-object v1, v0, v2

    const-string v1, "Ballad"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mBallad:[Ljava/lang/String;

    .line 15
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\ub4dc\ub77c\ub9c8"

    aput-object v1, v0, v2

    const-string v1, "Drama"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mDrama:[Ljava/lang/String;

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\uc54c\uc564\ube44"

    aput-object v1, v0, v2

    const-string v1, "R&B"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mRnB:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_69

    .line 25
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/util/music/Category;

    sget-object v2, Lcom/pantech/util/music/GenreRepresent;->mRock:[Ljava/lang/String;

    sget-object v3, Lcom/pantech/util/music/GenreRepresent;->mRock:[Ljava/lang/String;

    aget-object v3, v3, v5

    const v4, -0xffff01

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/util/music/Category;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/util/music/Category;

    sget-object v2, Lcom/pantech/util/music/GenreRepresent;->mDance:[Ljava/lang/String;

    sget-object v3, Lcom/pantech/util/music/GenreRepresent;->mDance:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/high16 v4, -0x10000

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/util/music/Category;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/util/music/Category;

    sget-object v2, Lcom/pantech/util/music/GenreRepresent;->mBallad:[Ljava/lang/String;

    sget-object v3, Lcom/pantech/util/music/GenreRepresent;->mBallad:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/16 v4, -0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/util/music/Category;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/util/music/Category;

    sget-object v2, Lcom/pantech/util/music/GenreRepresent;->mDrama:[Ljava/lang/String;

    sget-object v3, Lcom/pantech/util/music/GenreRepresent;->mDrama:[Ljava/lang/String;

    aget-object v3, v3, v5

    const v4, -0xff0100

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/util/music/Category;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/util/music/Category;

    sget-object v2, Lcom/pantech/util/music/GenreRepresent;->mRnB:[Ljava/lang/String;

    sget-object v3, Lcom/pantech/util/music/GenreRepresent;->mRnB:[Ljava/lang/String;

    aget-object v3, v3, v5

    const v4, -0x777778

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/util/music/Category;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_69
    return-void
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .registers 5
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 48
    const/high16 v1, -0x1000000

    :goto_e
    return v1

    .line 43
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/util/music/Category;

    .line 44
    .local v0, "category":Lcom/pantech/util/music/Category;
    invoke-virtual {v0, p1}, Lcom/pantech/util/music/Category;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    invoke-virtual {v0}, Lcom/pantech/util/music/Category;->getColor()I

    move-result v1

    goto :goto_e
.end method

.method public getGenre(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Lcom/pantech/util/music/GenreRepresent;->mGenreTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 39
    const-string v1, "\uae30\ud0c0"

    :goto_e
    return-object v1

    .line 34
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/util/music/Category;

    .line 35
    .local v0, "category":Lcom/pantech/util/music/Category;
    invoke-virtual {v0, p1}, Lcom/pantech/util/music/Category;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v0}, Lcom/pantech/util/music/Category;->getRepresent()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method
