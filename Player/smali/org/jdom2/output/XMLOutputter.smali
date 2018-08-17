.class public final Lorg/jdom2/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/XMLOutputter$1;,
        Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 226
    new-instance v0, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;-><init>(Lorg/jdom2/output/XMLOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .registers 3
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .registers 4
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .param p2, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 239
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 266
    if-nez p1, :cond_17

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 267
    if-nez p2, :cond_14

    sget-object p2, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    .end local p2    # "processor":Lorg/jdom2/output/support/XMLOutputProcessor;
    :cond_14
    iput-object p2, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 268
    return-void

    .line 266
    .restart local p2    # "processor":Lorg/jdom2/output/support/XMLOutputProcessor;
    :cond_17
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    goto :goto_e
.end method

.method public constructor <init>(Lorg/jdom2/output/XMLOutputter;)V
    .registers 4
    .param p1, "that"    # Lorg/jdom2/output/XMLOutputter;

    .prologue
    .line 288
    iget-object v0, p1, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .registers 3
    .param p1, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 318
    return-void
.end method

.method private static final makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;
    .registers 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/jdom2/output/XMLOutputter;->clone()Lorg/jdom2/output/XMLOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/XMLOutputter;
    .registers 4

    .prologue
    .line 1039
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/output/XMLOutputter;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 1040
    :catch_7
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1007
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeAttributeEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1019
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeElementEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getXMLOutputProcessor()Lorg/jdom2/output/support/XMLOutputProcessor;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-object v0
.end method

.method public final output(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 4
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    .line 475
    return-void
.end method

.method public final output(Ljava/util/List;Ljava/io/Writer;)V
    .registers 5
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 902
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 903
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V

    .line 491
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    .registers 5
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V

    .line 919
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 920
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V

    .line 524
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    .registers 5
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    .line 954
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 955
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V

    .line 412
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    .registers 5
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V

    .line 840
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 841
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V

    .line 395
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    .registers 5
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V

    .line 823
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 824
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V

    .line 429
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .registers 5
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 860
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 861
    return-void
.end method

.method public output(Lorg/jdom2/EntityRef;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V

    .line 557
    return-void
.end method

.method public final output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    .registers 5
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V

    .line 989
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 990
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V

    .line 541
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    .registers 5
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    .line 972
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 973
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V

    .line 508
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    .registers 5
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V

    .line 937
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 938
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V

    .line 450
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .registers 6
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 882
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 883
    return-void
.end method

.method public final outputElementContentString(Lorg/jdom2/Element;)Ljava/lang/String;
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 787
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 789
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 793
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 790
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 653
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 657
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 654
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/CDATA;)Ljava/lang/String;
    .registers 4
    .param p1, "cdata"    # Lorg/jdom2/CDATA;

    .prologue
    .line 673
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 675
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 679
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/Comment;)Ljava/lang/String;
    .registers 4
    .param p1, "comment"    # Lorg/jdom2/Comment;

    .prologue
    .line 717
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 719
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 723
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 720
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/DocType;)Ljava/lang/String;
    .registers 4
    .param p1, "doctype"    # Lorg/jdom2/DocType;

    .prologue
    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 604
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 608
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 605
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/Document;)Ljava/lang/String;
    .registers 4
    .param p1, "doc"    # Lorg/jdom2/Document;

    .prologue
    .line 580
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 582
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 586
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 583
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/Element;)Ljava/lang/String;
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 624
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 626
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 630
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 627
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/EntityRef;)Ljava/lang/String;
    .registers 4
    .param p1, "entity"    # Lorg/jdom2/EntityRef;

    .prologue
    .line 761
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 763
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 767
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 764
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;
    .registers 4
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .prologue
    .line 739
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 741
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 745
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 742
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public final outputString(Lorg/jdom2/Text;)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Lorg/jdom2/Text;

    .prologue
    .line 695
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 697
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 701
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 698
    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .registers 3
    .param p1, "newFormat"    # Lorg/jdom2/output/Format;

    .prologue
    .line 335
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 336
    return-void
.end method

.method public setXMLOutputProcessor(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .registers 2
    .param p1, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const-string v5, "XMLOutputter[omitDeclaration = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v5, v5, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1059
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v5, "encoding = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v5, v5, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v5, "omitEncoding = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v5, v5, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1065
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string v5, "indent = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v5, v5, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v5, "expandEmptyElements = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v5, v5, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1072
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const-string v5, "lineSeparator = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v5, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v5, v5, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_6e
    if-ge v3, v4, :cond_a6

    aget-char v2, v0, v3

    .line 1075
    .local v2, "ch":C
    packed-switch v2, :pswitch_data_d0

    .line 1086
    :pswitch_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 1077
    :pswitch_94
    const-string v5, "\\r"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 1080
    :pswitch_9a
    const-string v5, "\\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 1083
    :pswitch_a0
    const-string v5, "\\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 1090
    .end local v2    # "ch":C
    :cond_a6
    const-string v5, "\', "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v5, "textMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v6, v6, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1075
    nop

    :pswitch_data_d0
    .packed-switch 0x9
        :pswitch_a0
        :pswitch_9a
        :pswitch_75
        :pswitch_75
        :pswitch_94
    .end packed-switch
.end method
