.class Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;
.super Ljava/lang/Object;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/albumart/AlbumArtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapClass"
.end annotation


# instance fields
.field blurBmp:Landroid/graphics/Bitmap;

.field blurKey:Ljava/lang/String;

.field defaultLargeBmp:[Landroid/graphics/Bitmap;

.field defaultLargeResID:[I

.field defaultSmallBmp:[Landroid/graphics/Bitmap;

.field defaultSmallResID:[I

.field largeBmp:Landroid/graphics/Bitmap;

.field largeKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeKey:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeBmp:Landroid/graphics/Bitmap;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurKey:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurBmp:Landroid/graphics/Bitmap;

    .line 54
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    const v1, 0x7f020056

    aput v1, v0, v2

    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    const v1, 0x7f020057

    aput v1, v0, v3

    .line 57
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    const v1, 0x7f020058

    aput v1, v0, v4

    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    const v1, 0x7f020059

    aput v1, v0, v5

    .line 60
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    .line 61
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    const v1, 0x7f020051

    aput v1, v0, v2

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    const v1, 0x7f020052

    aput v1, v0, v3

    .line 63
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    const v1, 0x7f020053

    aput v1, v0, v4

    .line 64
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    const v1, 0x7f020054

    aput v1, v0, v5

    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeBmp:[Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallBmp:[Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method


# virtual methods
.method clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "AlbumArtCache"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object v2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurKey:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurBmp:Landroid/graphics/Bitmap;

    .line 130
    iput-object v2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeBmp:Landroid/graphics/Bitmap;

    .line 131
    iput-object v2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeKey:Ljava/lang/String;

    .line 132
    return-void
.end method

.method getBlurBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 115
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurBmp:Landroid/graphics/Bitmap;

    .line 117
    :cond_d
    return-object v0
.end method

.method declared-synchronized getDefaultBitmap(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p3, "albumID"    # J

    .prologue
    .line 71
    monitor-enter p0

    long-to-int v3, p3

    :try_start_2
    iget-object v4, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    array-length v4, v4

    rem-int v2, v3, v4

    .line 72
    .local v2, "index":I
    if-gez v2, :cond_a

    const/4 v2, 0x0

    .line 75
    :cond_a
    sget-object v3, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    if-ne p2, v3, :cond_33

    .line 76
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    if-nez v3, :cond_2d

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallResID:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 79
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2d

    .line 80
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallBmp:[Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v2

    .line 84
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2d
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultSmallBmp:[Landroid/graphics/Bitmap;

    aget-object v0, v3, v2
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_57

    .line 98
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_31
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    if-nez v3, :cond_52

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeResID:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_52

    .line 91
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeBmp:[Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v2

    .line 95
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_52
    iget-object v3, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->defaultLargeBmp:[Landroid/graphics/Bitmap;

    aget-object v0, v3, v2
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_57

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_31

    .line 71
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "index":I
    :catchall_57
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method getLargeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeBmp:Landroid/graphics/Bitmap;

    .line 104
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method putBlurBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurKey:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->blurBmp:Landroid/graphics/Bitmap;

    .line 124
    return-void
.end method

.method putLargeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeKey:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->largeBmp:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method
