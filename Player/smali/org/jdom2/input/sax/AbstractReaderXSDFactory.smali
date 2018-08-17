.class public Lorg/jdom2/input/sax/AbstractReaderXSDFactory;
.super Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.source "AbstractReaderXSDFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    }
.end annotation


# static fields
.field private static final schemafactl:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/xml/validation/SchemaFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->schemafactl:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)V
    .registers 5
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 316
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 276
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)V
    .registers 5
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 296
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)V
    .registers 5
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "sources"    # [Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 336
    return-void
.end method

.method private static final varargs getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;
    .registers 6
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_a

    .line 157
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null input array"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_a
    array-length v2, p1

    if-nez v2, :cond_15

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_15
    array-length v2, p1

    new-array v1, v2, [Ljavax/xml/transform/Source;

    .line 164
    .local v1, "sources":[Ljavax/xml/transform/Source;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v2, p1

    if-ge v0, v2, :cond_34

    .line 165
    aget-object v2, p1, v0

    if-nez v2, :cond_28

    .line 166
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null SystemID"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_28
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    aput-object v2, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 170
    :cond_34
    invoke-static {p0, v1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v2

    return-object v2
.end method

.method private static final varargs getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .registers 8
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "sources"    # [Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_a

    .line 235
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot specify a null input array"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_a
    array-length v3, p1

    if-nez v3, :cond_15

    .line 238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You need at least one XSD Source for an XML Schema validator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_15
    :try_start_15
    sget-object v3, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->schemafactl:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/validation/SchemaFactory;

    .line 243
    .local v2, "sfac":Ljavax/xml/validation/SchemaFactory;
    if-nez v2, :cond_28

    .line 244
    invoke-interface {p0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;->getSchemaFactory()Ljavax/xml/validation/SchemaFactory;

    move-result-object v2

    .line 245
    sget-object v3, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->schemafactl:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 247
    :cond_28
    if-nez v2, :cond_50

    .line 248
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unable to create XSDSchema validator."

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_32
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_32} :catch_32

    .line 251
    .end local v2    # "sfac":Ljavax/xml/validation/SchemaFactory;
    :catch_32
    move-exception v0

    .line 252
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/jdom2/JDOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a Schema for Sources "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 250
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "sfac":Ljavax/xml/validation/SchemaFactory;
    :cond_50
    :try_start_50
    invoke-virtual {v2, p1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    :try_end_53
    .catch Lorg/xml/sax/SAXException; {:try_start_50 .. :try_end_53} :catch_32

    move-result-object v3

    return-object v3
.end method

.method private static final varargs getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;
    .registers 6
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_a

    .line 128
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null input array"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_a
    array-length v2, p1

    if-nez v2, :cond_15

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_15
    array-length v2, p1

    new-array v1, v2, [Ljavax/xml/transform/Source;

    .line 135
    .local v1, "urls":[Ljavax/xml/transform/Source;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v2, p1

    if-ge v0, v2, :cond_34

    .line 136
    aget-object v2, p1, v0

    if-nez v2, :cond_28

    .line 137
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null SystemID"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_28
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 141
    :cond_34
    invoke-static {p0, v1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v2

    return-object v2
.end method

.method private static final varargs getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .registers 13
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_a

    .line 186
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Cannot specify a null input array"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_a
    array-length v8, p1

    if-nez v8, :cond_15

    .line 189
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :cond_15
    array-length v8, p1

    new-array v7, v8, [Ljava/io/InputStream;

    .line 194
    .local v7, "streams":[Ljava/io/InputStream;
    :try_start_18
    array-length v8, p1

    new-array v6, v8, [Ljavax/xml/transform/Source;

    .line 195
    .local v6, "sources":[Ljavax/xml/transform/Source;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v8, p1

    if-ge v2, v8, :cond_74

    .line 196
    aget-object v8, p1, v2

    if-nez v8, :cond_3b

    .line 197
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Cannot specify a null SystemID"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2b

    .line 211
    .end local v2    # "i":I
    .end local v6    # "sources":[Ljavax/xml/transform/Source;
    :catchall_2b
    move-exception v8

    move-object v0, v7

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2f
    if-ge v3, v5, :cond_87

    aget-object v4, v0, v3

    .line 212
    .local v4, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_38

    .line 214
    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_8a

    .line 211
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 199
    .end local v0    # "arr$":[Ljava/io/InputStream;
    .end local v3    # "i$":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len$":I
    .restart local v2    # "i":I
    .restart local v6    # "sources":[Ljavax/xml/transform/Source;
    :cond_3b
    const/4 v4, 0x0

    .line 201
    .restart local v4    # "is":Ljava/io/InputStream;
    :try_start_3c
    aget-object v8, p1, v2

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_54
    .catchall {:try_start_3c .. :try_end_41} :catchall_2b

    move-result-object v4

    .line 206
    :try_start_42
    aput-object v4, v7, v2

    .line 207
    new-instance v8, Ljavax/xml/transform/stream/StreamSource;

    aget-object v9, p1, v2

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    aput-object v8, v6, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 202
    :catch_54
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Lorg/jdom2/JDOMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read Schema URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v2

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 209
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_74
    invoke-static {p0, v6}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    :try_end_77
    .catchall {:try_start_42 .. :try_end_77} :catchall_2b

    move-result-object v8

    .line 211
    move-object v0, v7

    .restart local v0    # "arr$":[Ljava/io/InputStream;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_7b
    if-ge v3, v5, :cond_8c

    aget-object v4, v0, v3

    .line 212
    .restart local v4    # "is":Ljava/io/InputStream;
    if-eqz v4, :cond_84

    .line 214
    :try_start_81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_88

    .line 211
    :cond_84
    :goto_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .end local v2    # "i":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "sources":[Ljavax/xml/transform/Source;
    :cond_87
    throw v8

    .line 215
    .restart local v2    # "i":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "sources":[Ljavax/xml/transform/Source;
    :catch_88
    move-exception v9

    goto :goto_84

    .end local v2    # "i":I
    .end local v6    # "sources":[Ljavax/xml/transform/Source;
    :catch_8a
    move-exception v9

    goto :goto_38

    .line 211
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "i":I
    .restart local v6    # "sources":[Ljavax/xml/transform/Source;
    :cond_8c
    return-object v8
.end method
