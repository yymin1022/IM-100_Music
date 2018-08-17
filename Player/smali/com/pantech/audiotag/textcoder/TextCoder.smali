.class public Lcom/pantech/audiotag/textcoder/TextCoder;
.super Ljava/lang/Object;
.source "TextCoder.java"


# static fields
.field public static final TEXT_ENCODING_BIG5:I = 0x4

.field public static final TEXT_ENCODING_CHARSET_BIG5:Ljava/lang/String; = "Big5"

.field public static final TEXT_ENCODING_CHARSET_EUC_KR:Ljava/lang/String; = "EUC-KR"

.field public static final TEXT_ENCODING_CHARSET_GBK:Ljava/lang/String; = "GBK"

.field public static final TEXT_ENCODING_CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final TEXT_ENCODING_CHARSET_SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field public static final TEXT_ENCODING_CHARSET_UTF16:Ljava/lang/String; = "UTF-16"

.field public static final TEXT_ENCODING_CHARSET_UTF16_BE:Ljava/lang/String; = "UTF-16BE"

.field public static final TEXT_ENCODING_CHARSET_UTF16_LE:Ljava/lang/String; = "UTF-16LE"

.field public static final TEXT_ENCODING_CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final TEXT_ENCODING_EUC_KR:I = 0x8

.field public static final TEXT_ENCODING_GBK:I = 0x2

.field public static final TEXT_ENCODING_ISO_8859_1:I = 0x10

.field public static final TEXT_ENCODING_SHIFT_JIS:I = 0x1

.field public static final TEXT_ENCODING_UNICODE20:I = 0x20

.field public static final TEXT_ENCODING_UNICODE_UTF16:I = 0x40

.field public static final TEXT_ENCODING_UNICODE_UTF16_BE:I = 0x80

.field public static final TEXT_ENCODING_UNICODE_UTF16_LE:I = 0x100

.field public static final TEXT_ENCODING_UNICODE_UTF8:I = 0x200


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextEncodingCharsetName(I)Ljava/lang/String;
    .registers 2
    .param p0, "encodingType"    # I

    .prologue
    .line 46
    sparse-switch p0, :sswitch_data_22

    .line 77
    const-string v0, ""

    :goto_5
    return-object v0

    .line 49
    :sswitch_6
    const-string v0, "ISO-8859-1"

    goto :goto_5

    .line 53
    :sswitch_9
    const-string v0, "UTF-16"

    goto :goto_5

    .line 56
    :sswitch_c
    const-string v0, "UTF-16LE"

    goto :goto_5

    .line 59
    :sswitch_f
    const-string v0, "UTF-16BE"

    goto :goto_5

    .line 62
    :sswitch_12
    const-string v0, "UTF-8"

    goto :goto_5

    .line 65
    :sswitch_15
    const-string v0, "EUC-KR"

    goto :goto_5

    .line 68
    :sswitch_18
    const-string v0, "SJIS"

    goto :goto_5

    .line 71
    :sswitch_1b
    const-string v0, "GBK"

    goto :goto_5

    .line 74
    :sswitch_1e
    const-string v0, "Big5"

    goto :goto_5

    .line 46
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_1b
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_15
        0x10 -> :sswitch_6
        0x20 -> :sswitch_9
        0x40 -> :sswitch_9
        0x80 -> :sswitch_f
        0x100 -> :sswitch_c
        0x200 -> :sswitch_12
    .end sparse-switch
.end method
