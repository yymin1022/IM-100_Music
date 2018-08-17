.class public Lorg/jdom2/input/stax/DTDParser;
.super Ljava/lang/Object;
.source "DTDParser.java"


# static fields
.field private static final metapattern:Ljava/lang/String; = " os <!DOCTYPE ms ( name )( ms ((SYSTEM ms  id )|(PUBLIC ms  id ( ms  id )?)))?( os \\[( internal )\\])? os > os "

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 220
    invoke-static {}, Lorg/jdom2/input/stax/DTDParser;->populatePatterns()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, " os <!DOCTYPE ms ( name )( ms ((SYSTEM ms  id )|(PUBLIC ms  id ( ms  id )?)))?( os \\[( internal )\\])? os > os "

    invoke-static {v0, v1}, Lorg/jdom2/input/stax/DTDParser;->buildPattern(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jdom2/input/stax/DTDParser;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method private static final buildPattern(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, " (\\w+) "

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 195
    .local v4, "search":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 196
    .local v0, "mat":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 198
    .local v1, "pos":I
    :goto_10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 199
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "rep":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 211
    goto :goto_10

    .line 212
    .end local v2    # "rep":Ljava/lang/String;
    :cond_34
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private static formatInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "internal"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x20

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x20

    .line 319
    .local v4, "quote":C
    const/4 v6, 0x1

    .line 320
    .local v6, "white":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v3, :cond_63

    aget-char v1, v0, v2

    .line 321
    .local v1, "ch":C
    if-ne v4, v8, :cond_5b

    .line 323
    invoke-static {v1}, Lorg/jdom2/input/stax/DTDParser;->isWhite(C)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 324
    if-nez v6, :cond_26

    .line 327
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    const/4 v6, 0x1

    .line 320
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 332
    :cond_29
    const/16 v7, 0x27

    if-eq v1, v7, :cond_31

    const/16 v7, 0x22

    if-ne v1, v7, :cond_48

    .line 334
    :cond_31
    move v4, v1

    .line 340
    :cond_32
    :goto_32
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_56

    .line 342
    if-eqz v6, :cond_52

    .line 345
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 351
    :goto_41
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    const/4 v6, 0x1

    goto :goto_26

    .line 335
    :cond_48
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_32

    .line 337
    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 348
    :cond_52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 355
    :cond_56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const/4 v6, 0x0

    goto :goto_26

    .line 361
    :cond_5b
    if-ne v1, v4, :cond_5f

    .line 363
    const/16 v4, 0x20

    .line 365
    :cond_5f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 368
    .end local v1    # "ch":C
    :cond_63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static final varargs getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;
    .registers 7
    .param p0, "mat"    # Ljava/util/regex/Matcher;
    .param p1, "groups"    # [I

    .prologue
    .line 291
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_11

    aget v1, v0, v2

    .line 292
    .local v1, "g":I
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 297
    .end local v1    # "g":I
    .end local v4    # "s":Ljava/lang/String;
    :goto_d
    return-object v4

    .line 291
    .restart local v1    # "g":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    .end local v1    # "g":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    goto :goto_d
.end method

.method private static final isWhite(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 307
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;
    .registers 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 390
    sget-object v6, Lorg/jdom2/input/stax/DTDParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 391
    .local v3, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_26

    .line 392
    new-instance v6, Lorg/jdom2/JDOMException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Doctype input does not appear to be valid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 396
    :cond_26
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "docemt":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_66

    invoke-static {v3, v6}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "sysid":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_72

    invoke-static {v3, v6}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "pubid":Ljava/lang/String;
    new-array v6, v7, [I

    const/4 v7, 0x0

    const/16 v8, 0x17

    aput v8, v6, v7

    invoke-static {v3, v6}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "internal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 403
    .local v1, "dt":Lorg/jdom2/DocType;
    if-eqz v4, :cond_5a

    .line 404
    invoke-interface {p1, v0, v4, v5}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v1

    .line 411
    :goto_50
    if-eqz v2, :cond_59

    .line 412
    invoke-static {v2}, Lorg/jdom2/input/stax/DTDParser;->formatInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 414
    :cond_59
    return-object v1

    .line 405
    :cond_5a
    if-eqz v5, :cond_61

    .line 406
    invoke-interface {p1, v0, v5}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v1

    goto :goto_50

    .line 408
    :cond_61
    invoke-interface {p1, v0}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v1

    goto :goto_50

    .line 397
    :array_66
    .array-data 4
        0x7
        0x9
        0x13
        0x15
    .end array-data

    .line 398
    :array_72
    .array-data 4
        0xd
        0xf
    .end array-data
.end method

.method private static final populatePatterns()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    const-string v2, "[^ \\n\\r\\t\\[>]+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "ms"

    const-string v2, "[ \\n\\r\\t]+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "os"

    const-string v2, "[ \\n\\r\\t]*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "id"

    const-string v2, "((\'([^\']*)\')|(\"([^\"]*)\"))"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "internal"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object v0
.end method
