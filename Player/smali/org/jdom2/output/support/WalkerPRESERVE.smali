.class public Lorg/jdom2/output/support/WalkerPRESERVE;
.super Ljava/lang/Object;
.source "WalkerPRESERVE.java"

# interfaces
.implements Lorg/jdom2/output/support/Walker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/WalkerPRESERVE$1;
    }
.end annotation


# instance fields
.field private final alltext:Z

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

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->cursor:I

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    .line 85
    iget v2, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    if-nez v2, :cond_16

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->alltext:Z

    .line 103
    :goto_13
    iput-object p1, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->content:Ljava/util/List;

    .line 104
    return-void

    .line 88
    :cond_16
    const/4 v0, 0x1

    .line 89
    .local v0, "atext":Z
    iget v1, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    .line 90
    .local v1, "i":I
    :goto_19
    :pswitch_19
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_36

    if-eqz v0, :cond_36

    .line 91
    sget-object v3, Lorg/jdom2/output/support/WalkerPRESERVE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_3a

    .line 97
    const/4 v0, 0x0

    goto :goto_19

    .line 100
    :cond_36
    iput-boolean v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->alltext:Z

    goto :goto_13

    .line 91
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 113
    iget v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->cursor:I

    iget v1, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAllText()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->alltext:Z

    return v0
.end method

.method public isAllWhitespace()Z
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCDATA()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lorg/jdom2/Content;
    .registers 4

    .prologue
    .line 118
    iget v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->cursor:I

    iget v1, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->size:I

    if-lt v0, v1, :cond_e

    .line 119
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot walk off end of Content"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_e
    iget-object v0, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->content:Ljava/util/List;

    iget v1, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/output/support/WalkerPRESERVE;->cursor:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
