.class Lcom/pantech/app/music/service/MusicQueue$Shuffler;
.super Ljava/lang/Object;
.source "MusicQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shuffler"
.end annotation


# instance fields
.field private mPrevious:I

.field private mRandom:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/service/MusicQueue$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/app/music/service/MusicQueue$1;

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicQueue$Shuffler;-><init>()V

    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .registers 5
    .param p1, "interval"    # I

    .prologue
    .line 940
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, p1}, Ljava/util/Random;->nextInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_10

    move-result v1

    .line 945
    .local v1, "ret":I
    iget v2, p0, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->mPrevious:I

    if-ne v1, v2, :cond_d

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    .line 946
    :cond_d
    :goto_d
    iput v1, p0, Lcom/pantech/app/music/service/MusicQueue$Shuffler;->mPrevious:I

    .line 947
    return v1

    .line 941
    .end local v1    # "ret":I
    :catch_10
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 943
    .restart local v1    # "ret":I
    goto :goto_d
.end method
