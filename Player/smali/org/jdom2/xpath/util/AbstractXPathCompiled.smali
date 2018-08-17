.class public abstract Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.super Ljava/lang/Object;
.source "AbstractXPathCompiled.java"

# interfaces
.implements Lorg/jdom2/xpath/XPathExpression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;,
        Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/xpath/XPathExpression",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;


# instance fields
.field private final xfilter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final xnamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private final xquery:Ljava/lang/String;

.field private xvariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;-><init>(Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;)V

    sput-object v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V
    .registers 23
    .param p1, "query"    # Ljava/lang/String;
    .param p4, "namespaces"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lorg/jdom2/Namespace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    .line 93
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    .line 113
    if-nez p1, :cond_1f

    .line 114
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Null query"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 116
    :cond_1f
    if-nez p2, :cond_29

    .line 117
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Null filter"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 119
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    sget-object v16, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    if-eqz p4, :cond_86

    .line 122
    move-object/from16 v2, p4

    .local v2, "arr$":[Lorg/jdom2/Namespace;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3e
    if-ge v3, v4, :cond_86

    aget-object v7, v2, v3

    .line 123
    .local v7, "ns":Lorg/jdom2/Namespace;
    if-nez v7, :cond_4c

    .line 124
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Null namespace"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 126
    :cond_4c
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Namespace;

    .line 127
    .local v8, "oldns":Lorg/jdom2/Namespace;
    if-eqz v8, :cond_83

    if-eq v8, v7, :cond_83

    .line 128
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "A Namespace with the prefix \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' has already been declared."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 122
    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 135
    .end local v2    # "arr$":[Lorg/jdom2/Namespace;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "ns":Lorg/jdom2/Namespace;
    .end local v8    # "oldns":Lorg/jdom2/Namespace;
    :cond_86
    if-eqz p3, :cond_1ca

    .line 136
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 137
    .local v6, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 138
    .local v11, "qname":Ljava/lang/String;
    if-nez v11, :cond_ac

    .line 139
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Variable with a null name"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 141
    :cond_ac
    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 142
    .local v9, "p":I
    if-gez v9, :cond_f2

    const-string v10, ""

    .line 143
    .local v10, "pfx":Ljava/lang/String;
    :goto_b6
    if-gez v9, :cond_f8

    move-object v5, v11

    .line 145
    .local v5, "lname":Ljava/lang/String;
    :goto_b9
    invoke-static {v10}, Lorg/jdom2/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, "vpfxmsg":Ljava/lang/String;
    if-eqz v14, :cond_ff

    .line 147
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prefix \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' for variable "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is illegal: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 142
    .end local v5    # "lname":Ljava/lang/String;
    .end local v10    # "pfx":Ljava/lang/String;
    .end local v14    # "vpfxmsg":Ljava/lang/String;
    :cond_f2
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_b6

    .line 143
    .restart local v10    # "pfx":Ljava/lang/String;
    :cond_f8
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b9

    .line 151
    .restart local v5    # "lname":Ljava/lang/String;
    .restart local v14    # "vpfxmsg":Ljava/lang/String;
    :cond_ff
    invoke-static {v5}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "vnamemsg":Ljava/lang/String;
    if-eqz v13, :cond_138

    .line 153
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Variable name \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' for variable "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is illegal: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 158
    :cond_138
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Namespace;

    .line 159
    .restart local v7    # "ns":Lorg/jdom2/Namespace;
    if-nez v7, :cond_171

    .line 160
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prefix \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' for variable "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has not been assigned a Namespace."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 165
    :cond_171
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 166
    .local v12, "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v12, :cond_193

    .line 167
    new-instance v12, Ljava/util/HashMap;

    .end local v12    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 168
    .restart local v12    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_90

    .line 172
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Variable with name "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\' has already been defined."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 177
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "lname":Ljava/lang/String;
    .end local v6    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "ns":Lorg/jdom2/Namespace;
    .end local v9    # "p":I
    .end local v10    # "pfx":Ljava/lang/String;
    .end local v11    # "qname":Ljava/lang/String;
    .end local v12    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "vnamemsg":Ljava/lang/String;
    .end local v14    # "vpfxmsg":Ljava/lang/String;
    :cond_1ca
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xquery:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    .line 179
    return-void
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
    .line 80
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->clone()Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/xpath/XPathExpression;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    const/4 v7, 0x0

    .line 207
    .local v7, "ret":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_4e

    .line 209
    .local v0, "c":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    move-object v7, v0

    .line 215
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v8, "vmt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v9, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 217
    .local v5, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v1, "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 219
    .local v6, "ne":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 210
    .end local v0    # "c":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    .end local v1    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "ne":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "vmt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_4e
    move-exception v2

    .line 211
    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Should never be getting a CloneNotSupportedException!"

    invoke-direct {v9, v10, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 221
    .end local v2    # "cnse":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "c":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    .restart local v1    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v8    # "vmt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_57
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 223
    .end local v1    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5f
    iput-object v8, v7, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    .line 224
    return-object v7
.end method

.method public diagnose(Ljava/lang/Object;Z)Lorg/jdom2/xpath/XPathDiagnostic;
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "firstonly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Lorg/jdom2/xpath/XPathDiagnostic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_a
    new-instance v1, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;-><init>(Ljava/lang/Object;Lorg/jdom2/xpath/XPathExpression;Ljava/util/List;Z)V

    return-object v1

    .line 331
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_10
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/filter/Filter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public evaluateFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "raw":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 324
    const/4 v1, 0x0

    .line 326
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    invoke-interface {v1, v0}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7
.end method

.method protected abstract evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getExpression()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xquery:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilter()Lorg/jdom2/filter/Filter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    return-object v0
.end method

.method public final getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 234
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Namespace;

    .line 235
    .local v0, "ns":Lorg/jdom2/Namespace;
    if-nez v0, :cond_29

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace with prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has not been declared."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_29
    return-object v0
.end method

.method public getNamespaces()[Lorg/jdom2/Namespace;
    .registers 4

    .prologue
    .line 244
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jdom2/Namespace;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    .line 246
    .local v0, "nsa":[Lorg/jdom2/Namespace;
    sget-object v1, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 247
    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 273
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-nez p1, :cond_a

    .line 274
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot get variable value for null qname"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_a
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 278
    .local v0, "pos":I
    if-ltz v0, :cond_26

    .line 279
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    :goto_25
    return-object v1

    :cond_26
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25
.end method

.method public final getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Lorg/jdom2/Namespace;

    .prologue
    .line 252
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v3, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    if-nez p2, :cond_3b

    const-string v2, ""

    :goto_6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 254
    .local v1, "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_40

    .line 255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in namespace \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been declared."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v1    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3b
    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 258
    .restart local v1    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_40
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_7a

    .line 260
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in namespace \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has not been declared."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_79
    const/4 v0, 0x0

    .line 268
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_7a
    return-object v0
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 295
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-nez p1, :cond_a

    .line 296
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot get variable value for null qname"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_a
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 300
    .local v0, "pos":I
    if-ltz v0, :cond_26

    .line 301
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 304
    :goto_25
    return-object v1

    :cond_26
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v1, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25
.end method

.method public setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Lorg/jdom2/Namespace;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 287
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 339
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v4, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .line 340
    .local v2, "nscnt":I
    const/4 v3, 0x0

    .line 341
    .local v3, "vcnt":I
    iget-object v4, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 342
    .local v0, "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_11

    .line 344
    .end local v0    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_23
    const-string v4, "[XPathExpression: %d namespaces and %d variables for query %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getExpression()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
