.class public Lcom/pantech/app/music/service/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/pantech/app/music/service/SharedPreferencesCompat;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/service/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 43
    sget-object v0, Lcom/pantech/app/music/service/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 45
    :try_start_4
    sget-object v0, Lcom/pantech/app/music/service/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_d

    .line 59
    :cond_c
    :goto_c
    return-void

    .line 49
    :catch_d
    move-exception v0

    .line 53
    :cond_e
    :goto_e
    if-eqz p0, :cond_c

    .line 55
    :try_start_10
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_c

    .line 56
    :catch_14
    move-exception v0

    goto :goto_c

    .line 47
    :catch_16
    move-exception v0

    goto :goto_e
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 34
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 35
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/SharedPreferences$Editor;>;"
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 39
    :goto_b
    return-object v1

    .line 36
    :catch_c
    move-exception v1

    .line 39
    const/4 v1, 0x0

    goto :goto_b
.end method
