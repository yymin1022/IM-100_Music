.class public abstract Lcom/pantech/app/music/extractcolor/ColorForm;
.super Ljava/lang/Object;
.source "ColorForm.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mData:Ljava/lang/Object;

.field mExtractedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/pantech/app/music/extractcolor/ColorForm;->mData:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/pantech/app/music/extractcolor/ColorForm;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method abstract extractColor()I
.end method

.method public abstract getData()Ljava/lang/Object;
.end method

.method public abstract getExtractedColor()I
.end method
