.class public final Lorg/jdom2/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/Namespace$NamespaceSerializationProxy;
    }
.end annotation


# static fields
.field public static final NO_NAMESPACE:Lorg/jdom2/Namespace;

.field public static final XML_NAMESPACE:Lorg/jdom2/Namespace;

.field private static final namespacemap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final transient prefix:Ljava/lang/String;

.field private final transient uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 87
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x200

    const/high16 v4, 0x3f400000    # 0.75f

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v2, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v2, Lorg/jdom2/Namespace;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 95
    new-instance v2, Lorg/jdom2/Namespace;

    const-string v3, "xml"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 104
    .local v0, "nmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 109
    .local v1, "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v2, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .registers 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;
    .registers 12
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_1b

    .line 136
    if-eqz p0, :cond_c

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 137
    :cond_c
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 211
    :cond_e
    :goto_e
    return-object v0

    .line 141
    :cond_f
    new-instance v6, Lorg/jdom2/IllegalNameException;

    const-string v7, ""

    const-string v8, "namespace"

    const-string v9, "Namespace URIs must be non-null and non-empty Strings"

    invoke-direct {v6, v7, v8, v9}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_1b
    sget-object v6, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    .line 148
    .local v4, "urimap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    if-nez v4, :cond_43

    .line 152
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 153
    new-instance v6, Lorg/jdom2/IllegalNameException;

    const-string v7, "Namespace URI"

    invoke-direct {v6, p1, v7, v3}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 156
    :cond_33
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v4    # "urimap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 157
    .restart local v4    # "urimap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    sget-object v6, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentMap;

    .line 160
    .local v5, "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    if-eqz v5, :cond_43

    .line 164
    move-object v4, v5

    .line 170
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_43
    if-nez p0, :cond_63

    const-string v6, ""

    :goto_47
    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Namespace;

    .line 171
    .local v0, "ns":Lorg/jdom2/Namespace;
    if-nez v0, :cond_e

    .line 179
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 183
    new-instance v6, Lorg/jdom2/IllegalNameException;

    const-string v7, ""

    const-string v8, "namespace"

    const-string v9, "Namespace URIs must be non-null and non-empty Strings"

    invoke-direct {v6, v7, v8, v9}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .end local v0    # "ns":Lorg/jdom2/Namespace;
    :cond_63
    move-object v6, p0

    .line 170
    goto :goto_47

    .line 189
    .restart local v0    # "ns":Lorg/jdom2/Namespace;
    :cond_65
    const-string v6, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 190
    new-instance v6, Lorg/jdom2/IllegalNameException;

    const-string v7, "Namespace URI"

    const-string v8, "The http://www.w3.org/XML/1998/namespace must be bound to only the \'xml\' prefix."

    invoke-direct {v6, p1, v7, v8}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_77
    if-nez p0, :cond_89

    const-string v1, ""

    .line 199
    .local v1, "pfx":Ljava/lang/String;
    :goto_7b
    invoke-static {v1}, Lorg/jdom2/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "reason":Ljava/lang/String;
    if-eqz v3, :cond_8b

    .line 200
    new-instance v6, Lorg/jdom2/IllegalNameException;

    const-string v7, "Namespace prefix"

    invoke-direct {v6, v1, v7, v3}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .end local v1    # "pfx":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_89
    move-object v1, p0

    .line 196
    goto :goto_7b

    .line 204
    .restart local v1    # "pfx":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :cond_8b
    new-instance v0, Lorg/jdom2/Namespace;

    .end local v0    # "ns":Lorg/jdom2/Namespace;
    invoke-direct {v0, v1, p1}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .restart local v0    # "ns":Lorg/jdom2/Namespace;
    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 206
    .local v2, "prev":Lorg/jdom2/Namespace;
    if-eqz v2, :cond_e

    .line 209
    move-object v0, v2

    goto/16 :goto_e
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Namespace is serialized through a proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 340
    new-instance v0, Lorg/jdom2/Namespace$NamespaceSerializationProxy;

    iget-object v1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Namespace$NamespaceSerializationProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 273
    if-ne p0, p1, :cond_4

    .line 274
    const/4 v0, 0x1

    .line 279
    .end local p1    # "ob":Ljava/lang/Object;
    :goto_3
    return v0

    .line 276
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Lorg/jdom2/Namespace;

    if-eqz v0, :cond_13

    .line 277
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    check-cast p1, Lorg/jdom2/Namespace;

    .end local p1    # "ob":Ljava/lang/Object;
    iget-object v1, p1, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 279
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Namespace: prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
