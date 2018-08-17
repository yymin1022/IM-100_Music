.class public Lcom/android/internal/pantech/led/LedInfo;
.super Ljava/lang/Object;
.source "LedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static APPID_ALARM:I = 0x0

.field public static APPID_BATTERY:I = 0x0

.field public static APPID_CALL:I = 0x0

.field public static APPID_CALL_CONNECTION:I = 0x0

.field public static APPID_CAMERA:I = 0x0

.field public static final APPID_MIN:I = 0x0

.field public static APPID_MOTION:I = 0x0

.field public static APPID_NFC:I = 0x0

.field public static APPID_NOTIFICATION:I = 0x0

.field public static APPID_NOTI_ALERTS:I = 0x0

.field public static APPID_PEN_ALERTS:I = 0x0

.field public static APPID_PREVIEW:I = 0x0

.field public static APPID_RECORDING:I = 0x0

.field public static APPID_SMS_ALERTS:I = 0x0

.field public static APPID_SOSNOTI:I = 0x0

.field public static final APPID_TOP:I

.field public static APPID_VOICE:I = 0x0

.field public static final APPNAME_ALARM:Ljava/lang/String; = "Alarm"

.field public static final APPNAME_BATTERY:Ljava/lang/String; = "Battery"

.field public static final APPNAME_CALL:Ljava/lang/String; = "Call"

.field public static final APPNAME_CALL_CONNECTION:Ljava/lang/String; = "CallConnection"

.field public static final APPNAME_CAMERA:Ljava/lang/String; = "Camera"

.field public static final APPNAME_MOTION:Ljava/lang/String; = "Motion"

.field public static final APPNAME_NFC:Ljava/lang/String; = "NFC"

.field public static final APPNAME_NOTIFICATION:Ljava/lang/String; = "Notification"

.field public static final APPNAME_NOTI_ALERTS:Ljava/lang/String; = "NotiAlerts"

.field public static final APPNAME_PEN_ALERTS:Ljava/lang/String; = "PenAlert"

.field public static final APPNAME_PREVIEW:Ljava/lang/String; = "Preview"

.field public static final APPNAME_RECORDING:Ljava/lang/String; = "Recording"

.field public static final APPNAME_SMS_ALERTS:Ljava/lang/String; = "SMSAlerts"

.field public static final APPNAME_SOSNOTI:Ljava/lang/String; = "SOSNoti"

.field public static final APPNAME_VOICE:Ljava/lang/String; = "Voice"

.field public static final BLACK:I = 0x0

.field public static final BLACK_STRING:Ljava/lang/String; = "Black"

.field public static final BLUE:I = 0xff

.field public static final BLUE_STRING:Ljava/lang/String; = "Blue"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/pantech/led/LedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CYAN:I = 0xffff

.field public static final CYAN_STRING:Ljava/lang/String; = "Cyan"

.field public static final DARK_GREEN:I = 0x8000

.field public static final DARK_GREEN_STRING:Ljava/lang/String; = "DarkGreen"

.field public static final DARK_RED:I = 0x800000

.field public static final DARK_RED_STRING:Ljava/lang/String; = "DarkRed"

.field public static final DEFAULT_PATTERN_OFF_MS:I = 0xf0

.field public static final DEFAULT_PATTERN_ON_MS:I = 0x2d0

.field public static final GREEN:I = 0xff00

.field public static final GREEN_STRING:Ljava/lang/String; = "Green"

.field public static final INFINITE_REPEAT:I = 0x7fffffff

.field public static final LED_COUNT:I = 0x1

.field public static final MAGENTA:I = 0xff00ff

.field public static final MAGENTA_STRING:Ljava/lang/String; = "Magenta"

.field private static final OPTION_DIMMING_BLINK:I = 0x6a

.field public static final OPTION_DIMMING_BLINK_PATTERN:I = 0x6b

.field private static final OPTION_DIMMING_ON_OFF:I = 0x68

.field private static final OPTION_NORMAL_BLINK:I = 0x69

