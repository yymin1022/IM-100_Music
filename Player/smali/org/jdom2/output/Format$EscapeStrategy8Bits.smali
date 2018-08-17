.class final Lorg/jdom2/output/Format$EscapeStrategy8Bits;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lorg/jdom2/output/EscapeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EscapeStrategy8Bits"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/output/Format$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jdom2/output/Format$1;

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/jdom2/output/Format$EscapeStrategy8Bits;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEscape(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 118
    ushr-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
