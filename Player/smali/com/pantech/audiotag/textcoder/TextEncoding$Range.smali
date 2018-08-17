.class Lcom/pantech/audiotag/textcoder/TextEncoding$Range;
.super Ljava/lang/Object;
.source "TextEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/audiotag/textcoder/TextEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field private mFirst:I

.field private mLast:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "first"    # I
    .param p2, "last"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->mFirst:I

    .line 77
    iput p2, p0, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->mLast:I

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/audiotag/textcoder/TextEncoding$Range;)I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->mFirst:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/audiotag/textcoder/TextEncoding$Range;)I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->mLast:I

    return v0
.end method
