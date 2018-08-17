.class public abstract Lorg/jdom2/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/xpath/XPath$XPathString;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_XPATH_CLASS:Ljava/lang/String; = "org.jdom2.xpath.jaxen.JDOMXPath"

.field public static final JDOM_OBJECT_MODEL_URI:Ljava/lang/String; = "http://jdom.org/jaxp/xpath/jdom"

.field private static final XPATH_CLASS_PROPERTY:Ljava/lang/String; = "org.jdom2.xpath.class"

.field private static constructor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/jdom2/xpath/XPath;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;
    .registers 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    sget-object v6, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_2} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_66

    if-nez v6, :cond_40

    .line 129
    :try_start_4
    const-string v6, "org.jdom2.xpath.class"

    const-string v7, "org.jdom2.xpath.jaxen.JDOMXPath"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_b} :catch_39
    .catch Lorg/jdom2/JDOMException; {:try_start_4 .. :try_end_b} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_66

    move-result-object v0

    .line 137
    .local v0, "className":Ljava/lang/String;
    :goto_c
    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 138
    .local v5, "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    const-class v6, Lorg/jdom2/xpath/XPath;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 139
    new-instance v6, Lorg/jdom2/JDOMException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create a JDOMXPath from class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_37
    .catch Lorg/jdom2/JDOMException; {:try_start_c .. :try_end_37} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_37} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_66

    .line 146
    .end local v0    # "className":Ljava/lang/String;
    .end local v5    # "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    :catch_37
    move-exception v1

    .line 147
    .local v1, "ex1":Lorg/jdom2/JDOMException;
    throw v1

    .line 132
    .end local v1    # "ex1":Lorg/jdom2/JDOMException;
    :catch_39
    move-exception v1

    .line 134
    .local v1, "ex1":Ljava/lang/SecurityException;
    :try_start_3a
    const-string v0, "org.jdom2.xpath.jaxen.JDOMXPath"

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_c

    .line 141
    .end local v1    # "ex1":Ljava/lang/SecurityException;
    .restart local v5    # "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    :cond_3d
    invoke-static {v5}, Lorg/jdom2/xpath/XPath;->setXPathClass(Ljava/lang/Class;)V

    .line 144
    .end local v0    # "className":Ljava/lang/String;
    .end local v5    # "useclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    :cond_40
    sget-object v6, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom2/xpath/XPath;
    :try_end_4e
    .catch Lorg/jdom2/JDOMException; {:try_start_3a .. :try_end_4e} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4e} :catch_66

    return-object v6

    .line 149
    :catch_4f
    move-exception v2

    .line 151
    .local v2, "ex2":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 153
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v6, v4, Lorg/jdom2/JDOMException;

    if-eqz v6, :cond_5b

    check-cast v4, Lorg/jdom2/JDOMException;

    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_5a
    throw v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_5b
    new-instance v6, Lorg/jdom2/JDOMException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v6

    goto :goto_5a

    .line 156
    .end local v2    # "ex2":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_66
    move-exception v3

    .line 158
    .local v3, "ex3":Ljava/lang/Exception;
    new-instance v6, Lorg/jdom2/JDOMException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static selectNodes(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p1}, Lorg/jdom2/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom2/xpath/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p1}, Lorg/jdom2/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom2/xpath/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setXPathClass(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jdom2/xpath/XPath;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jdom2/xpath/XPath;>;"
    if-nez p0, :cond_a

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "aClass"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_a
    :try_start_a
    const-class v2, Lorg/jdom2/xpath/XPath;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 183
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lorg/jdom2/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    .line 197
    return-void

    .line 186
    :cond_2b
    new-instance v2, Lorg/jdom2/JDOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a concrete JDOM XPath implementation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_48
    .catch Lorg/jdom2/JDOMException; {:try_start_a .. :try_end_48} :catch_48
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_48} :catch_4a

    .line 190
    :catch_48
    move-exception v0

    .line 191
    .local v0, "ex1":Lorg/jdom2/JDOMException;
    throw v0

    .line 193
    .end local v0    # "ex1":Lorg/jdom2/JDOMException;
    :catch_4a
    move-exception v1

    .line 195
    .local v1, "ex2":Ljava/lang/Exception;
    new-instance v2, Lorg/jdom2/JDOMException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/xpath/XPath;->addNamespace(Lorg/jdom2/Namespace;)V

    .line 314
    return-void
.end method

.method public abstract addNamespace(Lorg/jdom2/Namespace;)V
.end method

.method public abstract getXPath()Ljava/lang/String;
.end method

.method public abstract numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method public abstract setVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Lorg/jdom2/xpath/XPath$XPathString;

    invoke-virtual {p0}, Lorg/jdom2/xpath/XPath;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/xpath/XPath$XPathString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
