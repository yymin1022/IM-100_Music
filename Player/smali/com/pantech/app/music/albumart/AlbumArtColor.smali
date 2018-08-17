.class public Lcom/pantech/app/music/albumart/AlbumArtColor;
.super Ljava/lang/Object;
.source "AlbumArtColor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumArtColor"

.field public static TEST_COLOR_RECOMMAND:I

.field private static sAlbumArtSwatchMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtColor;->sAlbumArtSwatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtColor;->TEST_COLOR_RECOMMAND:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearHash(I)V
    .registers 2
    .param p0, "option_recommand"    # I

    .prologue
    .line 24
    sput p0, Lcom/pantech/app/music/albumart/AlbumArtColor;->TEST_COLOR_RECOMMAND:I

    .line 25
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtColor;->sAlbumArtSwatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    return-void
.end method

.method public static generate(JLandroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Swatch;
    .registers 7
    .param p0, "albumID"    # J
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    if-nez p2, :cond_4

    .line 48
    const/4 v2, 0x0

    .line 92
    :cond_3
    :goto_3
    return-object v2

    .line 50
    :cond_4
    new-instance v3, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v3, p2}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v1

    .line 51
    .local v1, "palette":Landroid/support/v7/graphics/Palette;
    const/4 v2, 0x0

    .line 52
    .local v2, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    sget v3, Lcom/pantech/app/music/albumart/AlbumArtColor;->TEST_COLOR_RECOMMAND:I

    packed-switch v3, :pswitch_data_7e

    .line 85
    :goto_13
    if-nez v2, :cond_1d

    .line 86
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/albumart/AlbumArtColor;->getMostPopulationSwatch(Ljava/util/List;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 88
    :cond_1d
    if-eqz v2, :cond_3

    .line 89
    invoke-static {p0, p1, v2}, Lcom/pantech/app/music/albumart/AlbumArtColor;->put(JLandroid/support/v7/graphics/Palette$Swatch;)V

    goto :goto_3

    .line 54
    :pswitch_23
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/albumart/AlbumArtColor;->getMostPopulationSwatch(Ljava/util/List;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 55
    goto :goto_13

    .line 57
    :pswitch_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0}, Lcom/pantech/app/music/albumart/AlbumArtColor;->getMostPopulationSwatch(Ljava/util/List;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 65
    goto :goto_13

    .line 67
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    :pswitch_60
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 68
    goto :goto_13

    .line 70
    :pswitch_65
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 71
    goto :goto_13

    .line 73
    :pswitch_6a
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 74
    goto :goto_13

    .line 76
    :pswitch_6f
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 77
    goto :goto_13

    .line 79
    :pswitch_74
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 80
    goto :goto_13

    .line 82
    :pswitch_79
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    goto :goto_13

    .line 52
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2c
        :pswitch_60
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_74
        :pswitch_79
    .end packed-switch
.end method

.method public static get(J)Landroid/support/v7/graphics/Palette$Swatch;
    .registers 4
    .param p0, "albumID"    # J

    .prologue
    .line 16
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtColor;->sAlbumArtSwatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method private static getMostPopulationSwatch(Ljava/util/List;)Landroid/support/v7/graphics/Palette$Swatch;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)",
            "Landroid/support/v7/graphics/Palette$Swatch;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "most_swatch":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Palette$Swatch;

    .line 33
    .local v2, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v2, :cond_5

    .line 35
    if-nez v1, :cond_17

    .line 36
    move-object v1, v2

    goto :goto_5

    .line 38
    :cond_17
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 39
    move-object v1, v2

    goto :goto_5

    .line 43
    .end local v2    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_23
    return-object v1
.end method

.method public static put(JLandroid/support/v7/graphics/Palette$Swatch;)V
    .registers 5
    .param p0, "albumID"    # J
    .param p2, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 20
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtColor;->sAlbumArtSwatchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method
