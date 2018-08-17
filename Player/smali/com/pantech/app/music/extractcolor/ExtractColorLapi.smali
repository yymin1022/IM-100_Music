.class public Lcom/pantech/app/music/extractcolor/ExtractColorLapi;
.super Lcom/pantech/app/music/extractcolor/ColorForm;
.source "ExtractColorLapi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/extractcolor/ColorForm;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method extractColor()I
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtractedColor()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
