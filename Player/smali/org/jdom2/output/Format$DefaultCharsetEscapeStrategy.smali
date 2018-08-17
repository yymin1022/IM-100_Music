.class final Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;
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
    name = "DefaultCharsetEscapeStrategy"
.end annotation


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/nio/charset/CharsetEncoder;)V
    .registers 2
    .param p1, "cse"    # Ljava/nio/charset/CharsetEncoder;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 167
    return-void
.end method


# virtual methods
.method public shouldEscape(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-static {p1}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 176
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method
