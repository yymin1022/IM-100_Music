.class public Lcom/pantech/audiotag/common/Global;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/audiotag/common/Global$ModelInfo;
    }
.end annotation


# static fields
.field public static final ALL_LOG_LEVEL:I = 0x1f

.field public static final RELEASE_LOG_LEVEL:I = 0x10

.field private static mDeviceLocale:Ljava/lang/String;

.field private static mDeviceName:Ljava/lang/String;

.field private static mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

.field private static mModelName:Ljava/lang/String;

.field private static mModelTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/audiotag/common/Global$ModelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0x10

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/pantech/audiotag/common/Global;->mModelName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/pantech/audiotag/common/Global;->mDeviceName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/pantech/audiotag/common/Global;->mDeviceLocale:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "UNKNOWN"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "UNKNOWN"

    invoke-direct {v2, v3, v4}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "IM-A930S"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "IM-A930S"

    invoke-direct {v2, v3, v4}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "IM-A930K"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "IM-A930K"

    invoke-direct {v2, v3, v4}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "IM-A930L"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "IM-A930L"

    invoke-direct {v2, v3, v4}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "IM-A940K"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "IM-A940K"

    invoke-direct {v2, v3, v5}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v1, "IM-A940L"

    new-instance v2, Lcom/pantech/audiotag/common/Global$ModelInfo;

    const-string v3, "IM-A940L"

    invoke-direct {v2, v3, v5}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeModelInfo(Z)V
    .registers 6
    .param p0, "debugMode"    # Z

    .prologue
    .line 170
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getModelInfo()Lcom/pantech/audiotag/common/Global$ModelInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/pantech/audiotag/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    .line 172
    .local v1, "modelName":Ljava/lang/String;
    sget-object v2, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 174
    .local v0, "modelInfo":Lcom/pantech/audiotag/common/Global$ModelInfo;
    if-eqz v0, :cond_1d

    .line 176
    new-instance v3, Lcom/pantech/audiotag/common/Global$ModelInfo;

    iget-object v4, v0, Lcom/pantech/audiotag/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    if-eqz p0, :cond_1e

    const/16 v2, 0x1f

    :goto_18
    invoke-direct {v3, v4, v2}, Lcom/pantech/audiotag/common/Global$ModelInfo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 178
    :cond_1d
    return-void

    .line 176
    :cond_1e
    iget v2, v0, Lcom/pantech/audiotag/common/Global$ModelInfo;->mAllowLogLevel:I

    goto :goto_18
.end method

.method public static getAllowLogLevel()I
    .registers 1

    .prologue
    .line 163
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getModelInfo()Lcom/pantech/audiotag/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/audiotag/common/Global$ModelInfo;->mAllowLogLevel:I

    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 76
    sget-object v5, Lcom/pantech/audiotag/common/Global;->mDeviceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 80
    :try_start_8
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    .line 82
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 83
    const-string v5, "get"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 85
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 86
    .local v4, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    const-string v7, "ro.product.device"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 88
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/pantech/audiotag/common/Global;->mDeviceName:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_34

    .line 97
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :cond_31
    :goto_31
    sget-object v5, Lcom/pantech/audiotag/common/Global;->mDeviceName:Ljava/lang/String;

    return-object v5

    .line 90
    :catch_34
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static getModelID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 50
    sget-object v5, Lcom/pantech/audiotag/common/Global;->mModelName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 54
    :try_start_8
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    .line 56
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 57
    const-string v5, "get"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 60
    .local v4, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    const-string v7, "ro.product.model"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 62
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/pantech/audiotag/common/Global;->mModelName:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_34

    .line 71
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :cond_31
    :goto_31
    sget-object v5, Lcom/pantech/audiotag/common/Global;->mModelName:Ljava/lang/String;

    return-object v5

    .line 64
    :catch_34
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static getModelInfo()Lcom/pantech/audiotag/common/Global$ModelInfo;
    .registers 4

    .prologue
    .line 127
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getModelID()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "targetDevice":Ljava/lang/String;
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    if-nez v1, :cond_65

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 133
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/audiotag/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 136
    :cond_1c
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    if-nez v1, :cond_38

    .line 138
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 142
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/audiotag/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 146
    :cond_38
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    if-nez v1, :cond_62

    .line 149
    const-string v1, "VTAG_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "there are no model info, check your model info in source. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/audiotag/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 154
    :cond_62
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    .line 157
    :goto_64
    return-object v1

    :cond_65
    sget-object v1, Lcom/pantech/audiotag/common/Global;->mModelInfo:Lcom/pantech/audiotag/common/Global$ModelInfo;

    goto :goto_64
.end method

.method public static getSystemLocale()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v8, 0x1

    .line 104
    :try_start_1
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    .line 106
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 107
    const-string v5, "get"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 109
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 110
    .local v4, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    const-string v7, "ro.product.locale.language"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 112
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/pantech/audiotag/common/Global;->mDeviceLocale:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_41

    .line 120
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSystemLocale() locale: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/pantech/audiotag/common/Global;->mDeviceLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 122
    sget-object v5, Lcom/pantech/audiotag/common/Global;->mDeviceLocale:Ljava/lang/String;

    return-object v5

    .line 114
    :catch_41
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method