.field private static final OPTION_NORMAL_ON_OFF:I = 0x67

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_ALARM:I = 0x6d

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_CALL:I = 0x6c

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_MSG:I = 0x6f

.field public static final OPTION_RAINBOW_PATTERN_ALARM:I = 0x66

.field public static final OPTION_RAINBOW_PATTERN_CALL:I = 0x65

.field public static final OPTION_RAINBOW_PATTERN_MSG:I = 0x6e

.field public static final RED:I = 0xff0000

.field public static final RED_STRING:Ljava/lang/String; = "Red"

.field public static final WHITE:I = 0xffffff

.field public static final WHITE_STRING:Ljava/lang/String; = "White"

.field public static final YELLOW:I = 0xffff00

.field public static final YELLOW_STRING:Ljava/lang/String; = "Yellow"


# instance fields
.field private mAppId:I

.field public mColor:[I

.field public mOffMs:I

.field public mOnMs:I

.field public mOption:I

.field public mPattern:[[I

.field private mPeriodicity:Z

.field public mRepeat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PREVIEW:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_BATTERY:I

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTIFICATION:I

    .line 58
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PEN_ALERTS:I

    .line 59
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_RECORDING:I

    .line 60
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CAMERA:I

    .line 61
    const/16 v0, 0xc

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_VOICE:I

    .line 62
    const/16 v0, 0xe

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    .line 63
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NFC:I

    .line 64
    const/16 v0, 0x12

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_ALARM:I

    .line 65
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL:I

    .line 66
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL_CONNECTION:I

    .line 67
    const/16 v0, 0x16

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SOSNOTI:I

    .line 68
    const/16 v0, 0x18

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTI_ALERTS:I

    .line 69
    const/16 v0, 0x1a

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SMS_ALERTS:I

    .line 71
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SMS_ALERTS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    .line 363
    new-instance v0, Lcom/android/internal/pantech/led/LedInfo$1;

    invoke-direct {v0}, Lcom/android/internal/pantech/led/LedInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/pantech/led/LedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "option"    # I

    .prologue
    const/4 v3, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_12
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 183
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, 0xff0000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 184
    iput-boolean v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 185
    iput p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 186
    return-void
.end method

.method public constructor <init>(I[II)V
    .registers 6
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "option"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-direct {p0, p1, p3}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(II)Z

    move-result v0

    if-nez v0, :cond_11

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_11
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 199
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 201
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 202
    return-void
.end method

.method public constructor <init>(I[III)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # I
    .param p4, "offMs"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(I[III)Z

    move-result v0

    if-nez v0, :cond_11

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_11
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 165
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 166
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    .line 167
    iput p4, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 169
    if-lez p3, :cond_25

    if-lez p4, :cond_25

    const/16 v0, 0x69

    :goto_22
    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 170
    return-void

    .line 169
    :cond_25
    const/16 v0, 0x68

    goto :goto_22
.end method

.method public constructor <init>(I[[II)V
    .registers 6
    .param p1, "appId"    # I
    .param p2, "pattern"    # [[I
    .param p3, "repeat"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(I[[II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_12
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 140
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 141
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 142
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 143
    iput-boolean v1, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    .line 145
    :cond_2a
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 150
    :goto_2e
    return-void

    .line 148
    :cond_2f
    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    goto :goto_2e
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_5c

    :goto_11
    iput-boolean v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .local v2, "nPattern":I
    if-lez v2, :cond_5e

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 235
    .local v0, "color":[I
    array-length v3, v0

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 236
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aput-object v0, v3, v4

    .line 237
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4f
    if-ge v1, v2, :cond_5e

    .line 238
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    aput-object v4, v3, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .end local v0    # "color":[I
    .end local v1    # "i":I
    .end local v2    # "nPattern":I
    :cond_5c
    move v3, v4

    .line 226
    goto :goto_11

    .line 241
    .restart local v2    # "nPattern":I
    :cond_5e
    return-void
.end method

.method public static convertColorStringToValue(Ljava/lang/String;)I
    .registers 2
    .param p0, "colorStr"    # Ljava/lang/String;

    .prologue
    .line 423
    const/high16 v0, 0xff0000

    invoke-static {p0, v0}, Lcom/android/internal/pantech/led/LedInfo;->convertColorStringToValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static convertColorStringToValue(Ljava/lang/String;I)I
    .registers 4
    .param p0, "colorStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    const/4 v1, 0x1

    .line 427
    if-nez p0, :cond_4

    .line 462
    .end local p1    # "defaultValue":I
    :cond_3
    :goto_3
    return p1

    .line 431
    .restart local p1    # "defaultValue":I
    :cond_4
    const-string v0, "Black"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_e

    .line 432
    const/4 p1, 0x0

    goto :goto_3

    .line 434
    :cond_e
    const-string v0, "White"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 435
    const p1, 0xffffff

    goto :goto_3

    .line 437
    :cond_1a
    const-string v0, "Red"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_25

    .line 438
    const/high16 p1, 0xff0000

    goto :goto_3

    .line 440
    :cond_25
    const-string v0, "Yellow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_31

    .line 441
    const p1, 0xffff00

    goto :goto_3

    .line 443
    :cond_31
    const-string v0, "Green"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 444
    const p1, 0xff00

    goto :goto_3

    .line 446
    :cond_3d
    const-string v0, "Cyan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_49

    .line 447
    const p1, 0xffff

    goto :goto_3

    .line 449
    :cond_49
    const-string v0, "Blue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_54

    .line 450
    const/16 p1, 0xff

    goto :goto_3

    .line 452
    :cond_54
    const-string v0, "Magenta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_60

    .line 453
    const p1, 0xff00ff

    goto :goto_3

    .line 455
    :cond_60
    const-string v0, "DarkGreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_6c

    .line 456
    const p1, 0x8000

    goto :goto_3

    .line 458
    :cond_6c
    const-string v0, "DarkRed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 459
    const/high16 p1, 0x800000

    goto :goto_3
.end method

.method public static getAppID(Ljava/lang/String;)I
    .registers 4
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, "appID":I
    const-string v1, "Preview"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_d

    .line 469
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PREVIEW:I

    .line 514
    :cond_c
    :goto_c
    return v0

    .line 471
    :cond_d
    const-string v1, "Battery"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_18

    .line 472
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_BATTERY:I

    goto :goto_c

    .line 474
    :cond_18
    const-string v1, "Notification"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_23

    .line 475
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTIFICATION:I

    goto :goto_c

    .line 477
    :cond_23
    const-string v1, "PenAlert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2e

    .line 478
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PEN_ALERTS:I

    goto :goto_c

    .line 480
    :cond_2e
    const-string v1, "Recording"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_39

    .line 481
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_RECORDING:I

    goto :goto_c

    .line 483
    :cond_39
    const-string v1, "Camera"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_44

    .line 484
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CAMERA:I

    goto :goto_c

    .line 486
    :cond_44
    const-string v1, "Voice"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_4f

    .line 487
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_VOICE:I

    goto :goto_c

    .line 489
    :cond_4f
    const-string v1, "Motion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_5a

    .line 490
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    goto :goto_c

    .line 492
    :cond_5a
    const-string v1, "NFC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_65

    .line 493
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NFC:I

    goto :goto_c

    .line 495
    :cond_65
    const-string v1, "Alarm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_70

    .line 496
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_ALARM:I

    goto :goto_c

    .line 498
    :cond_70
    const-string v1, "Call"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_7b

    .line 499
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL:I

    goto :goto_c

    .line 501
    :cond_7b
    const-string v1, "CallConnection"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_86

    .line 502
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL_CONNECTION:I

    goto :goto_c

    .line 504
    :cond_86
    const-string v1, "SOSNoti"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_92

    .line 505
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SOSNOTI:I

    goto/16 :goto_c

    .line 507
    :cond_92
    const-string v1, "NotiAlerts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_9e

    .line 508
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTI_ALERTS:I

    goto/16 :goto_c

    .line 510
    :cond_9e
    const-string v1, "SMSAlerts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_c

    .line 511
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SMS_ALERTS:I

    goto/16 :goto_c
.end method

.method private isValidArguments(II)Z
    .registers 4
    .param p1, "appId"    # I
    .param p2, "option"    # I

    .prologue
    .line 323
    if-lez p1, :cond_a

    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v0, :cond_a

    if-lez p2, :cond_a

    .line 325
    const/4 v0, 0x1

    .line 327
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isValidArguments(I[III)Z
    .registers 8
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # I
    .param p4, "offMs"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 307
    if-lez p1, :cond_12

    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v1, :cond_12

    if-eqz p2, :cond_12

    array-length v1, p2

    if-ne v1, v0, :cond_12

    if-le p3, v2, :cond_12

    if-le p4, v2, :cond_12

    .line 312
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isValidArguments(I[[II)Z
    .registers 7
    .param p1, "appId"    # I
    .param p2, "pattern"    # [[I
    .param p3, "repeat"    # I

    .prologue
    const/4 v0, 0x0

    .line 315
    if-lez p1, :cond_18

    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v1, :cond_18

    if-eqz p2, :cond_18

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_15

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    :cond_15
    if-lez p3, :cond_18

    .line 318
    const/4 v0, 0x1

    .line 320
    :cond_18
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    return v0
.end method

.method public getPattern(I)[I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 274
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v0, v0, p1

    .line 275
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPatternCount()I
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_8

    .line 267
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    .line 269
    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_7

    .line 301
    iget v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 303
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isOneShotOptionEvent()Z
    .registers 3

    .prologue
    .line 285
    iget v1, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    packed-switch v1, :pswitch_data_a

    .line 292
    :pswitch_5
    const/4 v0, 0x0

    .line 296
    .local v0, "isOneShotOption":Z
    :goto_6
    return v0

    .line 289
    .end local v0    # "isOneShotOption":Z
    :pswitch_7
    const/4 v0, 0x1

    .line 290
    .restart local v0    # "isOneShotOption":Z
    goto :goto_6

    .line 285
    nop

    :pswitch_data_a
    .packed-switch 0x6c
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isPeriodicEvent()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    return v0
.end method

.method public setColor([I)V
    .registers 4
    .param p1, "color"    # [I

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v0, :cond_7

    .line 254
    iput-object p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 255
    return-void

    .line 257
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only periodic event use setColor()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPattern([[I)V
    .registers 4
    .param p1, "pattern"    # [[I

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_e

    .line 245
    iput-object p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 246
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 247
    return-void

    .line 249
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only One-shot event use setPattern()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", Periodicity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", Option : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4f
    iget-object v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    array-length v5, v5

    if-ge v2, v5, :cond_85

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "color: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 405
    :cond_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", OnMs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", OffMs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", Repeat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    if-nez v5, :cond_11a

    move v0, v4

    .line 409
    .local v0, "N":I
    :goto_d2
    const/4 v3, 0x0

    .local v3, "nPattern":I
    :goto_d3
    if-ge v3, v0, :cond_142

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/4 v2, 0x0

    :goto_f2
    iget-object v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v2, v5, :cond_13f

    .line 412
    if-nez v2, :cond_11e

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v6, v6, v3

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_117
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    .line 408
    .end local v0    # "N":I
    .end local v3    # "nPattern":I
    :cond_11a
    iget-object v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v5

    goto :goto_d2

    .line 415
    .restart local v0    # "N":I
    .restart local v3    # "nPattern":I
    :cond_11e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "color : \t0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v6, v6, v3

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 409
    :cond_13f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    .line 419
    :cond_142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 331
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 350
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    if-nez v2, :cond_3e

    move v0, v3

    .line 354
    .local v0, "N":I
    :goto_2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_42

    .line 356
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3c
    move v2, v3

    .line 332
    goto :goto_b

    .line 353
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v2

    goto :goto_2c

    .line 358
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_42
    return-void
.end method
