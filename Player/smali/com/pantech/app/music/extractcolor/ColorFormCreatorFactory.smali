.class public Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;
.super Ljava/lang/Object;
.source "ColorFormCreatorFactory.java"

# interfaces
.implements Lcom/pantech/app/music/extractcolor/ColorFormCreator;


# instance fields
.field private mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/lang/Object;

.field private mExtractType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createColorForm()Lcom/pantech/app/music/extractcolor/ColorForm;
    .registers 4

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mExtractType:I

    iget-object v1, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->createColorForm(ILandroid/content/Context;Ljava/lang/Object;)Lcom/pantech/app/music/extractcolor/ColorForm;

    move-result-object v0

    return-object v0
.end method

.method public createColorForm(ILandroid/content/Context;Ljava/lang/Object;)Lcom/pantech/app/music/extractcolor/ColorForm;
    .registers 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_1a

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    .line 45
    :goto_6
    :pswitch_6
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    return-object v0

    .line 32
    :pswitch_9
    new-instance v0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;

    invoke-direct {v0, p2, p3}, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    goto :goto_6

    .line 35
    :pswitch_11
    new-instance v0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;

    invoke-direct {v0, p2, p3}, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    goto :goto_6

    .line 30
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    if-nez v0, :cond_6

    .line 23
    const/4 v0, -0x1

    .line 25
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mColorForm:Lcom/pantech/app/music/extractcolor/ColorForm;

    invoke-virtual {v0}, Lcom/pantech/app/music/extractcolor/ColorForm;->getExtractedColor()I

    move-result v0

    goto :goto_5
.end method

.method public initColorForm(ILandroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 14
    iput p1, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mExtractType:I

    .line 15
    iput-object p2, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mContext:Landroid/content/Context;

    .line 16
    iput-object p3, p0, Lcom/pantech/app/music/extractcolor/ColorFormCreatorFactory;->mData:Ljava/lang/Object;

    .line 17
    return-void
.end method
