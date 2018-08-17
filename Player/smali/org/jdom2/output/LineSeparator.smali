.class public final enum Lorg/jdom2/output/LineSeparator;
.super Ljava/lang/Enum;
.source "LineSeparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdom2/output/LineSeparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/output/LineSeparator;

.field public static final enum CR:Lorg/jdom2/output/LineSeparator;

.field public static final enum CRNL:Lorg/jdom2/output/LineSeparator;

.field public static final enum DEFAULT:Lorg/jdom2/output/LineSeparator;

.field public static final enum DOS:Lorg/jdom2/output/LineSeparator;

.field public static final enum NL:Lorg/jdom2/output/LineSeparator;

.field public static final enum NONE:Lorg/jdom2/output/LineSeparator;

.field public static final enum SYSTEM:Lorg/jdom2/output/LineSeparator;

.field public static final enum UNIX:Lorg/jdom2/output/LineSeparator;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "CRNL"

    const-string v2, "\r\n"

    invoke-direct {v0, v1, v4, v2}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->CRNL:Lorg/jdom2/output/LineSeparator;

    .line 123
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "NL"

    const-string v2, "\n"

    invoke-direct {v0, v1, v5, v2}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->NL:Lorg/jdom2/output/LineSeparator;

    .line 127
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "CR"

    const-string v2, "\r"

    invoke-direct {v0, v1, v6, v2}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->CR:Lorg/jdom2/output/LineSeparator;

    .line 130
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "DOS"

    const-string v2, "\r\n"

    invoke-direct {v0, v1, v7, v2}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->DOS:Lorg/jdom2/output/LineSeparator;

    .line 133
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "UNIX"

    const-string v2, "\n"

    invoke-direct {v0, v1, v8, v2}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->UNIX:Lorg/jdom2/output/LineSeparator;

    .line 142
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "SYSTEM"

    const/4 v2, 0x5

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->SYSTEM:Lorg/jdom2/output/LineSeparator;

    .line 145
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->NONE:Lorg/jdom2/output/LineSeparator;

    .line 156
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "DEFAULT"

    const/4 v2, 0x7

    invoke-static {}, Lorg/jdom2/output/LineSeparator;->getDefaultLineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jdom2/output/LineSeparator;

    sget-object v1, Lorg/jdom2/output/LineSeparator;->CRNL:Lorg/jdom2/output/LineSeparator;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jdom2/output/LineSeparator;->NL:Lorg/jdom2/output/LineSeparator;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jdom2/output/LineSeparator;->CR:Lorg/jdom2/output/LineSeparator;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jdom2/output/LineSeparator;->DOS:Lorg/jdom2/output/LineSeparator;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jdom2/output/LineSeparator;->UNIX:Lorg/jdom2/output/LineSeparator;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/jdom2/output/LineSeparator;->SYSTEM:Lorg/jdom2/output/LineSeparator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jdom2/output/LineSeparator;->NONE:Lorg/jdom2/output/LineSeparator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-object p3, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private static getDefaultLineSeparator()Ljava/lang/String;
    .registers 4

    .prologue
    .line 163
    const-string v2, "org.jdom2.output.LineSeparator"

    const-string v3, "DEFAULT"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "prop":Ljava/lang/String;
    const-string v2, "DEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 170
    sget-object v2, Lorg/jdom2/output/LineSeparator;->DOS:Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v2}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local v0    # "prop":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 173
    .restart local v0    # "prop":Ljava/lang/String;
    :cond_17
    :try_start_17
    const-class v2, Lorg/jdom2/output/LineSeparator;

    invoke-static {v2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/jdom2/output/LineSeparator;

    .line 174
    .local v1, "sep":Lorg/jdom2/output/LineSeparator;
    invoke-virtual {v1}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_16

    .line 175
    .end local v1    # "sep":Lorg/jdom2/output/LineSeparator;
    :catch_24
    move-exception v2

    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/output/LineSeparator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lorg/jdom2/output/LineSeparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/LineSeparator;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/output/LineSeparator;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, [Lorg/jdom2/output/LineSeparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/output/LineSeparator;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    return-object v0
.end method
