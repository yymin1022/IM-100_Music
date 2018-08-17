.class public Lorg/jdom2/filter/ContentFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "ContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter",
        "<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# static fields
.field public static final CDATA:I = 0x2

.field public static final COMMENT:I = 0x8

.field public static final DOCTYPE:I = 0x80

.field public static final DOCUMENT:I = 0x40

.field public static final ELEMENT:I = 0x1

.field public static final ENTITYREF:I = 0x20

.field public static final PI:I = 0x10

.field public static final TEXT:I = 0x4

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private filterMask:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 120
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "mask"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 144
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ContentFilter;->setFilterMask(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "allVisible"    # Z

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 130
    if-eqz p1, :cond_9

    .line 131
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    .line 136
    :goto_8
    return-void

    .line 134
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    iget v1, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    if-ne p0, p1, :cond_5

    .line 356
    :cond_4
    :goto_4
    return v1

    .line 350
    :cond_5
    instance-of v3, p1, Lorg/jdom2/filter/ContentFilter;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 352
    check-cast v0, Lorg/jdom2/filter/ContentFilter;

    .line 354
    .local v0, "filter":Lorg/jdom2/filter/ContentFilter;
    iget v3, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    iget v4, v0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ContentFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Content;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 305
    if-eqz p1, :cond_b

    const-class v2, Lorg/jdom2/Content;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move-object v0, v1

    .line 336
    :cond_c
    :goto_c
    return-object v0

    :cond_d
    move-object v0, p1

    .line 309
    check-cast v0, Lorg/jdom2/Content;

    .line 311
    .local v0, "content":Lorg/jdom2/Content;
    instance-of v2, v0, Lorg/jdom2/Element;

    if-eqz v2, :cond_1c

    .line 312
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 314
    :cond_1c
    instance-of v2, v0, Lorg/jdom2/CDATA;

    if-eqz v2, :cond_28

    .line 315
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 317
    :cond_28
    instance-of v2, v0, Lorg/jdom2/Text;

    if-eqz v2, :cond_34

    .line 318
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 320
    :cond_34
    instance-of v2, v0, Lorg/jdom2/Comment;

    if-eqz v2, :cond_40

    .line 321
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 323
    :cond_40
    instance-of v2, v0, Lorg/jdom2/ProcessingInstruction;

    if-eqz v2, :cond_4c

    .line 324
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 326
    :cond_4c
    instance-of v2, v0, Lorg/jdom2/EntityRef;

    if-eqz v2, :cond_58

    .line 327
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 332
    :cond_58
    instance-of v2, v0, Lorg/jdom2/DocType;

    if-eqz v2, :cond_64

    .line 333
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_c

    :cond_64
    move-object v0, v1

    .line 336
    goto :goto_c
.end method

.method public getFilterMask()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public setCDATAVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_9

    .line 214
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 219
    :goto_8
    return-void

    .line 217
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setCommentVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 243
    if-eqz p1, :cond_9

    .line 244
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 249
    :goto_8
    return-void

    .line 247
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setDefaultMask()V
    .registers 2

    .prologue
    .line 170
    const/16 v0, 0xff

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 172
    return-void
.end method

.method public setDocTypeVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 288
    if-eqz p1, :cond_9

    .line 289
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 294
    :goto_8
    return-void

    .line 292
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setDocumentContent()V
    .registers 2

    .prologue
    .line 179
    const/16 v0, 0x99

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 180
    return-void
.end method

.method public setElementContent()V
    .registers 2

    .prologue
    .line 187
    const/16 v0, 0x3f

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 189
    return-void
.end method

.method public setElementVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 198
    if-eqz p1, :cond_9

    .line 199
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 204
    :goto_8
    return-void

    .line 202
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setEntityRefVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_9

    .line 274
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 279
    :goto_8
    return-void

    .line 277
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setFilterMask(I)V
    .registers 3
    .param p1, "mask"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    .line 163
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 164
    return-void
.end method

.method public setPIVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 258
    if-eqz p1, :cond_9

    .line 259
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 264
    :goto_8
    return-void

    .line 262
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method

.method public setTextVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_9

    .line 229
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 234
    :goto_8
    return-void

    .line 232
    :cond_9
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_8
.end method
