.class public abstract Lorg/jdom2/output/support/AbstractFormattedWalker;
.super Ljava/lang/Object;
.source "AbstractFormattedWalker.java"

# interfaces
.implements Lorg/jdom2/output/support/Walker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractFormattedWalker$1;,
        Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;,
        Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    }
.end annotation


# static fields
.field private static final CDATATOKEN:Lorg/jdom2/CDATA;


# instance fields
.field private final alltext:Z

.field private final allwhite:Z

.field private final buffer:Ljava/lang/StringBuilder;

.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:I

.field private final endofline:Ljava/lang/String;

.field private final escape:Lorg/jdom2/output/EscapeStrategy;

.field private final fstack:Lorg/jdom2/output/support/FormatStack;

.field private hasnext:Z

.field private multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

.field private final newlineindent:Ljava/lang/String;

.field private pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lorg/jdom2/CDATA;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V
    .registers 11
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "doescape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;",
            "Lorg/jdom2/output/support/FormatStack;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->buffer:Ljava/lang/StringBuilder;

    .line 331
    iput-boolean v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 333
    iput v5, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    .line 334
    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 335
    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 346
    iput-object p2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    .line 347
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/List;

    .line 348
    if-eqz p3, :cond_44

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v2

    :goto_1f
    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->escape:Lorg/jdom2/output/EscapeStrategy;

    .line 349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    .line 350
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    .line 351
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLevelEOL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->endofline:Ljava/lang/String;

    .line 352
    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-nez v2, :cond_46

    .line 353
    iput-boolean v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    .line 354
    iput-boolean v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    .line 376
    :goto_3b
    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    iget v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v2, v3, :cond_81

    :goto_41
    iput-boolean v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 377
    return-void

    :cond_44
    move-object v2, v3

    .line 348
    goto :goto_1f

    .line 356
    :cond_46
    const/4 v0, 0x0

    .line 357
    .local v0, "atext":Z
    const/4 v1, 0x0

    .line 358
    .local v1, "awhite":Z
    invoke-direct {p0, v5}, Lorg/jdom2/output/support/AbstractFormattedWalker;->isTextLike(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 362
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->buildMultiText()Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 363
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    iget v6, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-lt v2, v6, :cond_68

    .line 364
    const/4 v0, 0x1

    .line 365
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    if-nez v2, :cond_7f

    move v1, v4

    .line 367
    :cond_68
    :goto_68
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    if-nez v2, :cond_7a

    .line 369
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    .line 370
    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 373
    :cond_7a
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    .line 374
    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    goto :goto_3b

    :cond_7f
    move v1, v5

    .line 365
    goto :goto_68

    .end local v0    # "atext":Z
    .end local v1    # "awhite":Z
    :cond_81
    move v4, v5

    .line 376
    goto :goto_41
.end method

.method static synthetic access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/EscapeStrategy;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->escape:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/support/FormatStack;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->endofline:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Lorg/jdom2/CDATA;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    return-object v0
.end method

.method private final buildMultiText()Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 502
    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    add-int/lit8 v2, v1, -0x1

    .line 503
    .local v2, "i":I
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v2, v1, :cond_23

    .line 504
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    invoke-virtual {v1}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v8

    .line 505
    .local v8, "ctype":Lorg/jdom2/Content$CType;
    sget-object v1, Lorg/jdom2/output/support/AbstractFormattedWalker$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v8}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_56

    .line 514
    .end local v8    # "ctype":Lorg/jdom2/Content$CType;
    :cond_23
    new-instance v0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    if-lez v1, :cond_52

    move v3, v4

    :goto_2a
    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v2, v1, :cond_54

    :goto_2e
    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    sub-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;-><init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;Lorg/jdom2/output/support/AbstractFormattedWalker$1;)V

    .line 516
    .local v0, "mt":Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    iget v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    sub-int v3, v2, v3

    invoke-virtual {p0, v0, v1, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker;->analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V

    .line 517
    invoke-virtual {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 518
    return-object v0

    .end local v0    # "mt":Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    :cond_52
    move v3, v5

    .line 514
    goto :goto_2a

    :cond_54
    move v4, v5

    goto :goto_2e

    .line 505
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private final isTextLike(I)Z
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 547
    sget-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {p0, p1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 555
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 551
    :pswitch_15
    const/4 v0, 0x1

    goto :goto_14

    .line 547
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method protected abstract analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
.end method

.method protected final get(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    return v0
.end method

.method public final isAllText()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    return v0
.end method

.method public final isAllWhitespace()Z
    .registers 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    return v0
.end method

.method public final isCDATA()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    if-lt v1, v2, :cond_14

    .line 538
    :cond_13
    :goto_13
    return v0

    .line 534
    :cond_14
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1000(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_13

    .line 538
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1100(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Lorg/jdom2/Content;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public final next()Lorg/jdom2/Content;
    .registers 14

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    if-nez v0, :cond_c

    .line 383
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot walk off end of Content"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_c
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    if-lt v0, v1, :cond_2b

    .line 388
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 392
    :cond_2b
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_56

    .line 395
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$900(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v0}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$900(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4f

    .line 399
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->buildMultiText()Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 402
    :cond_4f
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 406
    :cond_56
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_a0

    .line 411
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$808(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    .line 413
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1000(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_9c

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1100(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Lorg/jdom2/Content;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    aget-object v11, v0, v1

    .line 418
    .local v11, "ret":Lorg/jdom2/Content;
    :goto_7d
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    if-lt v0, v1, :cond_97

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v0, v1, :cond_9e

    :cond_97
    const/4 v0, 0x1

    :goto_98
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    move-object v12, v11

    .line 469
    .end local v11    # "ret":Lorg/jdom2/Content;
    .local v12, "ret":Lorg/jdom2/Content;
    :goto_9b
    return-object v12

    .line 413
    .end local v12    # "ret":Lorg/jdom2/Content;
    :cond_9c
    const/4 v11, 0x0

    goto :goto_7d

    .line 418
    .restart local v11    # "ret":Lorg/jdom2/Content;
    :cond_9e
    const/4 v0, 0x0

    goto :goto_98

    .line 426
    .end local v11    # "ret":Lorg/jdom2/Content;
    :cond_a0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/List;

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jdom2/Content;

    .line 431
    .restart local v11    # "ret":Lorg/jdom2/Content;
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-lt v0, v1, :cond_b9

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    :goto_b7
    move-object v12, v11

    .line 469
    .end local v11    # "ret":Lorg/jdom2/Content;
    .restart local v12    # "ret":Lorg/jdom2/Content;
    goto :goto_9b

    .line 436
    .end local v12    # "ret":Lorg/jdom2/Content;
    .restart local v11    # "ret":Lorg/jdom2/Content;
    :cond_b9
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    invoke-direct {p0, v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->isTextLike(I)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 438
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->buildMultiText()Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 439
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    if-lez v0, :cond_d3

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_b7

    .line 443
    :cond_d3
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v0, v1, :cond_104

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    if-eqz v0, :cond_104

    .line 446
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v2

    .line 448
    .local v2, "nc":I
    new-instance v0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;-><init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;Lorg/jdom2/output/support/AbstractFormattedWalker$1;)V

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 449
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1300(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_b7

    .line 453
    .end local v2    # "nc":I
    :cond_104
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 455
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->size:I

    if-ge v0, v1, :cond_119

    const/4 v0, 0x1

    :goto_116
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_b7

    :cond_119
    const/4 v0, 0x0

    goto :goto_116

    .line 461
    :cond_11b
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    if-eqz v0, :cond_13a

    .line 462
    new-instance v3, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iget v5, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->cursor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;-><init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;Lorg/jdom2/output/support/AbstractFormattedWalker$1;)V

    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 463
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1300(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 466
    :cond_13a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto/16 :goto_b7
.end method

.method public final text()Ljava/lang/String;
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 524
    :cond_12
    const/4 v0, 0x0

    .line 526
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1000(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_13
.end method
