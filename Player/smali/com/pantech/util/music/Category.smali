.class public Lcom/pantech/util/music/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private mColor:I

.field private mGenres:[Ljava/lang/String;

.field private mRepresent:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "genres"    # [Ljava/lang/String;
    .param p2, "represent"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/pantech/util/music/Category;->mRepresent:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/pantech/util/music/Category;->mGenres:[Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/pantech/util/music/Category;->mColor:I

    .line 12
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/util/music/Category;->mGenres:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 31
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 28
    :cond_8
    iget-object v1, p0, Lcom/pantech/util/music/Category;->mGenres:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 29
    const/4 v1, 0x1

    goto :goto_7

    .line 27
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/pantech/util/music/Category;->mColor:I

    return v0
.end method

.method public getGenres()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pantech/util/music/Category;->mGenres:[Ljava/lang/String;

    return-object v0
.end method

.method public getRepresent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pantech/util/music/Category;->mRepresent:Ljava/lang/String;

    return-object v0
.end method
