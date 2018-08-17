.class public Lcom/pantech/app/music/utils/NativeLevenshteinDistance;
.super Ljava/lang/Object;
.source "NativeLevenshteinDistance.java"


# static fields
.field static loadLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->loadLibrary:Z

    .line 10
    :try_start_3
    const-string v1, "levenshteindistance"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_8} :catch_9

    .line 15
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_8
    return-void

    .line 11
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_9
    move-exception v0

    .line 12
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->loadLibrary:Z

    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDistance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->loadLibrary:Z

    if-eqz v0, :cond_9

    .line 23
    invoke-static {p0, p1}, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->computeLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    :goto_8
    return v0

    :cond_9
    invoke-static {p0, p1}, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->computeLevenshteinDistanceJava(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public static native computeLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static computeLevenshteinDistanceJava(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 46
    .local v4, "srcLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, "destLen":I
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v0, 0x1

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 50
    .local v1, "distance":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-gt v2, v4, :cond_23

    .line 51
    aget-object v5, v1, v2

    aput v2, v5, v6

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 52
    :cond_23
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_24
    if-gt v3, v0, :cond_2d

    .line 53
    aget-object v5, v1, v6

    aput v3, v5, v3

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 55
    :cond_2d
    const/4 v2, 0x1

    :goto_2e
    if-gt v2, v4, :cond_6b

    .line 56
    const/4 v3, 0x1

    :goto_31
    if-gt v3, v0, :cond_68

    .line 57
    aget-object v7, v1, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v1, v5

    aget v5, v5, v3

    add-int/lit8 v8, v5, 0x1

    aget-object v5, v1, v2

    add-int/lit8 v9, v3, -0x1

    aget v5, v5, v9

    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v1, v5

    add-int/lit8 v10, v3, -0x1

    aget v10, v5, v10

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v5, v11, :cond_66

    move v5, v6

    :goto_5c
    add-int/2addr v5, v10

    invoke-static {v8, v9, v5}, Lcom/pantech/app/music/utils/NativeLevenshteinDistance;->minimum(III)I

    move-result v5

    aput v5, v7, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 57
    :cond_66
    const/4 v5, 0x1

    goto :goto_5c

    .line 55
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 59
    :cond_6b
    aget-object v5, v1, v4

    aget v5, v5, v0

    return v5
.end method

.method private static minimum(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 33
    if-ge p0, p1, :cond_6

    if-ge p0, p2, :cond_5

    move p2, p0

    .end local p2    # "c":I
    :cond_5
    :goto_5
    return p2

    .restart local p2    # "c":I
    :cond_6
    if-ge p1, p2, :cond_5

    move p2, p1

    goto :goto_5
.end method
