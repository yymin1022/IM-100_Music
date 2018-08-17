.class public Lorg/jdom2/located/LocatedJDOMFactory;
.super Lorg/jdom2/DefaultJDOMFactory;
.source "LocatedJDOMFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lorg/jdom2/located/LocatedCDATA;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedCDATA;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "ret":Lorg/jdom2/located/LocatedCDATA;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedCDATA;->setLine(I)V

    .line 88
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedCDATA;->setColumn(I)V

    .line 89
    return-object v0
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lorg/jdom2/located/LocatedComment;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedComment;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "ret":Lorg/jdom2/located/LocatedComment;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedComment;->setLine(I)V

    .line 104
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedComment;->setColumn(I)V

    .line 105
    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lorg/jdom2/located/LocatedDocType;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedDocType;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "ret":Lorg/jdom2/located/LocatedDocType;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedDocType;->setLine(I)V

    .line 130
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedDocType;->setColumn(I)V

    .line 131
    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lorg/jdom2/located/LocatedDocType;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedDocType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v0, "ret":Lorg/jdom2/located/LocatedDocType;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedDocType;->setLine(I)V

    .line 122
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedDocType;->setColumn(I)V

    .line 123
    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lorg/jdom2/located/LocatedDocType;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/located/LocatedDocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "ret":Lorg/jdom2/located/LocatedDocType;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedDocType;->setLine(I)V

    .line 113
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedDocType;->setColumn(I)V

    .line 114
    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lorg/jdom2/located/LocatedElement;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedElement;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "ret":Lorg/jdom2/located/LocatedElement;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedElement;->setLine(I)V

    .line 146
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedElement;->setColumn(I)V

    .line 147
    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lorg/jdom2/located/LocatedElement;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v0, "ret":Lorg/jdom2/located/LocatedElement;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedElement;->setLine(I)V

    .line 154
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedElement;->setColumn(I)V

    .line 155
    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Lorg/jdom2/located/LocatedElement;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/located/LocatedElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "ret":Lorg/jdom2/located/LocatedElement;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedElement;->setLine(I)V

    .line 163
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedElement;->setColumn(I)V

    .line 164
    return-object v0
.end method

.method public element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 136
    new-instance v0, Lorg/jdom2/located/LocatedElement;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedElement;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 137
    .local v0, "ret":Lorg/jdom2/located/LocatedElement;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedElement;->setLine(I)V

    .line 138
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedElement;->setColumn(I)V

    .line 139
    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Lorg/jdom2/located/LocatedEntityRef;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedEntityRef;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "ret":Lorg/jdom2/located/LocatedEntityRef;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedEntityRef;->setLine(I)V

    .line 198
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedEntityRef;->setColumn(I)V

    .line 199
    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lorg/jdom2/located/LocatedEntityRef;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedEntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v0, "ret":Lorg/jdom2/located/LocatedEntityRef;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedEntityRef;->setLine(I)V

    .line 215
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedEntityRef;->setColumn(I)V

    .line 216
    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Lorg/jdom2/located/LocatedEntityRef;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/located/LocatedEntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v0, "ret":Lorg/jdom2/located/LocatedEntityRef;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedEntityRef;->setLine(I)V

    .line 207
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedEntityRef;->setColumn(I)V

    .line 208
    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lorg/jdom2/located/LocatedProcessingInstruction;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedProcessingInstruction;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "ret":Lorg/jdom2/located/LocatedProcessingInstruction;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedProcessingInstruction;->setLine(I)V

    .line 172
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedProcessingInstruction;->setColumn(I)V

    .line 173
    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Lorg/jdom2/located/LocatedProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v0, "ret":Lorg/jdom2/located/LocatedProcessingInstruction;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedProcessingInstruction;->setLine(I)V

    .line 190
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedProcessingInstruction;->setColumn(I)V

    .line 191
    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jdom2/located/LocatedProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/located/LocatedProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    .local v0, "ret":Lorg/jdom2/located/LocatedProcessingInstruction;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedProcessingInstruction;->setLine(I)V

    .line 181
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedProcessingInstruction;->setColumn(I)V

    .line 182
    return-object v0
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lorg/jdom2/located/LocatedText;

    invoke-direct {v0, p3}, Lorg/jdom2/located/LocatedText;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "ret":Lorg/jdom2/located/LocatedText;
    invoke-virtual {v0, p1}, Lorg/jdom2/located/LocatedText;->setLine(I)V

    .line 96
    invoke-virtual {v0, p2}, Lorg/jdom2/located/LocatedText;->setColumn(I)V

    .line 97
    return-object v0
.end method
