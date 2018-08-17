.class public Lcom/pantech/audiotag/textcoder/TextEncoding;
.super Lcom/pantech/audiotag/textcoder/TextCoder;
.source "TextEncoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/audiotag/textcoder/TextEncoding$Range;
    }
.end annotation


# static fields
.field public static COUNT_BIG5:I = 0x0

.field public static COUNT_EUC_KR:I = 0x0

.field public static COUNT_GBK:I = 0x0

.field public static COUNT_SHIFT_JIS:I = 0x0

.field private static final DEBUG:Z = false

.field public static final ENCODING_ALL:B = 0xft

.field public static final ENCODING_BIG5:B = 0x4t

.field public static final ENCODING_EUC_KR:B = 0x8t

.field public static final ENCODING_GBK:B = 0x2t

.field public static final ENCODING_NONE:B = 0x0t

.field public static final ENCODING_SHIFT_JIS:B = 0x1t

.field public static kBig5Ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/audiotag/textcoder/TextEncoding$Range;",
            ">;"
        }
    .end annotation
.end field

.field public static kEUCKRRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/audiotag/textcoder/TextEncoding$Range;",
            ">;"
        }
    .end annotation
.end field

.field public static kGBKRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/audiotag/textcoder/TextEncoding$Range;",
            ">;"
        }
    .end annotation
.end field

.field public static kShiftJISRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/audiotag/textcoder/TextEncoding$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const v8, 0xb1fe

    const v7, 0xb0fe

    const v6, 0xa1fe

    const v5, 0x877e

    const/4 v4, 0x0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    .line 90
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8140

    const v3, 0x817e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8180

    const v3, 0x81ac

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x81b8

    const v3, 0x81bf

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x81c8

    const v3, 0x81ce

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x81da

    const v3, 0x81e8

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x81f0

    const v3, 0x81f7

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x81fc

    const v3, 0x81fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x824f

    const v3, 0x8258

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8260

    const v3, 0x8279

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8281

    const v3, 0x829a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x829f

    const v3, 0x82f1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8340

    const v3, 0x837e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8380

    const v3, 0x8396

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x839f

    const v3, 0x83b6

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x83bf

    const v3, 0x83d6

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8440

    const v3, 0x8460

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8470

    const v3, 0x847e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8480

    const v3, 0x8491

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x849f

    const v3, 0x84be

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8740

    const v3, 0x875d

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x875f

    const v3, 0x8775

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    invoke-direct {v1, v5, v5}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8780

    const v3, 0x879c

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x889f

    const v3, 0x88fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8940

    const v3, 0x897e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8980

    const v3, 0x89fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a40

    const v3, 0x8a7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a80

    const v3, 0x8afc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b40

    const v3, 0x8b7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b80

    const v3, 0x8bfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c40

    const v3, 0x8c7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c80

    const v3, 0x8cfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d40

    const v3, 0x8d7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d80

    const v3, 0x8dfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e40

    const v3, 0x8e7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e80

    const v3, 0x8efc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f40

    const v3, 0x8f7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f80

    const v3, 0x8ffc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9040

    const v3, 0x907e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9080

    const v3, 0x90fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9140

    const v3, 0x917e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9180

    const v3, 0x91fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9240

    const v3, 0x927e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9280

    const v3, 0x92fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9340

    const v3, 0x937e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9380

    const v3, 0x93fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9440

    const v3, 0x947e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9480

    const v3, 0x94fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9540

    const v3, 0x957e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9580

    const v3, 0x95fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9640

    const v3, 0x967e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9680

    const v3, 0x96fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9740

    const v3, 0x977e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9780

    const v3, 0x97fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9840

    const v3, 0x9872

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x989f

    const v3, 0x98fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9940

    const v3, 0x997e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9980

    const v3, 0x99fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a40

    const v3, 0x9a7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a80

    const v3, 0x9afc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b40

    const v3, 0x9b7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b80

    const v3, 0x9bfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c40

    const v3, 0x9c7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c80

    const v3, 0x9cfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d40

    const v3, 0x9d7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d80

    const v3, 0x9dfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e40

    const v3, 0x9e7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e80

    const v3, 0x9efc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f40

    const v3, 0x9f7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f80

    const v3, 0x9ffc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe040

    const v3, 0xe07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe080

    const v3, 0xe0fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe140

    const v3, 0xe17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe180

    const v3, 0xe1fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe240

    const v3, 0xe27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe280

    const v3, 0xe2fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe340

    const v3, 0xe37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe380

    const v3, 0xe3fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe440

    const v3, 0xe47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe480

    const v3, 0xe4fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe540

    const v3, 0xe57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe580

    const v3, 0xe5fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe640

    const v3, 0xe67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe680

    const v3, 0xe6fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe740

    const v3, 0xe77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe780

    const v3, 0xe7fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe840

    const v3, 0xe87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe880

    const v3, 0xe8fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe940

    const v3, 0xe97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe980

    const v3, 0xe9fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xea40

    const v3, 0xea7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xea80

    const v3, 0xeaa4

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xed40

    const v3, 0xed7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xed80

    const v3, 0xedfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xee40

    const v3, 0xee7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xee80

    const v3, 0xeeec

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeeef

    const v3, 0xeefc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfa40

    const v3, 0xfa7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfa80

    const v3, 0xfafc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfb40

    const v3, 0xfb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfb80

    const v3, 0xfbfc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfc40

    const v3, 0xfc4b

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8140

    const v3, 0x817e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8180

    const v3, 0x81fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8240

    const v3, 0x827e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8280

    const v3, 0x82fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8340

    const v3, 0x837e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8380

    const v3, 0x83fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8440

    const v3, 0x847e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8480

    const v3, 0x84fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8540

    const v3, 0x857e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8580

    const v3, 0x85fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8640

    const v3, 0x867e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8680

    const v3, 0x86fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8740

    invoke-direct {v1, v2, v5}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8780

    const v3, 0x87fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8840

    const v3, 0x887e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8880

    const v3, 0x88fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8940

    const v3, 0x897e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8980

    const v3, 0x89fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a40

    const v3, 0x8a7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a80

    const v3, 0x8afe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b40

    const v3, 0x8b7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b80

    const v3, 0x8bfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c40

    const v3, 0x8c7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c80

    const v3, 0x8cfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d40

    const v3, 0x8d7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d80

    const v3, 0x8dfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e40

    const v3, 0x8e7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e80

    const v3, 0x8efe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f40

    const v3, 0x8f7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f80

    const v3, 0x8ffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9040

    const v3, 0x907e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9080

    const v3, 0x90fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9140

    const v3, 0x917e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9180

    const v3, 0x91fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9240

    const v3, 0x927e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9280

    const v3, 0x92fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9340

    const v3, 0x937e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9380

    const v3, 0x93fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9440

    const v3, 0x947e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9480

    const v3, 0x94fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9540

    const v3, 0x957e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9580

    const v3, 0x95fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9640

    const v3, 0x967e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9680

    const v3, 0x96fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9740

    const v3, 0x977e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9780

    const v3, 0x97fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9840

    const v3, 0x987e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9880

    const v3, 0x98fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9940

    const v3, 0x997e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9980

    const v3, 0x99fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a40

    const v3, 0x9a7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a80

    const v3, 0x9afe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b40

    const v3, 0x9b7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b80

    const v3, 0x9bfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c40

    const v3, 0x9c7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c80

    const v3, 0x9cfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d40

    const v3, 0x9d7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d80

    const v3, 0x9dfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e40

    const v3, 0x9e7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e80

    const v3, 0x9efe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f40

    const v3, 0x9f7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f80

    const v3, 0x9ffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa040

    const v3, 0xa07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa080

    const v3, 0xa0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa1a1

    invoke-direct {v1, v2, v6}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa2a1

    const v3, 0xa2aa

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa2b1

    const v3, 0xa2e2

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa2e5

    const v3, 0xa2ee

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa2f1

    const v3, 0xa2fc

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa3a1

    const v3, 0xa3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa4a1

    const v3, 0xa4f3

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa5a1

    const v3, 0xa5f6

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6a1

    const v3, 0xa6b8

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6c1

    const v3, 0xa6d8

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6e0

    const v3, 0xa6eb

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6ee

    const v3, 0xa6f2

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6f4

    const v3, 0xa6f5

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa7a1

    const v3, 0xa7c1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa7d1

    const v3, 0xa7f1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa840

    const v3, 0xa87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa880

    const v3, 0xa895

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8a1

    const v3, 0xa8bb

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8bd

    const v3, 0xa8be

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8c0

    const v3, 0xa8c0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8c5

    const v3, 0xa8e9

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa940

    const v3, 0xa957

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa959

    const v3, 0xa95a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa95c

    const v3, 0xa95c

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa960

    const v3, 0xa97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa980

    const v3, 0xa988

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa996

    const v3, 0xa996

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa9a4

    const v3, 0xa9ef

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa40

    const v3, 0xaa7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa80

    const v3, 0xaaa0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab40

    const v3, 0xab7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab80

    const v3, 0xaba0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac40

    const v3, 0xac7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac80

    const v3, 0xaca0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad40

    const v3, 0xad7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad80

    const v3, 0xada0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae40

    const v3, 0xae7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae80

    const v3, 0xaea0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf40

    const v3, 0xaf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf80

    const v3, 0xafa0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb040

    const v3, 0xb07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb080

    invoke-direct {v1, v2, v7}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb140

    const v3, 0xb17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb180

    invoke-direct {v1, v2, v8}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb240

    const v3, 0xb27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb280

    const v3, 0xb2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb340

    const v3, 0xb37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb380

    const v3, 0xb3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb440

    const v3, 0xb47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb480

    const v3, 0xb4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb540

    const v3, 0xb57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb580

    const v3, 0xb5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb640

    const v3, 0xb67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb680

    const v3, 0xb6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb740

    const v3, 0xb77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb780

    const v3, 0xb7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb840

    const v3, 0xb87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb880

    const v3, 0xb8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb940

    const v3, 0xb97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb980

    const v3, 0xb9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba40

    const v3, 0xba7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba80

    const v3, 0xbafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb40

    const v3, 0xbb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb80

    const v3, 0xbbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc40

    const v3, 0xbc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc80

    const v3, 0xbcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd40

    const v3, 0xbd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd80

    const v3, 0xbdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe40

    const v3, 0xbe7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe80

    const v3, 0xbefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf40

    const v3, 0xbf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf80

    const v3, 0xbffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc040

    const v3, 0xc07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc080

    const v3, 0xc0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc140

    const v3, 0xc17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc180

    const v3, 0xc1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc240

    const v3, 0xc27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc280

    const v3, 0xc2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc340

    const v3, 0xc37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc380

    const v3, 0xc3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc440

    const v3, 0xc47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc480

    const v3, 0xc4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc540

    const v3, 0xc57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc580

    const v3, 0xc5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc640

    const v3, 0xc67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc680

    const v3, 0xc6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc740

    const v3, 0xc77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc780

    const v3, 0xc7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc840

    const v3, 0xc87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc880

    const v3, 0xc8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc940

    const v3, 0xc97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc980

    const v3, 0xc9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xca40

    const v3, 0xca7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xca80

    const v3, 0xcafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcb40

    const v3, 0xcb7e    # 7.2999E-41f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcb80

    const v3, 0xcbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcc40

    const v3, 0xcc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcc80

    const v3, 0xccfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcd40

    const v3, 0xcd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcd80

    const v3, 0xcdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xce40

    const v3, 0xce7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xce80

    const v3, 0xcefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcf40

    const v3, 0xcf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcf80

    const v3, 0xcffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd040

    const v3, 0xd07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd080

    const v3, 0xd0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd140

    const v3, 0xd17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd180

    const v3, 0xd1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd240

    const v3, 0xd27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd280

    const v3, 0xd2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd340

    const v3, 0xd37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd380

    const v3, 0xd3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd440

    const v3, 0xd47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd480

    const v3, 0xd4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd540

    const v3, 0xd57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd580

    const v3, 0xd5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd640

    const v3, 0xd67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd680

    const v3, 0xd6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd740

    const v3, 0xd77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd780

    const v3, 0xd7f9

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd840

    const v3, 0xd87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd880

    const v3, 0xd8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd940

    const v3, 0xd97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd980

    const v3, 0xd9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xda40

    const v3, 0xda7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xda80

    const v3, 0xdafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdb40

    const v3, 0xdb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdb80

    const v3, 0xdbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdc40

    const v3, 0xdc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdc80

    const v3, 0xdcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdd40

    const v3, 0xdd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdd80

    const v3, 0xddfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xde40

    const v3, 0xde7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xde80

    const v3, 0xdefe    # 7.9995E-41f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdf40

    const v3, 0xdf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdf80

    const v3, 0xdffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe040

    const v3, 0xe07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe080

    const v3, 0xe0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe140

    const v3, 0xe17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe180

    const v3, 0xe1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe240

    const v3, 0xe27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe280

    const v3, 0xe2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe340

    const v3, 0xe37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe380

    const v3, 0xe3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe440

    const v3, 0xe47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe480

    const v3, 0xe4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe540

    const v3, 0xe57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe580

    const v3, 0xe5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe640

    const v3, 0xe67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe680

    const v3, 0xe6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe740

    const v3, 0xe77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe780

    const v3, 0xe7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe840

    const v3, 0xe87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe880

    const v3, 0xe8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe940

    const v3, 0xe97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe980

    const v3, 0xe9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xea40

    const v3, 0xea7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xea80

    const v3, 0xeafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeb40

    const v3, 0xeb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeb80

    const v3, 0xebfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xec40

    const v3, 0xec7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xec80

    const v3, 0xecfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xed40

    const v3, 0xed7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xed80

    const v3, 0xedfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xee40

    const v3, 0xee7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xee80

    const v3, 0xeefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xef40

    const v3, 0xef7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xef80

    const v3, 0xeffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf040

    const v3, 0xf07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf080

    const v3, 0xf0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf140

    const v3, 0xf17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf180

    const v3, 0xf1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf240

    const v3, 0xf27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf280

    const v3, 0xf2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf340

    const v3, 0xf37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf380

    const v3, 0xf3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf440

    const v3, 0xf47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf480

    const v3, 0xf4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf540

    const v3, 0xf57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf580

    const v3, 0xf5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf640

    const v3, 0xf67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf680

    const v3, 0xf6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf740

    const v3, 0xf77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf780

    const v3, 0xf7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf840

    const v3, 0xf87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf880

    const v3, 0xf8a0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf940

    const v3, 0xf97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf980

    const v3, 0xf9a0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfa40

    const v3, 0xfa7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfa80

    const v3, 0xfaa0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfb40

    const v3, 0xfb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfb80

    const v3, 0xfba0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfc40

    const v3, 0xfc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfc80

    const v3, 0xfca0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfd40

    const v3, 0xfd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfd80

    const v3, 0xfda0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfe40

    const v3, 0xfe4f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa140

    const v3, 0xa17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa1a1

    invoke-direct {v1, v2, v6}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa240

    const v3, 0xa27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa2a1

    const v3, 0xa2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa340

    const v3, 0xa37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa3a1

    const v3, 0xa3bf

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa3e1

    const v3, 0xa3e1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa440

    const v3, 0xa47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa4a1

    const v3, 0xa4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa540

    const v3, 0xa57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa5a1

    const v3, 0xa5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa640

    const v3, 0xa67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa6a1

    const v3, 0xa6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa740    # 5.9998E-41f

    const v3, 0xa77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa7a1

    const v3, 0xa7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa840

    const v3, 0xa87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8a1

    const v3, 0xa8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa940

    const v3, 0xa97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa9a1

    const v3, 0xa9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa40

    const v3, 0xaa7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaaa1

    const v3, 0xaafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab40

    const v3, 0xab7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaba1

    const v3, 0xabfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac40

    const v3, 0xac7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaca1

    const v3, 0xacfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad40

    const v3, 0xad7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xada1

    const v3, 0xadfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae40

    const v3, 0xae7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaea1

    const v3, 0xaefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf40

    const v3, 0xaf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xafa1

    const v3, 0xaffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb040

    const v3, 0xb07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb0a1

    invoke-direct {v1, v2, v7}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb140

    const v3, 0xb17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb1a1

    invoke-direct {v1, v2, v8}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb240

    const v3, 0xb27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb2a1

    const v3, 0xb2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb340

    const v3, 0xb37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb3a1

    const v3, 0xb3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb440

    const v3, 0xb47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb4a1

    const v3, 0xb4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb540

    const v3, 0xb57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb5a1

    const v3, 0xb5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb640

    const v3, 0xb67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb6a1

    const v3, 0xb6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb740

    const v3, 0xb77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb7a1

    const v3, 0xb7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb840

    const v3, 0xb87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb8a1

    const v3, 0xb8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb940

    const v3, 0xb97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb9a1

    const v3, 0xb9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba40

    const v3, 0xba7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbaa1

    const v3, 0xbafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb40

    const v3, 0xbb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbba1

    const v3, 0xbbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc40

    const v3, 0xbc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbca1

    const v3, 0xbcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd40

    const v3, 0xbd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbda1

    const v3, 0xbdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe40

    const v3, 0xbe7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbea1

    const v3, 0xbefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf40

    const v3, 0xbf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbfa1

    const v3, 0xbffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc040

    const v3, 0xc07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc0a1

    const v3, 0xc0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc140

    const v3, 0xc17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc1a1

    const v3, 0xc1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc240

    const v3, 0xc27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc2a1

    const v3, 0xc2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc340

    const v3, 0xc37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc3a1

    const v3, 0xc3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc440

    const v3, 0xc47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc4a1

    const v3, 0xc4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc540

    const v3, 0xc57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc5a1

    const v3, 0xc5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc640

    const v3, 0xc67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc940

    const v3, 0xc97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc9a1

    const v3, 0xc9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xca40

    const v3, 0xca7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcaa1

    const v3, 0xcafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcb40

    const v3, 0xcb7e    # 7.2999E-41f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcba1

    const v3, 0xcbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcc40

    const v3, 0xcc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcca1

    const v3, 0xccfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcd40

    const v3, 0xcd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcda1

    const v3, 0xcdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xce40

    const v3, 0xce7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcea1

    const v3, 0xcefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcf40

    const v3, 0xcf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcfa1

    const v3, 0xcffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd040

    const v3, 0xd07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd0a1

    const v3, 0xd0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd140

    const v3, 0xd17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd1a1

    const v3, 0xd1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd240

    const v3, 0xd27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd2a1

    const v3, 0xd2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd340

    const v3, 0xd37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd3a1

    const v3, 0xd3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd440

    const v3, 0xd47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd4a1

    const v3, 0xd4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd540

    const v3, 0xd57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd5a1

    const v3, 0xd5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd640

    const v3, 0xd67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd6a1

    const v3, 0xd6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd740

    const v3, 0xd77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd7a1

    const v3, 0xd7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd840

    const v3, 0xd87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd8a1

    const v3, 0xd8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd940

    const v3, 0xd97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd9a1

    const v3, 0xd9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xda40

    const v3, 0xda7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdaa1

    const v3, 0xdafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdb40

    const v3, 0xdb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdba1

    const v3, 0xdbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdc40

    const v3, 0xdc7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdca1

    const v3, 0xdcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdd40

    const v3, 0xdd7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdda1

    const v3, 0xddfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xde40

    const v3, 0xde7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdea1

    const v3, 0xdefe    # 7.9995E-41f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdf40

    const v3, 0xdf7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdfa1

    const v3, 0xdffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe040

    const v3, 0xe07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe0a1

    const v3, 0xe0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe140

    const v3, 0xe17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe1a1

    const v3, 0xe1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe240

    const v3, 0xe27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe2a1

    const v3, 0xe2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe340

    const v3, 0xe37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe3a1

    const v3, 0xe3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe440

    const v3, 0xe47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe4a1

    const v3, 0xe4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe540

    const v3, 0xe57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe5a1

    const v3, 0xe5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe640

    const v3, 0xe67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe6a1

    const v3, 0xe6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe740

    const v3, 0xe77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe7a1

    const v3, 0xe7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe840

    const v3, 0xe87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe8a1

    const v3, 0xe8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe940

    const v3, 0xe97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe9a1

    const v3, 0xe9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xea40

    const v3, 0xea7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeaa1

    const v3, 0xeafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeb40

    const v3, 0xeb7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeba1

    const v3, 0xebfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xec40

    const v3, 0xec7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeca1

    const v3, 0xecfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xed40

    const v3, 0xed7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeda1

    const v3, 0xedfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xee40

    const v3, 0xee7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeea1

    const v3, 0xeefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xef40

    const v3, 0xef7e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xefa1

    const v3, 0xeffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf040

    const v3, 0xf07e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf0a1

    const v3, 0xf0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf140

    const v3, 0xf17e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf1a1

    const v3, 0xf1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf240

    const v3, 0xf27e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf2a1

    const v3, 0xf2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf340

    const v3, 0xf37e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf3a1

    const v3, 0xf3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf440

    const v3, 0xf47e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf4a1

    const v3, 0xf4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf540

    const v3, 0xf57e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf5a1

    const v3, 0xf5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf640

    const v3, 0xf67e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf6a1

    const v3, 0xf6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf740

    const v3, 0xf77e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf7a1

    const v3, 0xf7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf840

    const v3, 0xf87e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf8a1

    const v3, 0xf8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf940

    const v3, 0xf97e

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf9a1

    const v3, 0xf9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8141

    const v3, 0x815a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8161

    const v3, 0x817a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8181

    const v3, 0x81fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8241

    const v3, 0x825a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8261

    const v3, 0x827a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8281

    const v3, 0x82fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8341

    const v3, 0x835a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8361

    const v3, 0x837a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8381

    const v3, 0x83fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8441

    const v3, 0x845a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8461

    const v3, 0x847a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8481

    const v3, 0x84fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8541

    const v3, 0x855a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8561

    const v3, 0x857a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8581

    const v3, 0x85fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8641

    const v3, 0x865a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8661

    const v3, 0x867a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8681

    const v3, 0x86fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8741

    const v3, 0x875a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8761

    const v3, 0x877a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8781

    const v3, 0x87fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8841

    const v3, 0x885a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8861

    const v3, 0x887a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8881

    const v3, 0x88fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8941

    const v3, 0x895a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8961

    const v3, 0x897a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8981

    const v3, 0x89fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a41

    const v3, 0x8a5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a61

    const v3, 0x8a7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8a81

    const v3, 0x8afe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b41

    const v3, 0x8b5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b61    # 5.0E-41f

    const v3, 0x8b7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8b81

    const v3, 0x8bfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c41

    const v3, 0x8c5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c61

    const v3, 0x8c7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8c81

    const v3, 0x8cfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d41

    const v3, 0x8d5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d61

    const v3, 0x8d7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8d81

    const v3, 0x8dfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e41

    const v3, 0x8e5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e61

    const v3, 0x8e7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8e81

    const v3, 0x8efe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f41

    const v3, 0x8f5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f61

    const v3, 0x8f7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x8f81

    const v3, 0x8ffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9041

    const v3, 0x905a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9061

    const v3, 0x907a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9081

    const v3, 0x90fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9141

    const v3, 0x915a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9161

    const v3, 0x917a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9181

    const v3, 0x91fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9241

    const v3, 0x925a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9261

    const v3, 0x927a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9281

    const v3, 0x92fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9341

    const v3, 0x935a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9361

    const v3, 0x937a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9381

    const v3, 0x93fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9441

    const v3, 0x945a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9461

    const v3, 0x947a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9481

    const v3, 0x94fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9541

    const v3, 0x955a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9561

    const v3, 0x957a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9581

    const v3, 0x95fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9641

    const v3, 0x965a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9661

    const v3, 0x967a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9681

    const v3, 0x96fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9741

    const v3, 0x975a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9761

    const v3, 0x977a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9781

    const v3, 0x97fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9841

    const v3, 0x985a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9861

    const v3, 0x987a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9881

    const v3, 0x98fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9941

    const v3, 0x995a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9961

    const v3, 0x997a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9981

    const v3, 0x99fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a41

    const v3, 0x9a5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a61

    const v3, 0x9a7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9a81

    const v3, 0x9afe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b41

    const v3, 0x9b5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b61

    const v3, 0x9b7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9b81

    const v3, 0x9bfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c41

    const v3, 0x9c5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c61

    const v3, 0x9c7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9c81

    const v3, 0x9cfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d41

    const v3, 0x9d5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d61

    const v3, 0x9d7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9d81

    const v3, 0x9dfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e41

    const v3, 0x9e5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e61

    const v3, 0x9e7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9e81

    const v3, 0x9efe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f41

    const v3, 0x9f5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f61

    const v3, 0x9f7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0x9f81

    const v3, 0x9ffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa041

    const v3, 0xa05a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa061

    const v3, 0xa07a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa081

    const v3, 0xa0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa141

    const v3, 0xa15a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa161

    const v3, 0xa17a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa181

    invoke-direct {v1, v2, v6}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa241

    const v3, 0xa25a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa261

    const v3, 0xa27a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa281

    const v3, 0xa2e7

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa341

    const v3, 0xa35a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa361

    const v3, 0xa37a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa381

    const v3, 0xa3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa441

    const v3, 0xa45a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa461

    const v3, 0xa47a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa481

    const v3, 0xa4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa541

    const v3, 0xa55a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa561

    const v3, 0xa57a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa581

    const v3, 0xa5aa

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa5b0

    const v3, 0xa5b9

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa5c1

    const v3, 0xa5d8

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa5e1

    const v3, 0xa5f8

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa641

    const v3, 0xa65a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa661

    const v3, 0xa67a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa681

    const v3, 0xa6e4

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa741    # 6.0E-41f

    const v3, 0xa75a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa761

    const v3, 0xa77a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa781

    const v3, 0xa7ef

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa841

    const v3, 0xa85a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa861

    const v3, 0xa87a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa881

    const v3, 0xa8a4

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8a6

    const v3, 0xa8a6

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8a8

    const v3, 0xa8af

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa8b1

    const v3, 0xa8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa941

    const v3, 0xa95a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa961

    const v3, 0xa97a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xa981

    const v3, 0xa9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa41

    const v3, 0xaa5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa61

    const v3, 0xaa7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaa81

    const v3, 0xaaf3

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab41

    const v3, 0xab5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab61

    const v3, 0xab7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xab81

    const v3, 0xabf6

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac41

    const v3, 0xac5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac61

    const v3, 0xac7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xac81

    const v3, 0xacc1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xacd1

    const v3, 0xacf1

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad41

    const v3, 0xad5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad61

    const v3, 0xad7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xad81

    const v3, 0xada0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae41

    const v3, 0xae5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae61

    const v3, 0xae7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xae81

    const v3, 0xaea0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf41

    const v3, 0xaf5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf61

    const v3, 0xaf7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xaf81

    const v3, 0xafa0

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb041

    const v3, 0xb05a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb061

    const v3, 0xb07a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb081

    invoke-direct {v1, v2, v7}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb141

    const v3, 0xb15a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb161

    const v3, 0xb17a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb181

    invoke-direct {v1, v2, v8}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb241

    const v3, 0xb25a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb261

    const v3, 0xb27a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb281

    const v3, 0xb2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb341

    const v3, 0xb35a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb361

    const v3, 0xb37a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb381

    const v3, 0xb3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb441

    const v3, 0xb45a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb461

    const v3, 0xb47a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb481

    const v3, 0xb4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb541

    const v3, 0xb55a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb561

    const v3, 0xb57a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb581

    const v3, 0xb5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb641

    const v3, 0xb65a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb661

    const v3, 0xb67a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb681

    const v3, 0xb6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb741

    const v3, 0xb75a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb761

    const v3, 0xb77a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb781

    const v3, 0xb7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb841

    const v3, 0xb85a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb861

    const v3, 0xb87a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb881

    const v3, 0xb8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb941

    const v3, 0xb95a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb961

    const v3, 0xb97a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xb981

    const v3, 0xb9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba41

    const v3, 0xba5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba61

    const v3, 0xba7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xba81

    const v3, 0xbafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb41

    const v3, 0xbb5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb61

    const v3, 0xbb7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbb81

    const v3, 0xbbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc41

    const v3, 0xbc5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc61

    const v3, 0xbc7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbc81

    const v3, 0xbcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd41

    const v3, 0xbd5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd61

    const v3, 0xbd7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbd81

    const v3, 0xbdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe41

    const v3, 0xbe5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe61

    const v3, 0xbe7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbe81

    const v3, 0xbefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf41

    const v3, 0xbf5a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf61

    const v3, 0xbf7a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xbf81

    const v3, 0xbffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc041

    const v3, 0xc05a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc061

    const v3, 0xc07a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc081

    const v3, 0xc0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc141

    const v3, 0xc15a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc161

    const v3, 0xc17a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc181

    const v3, 0xc1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc241

    const v3, 0xc25a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc261

    const v3, 0xc27a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc281

    const v3, 0xc2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc341

    const v3, 0xc35a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc361

    const v3, 0xc37a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc381

    const v3, 0xc3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc441

    const v3, 0xc45a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc461

    const v3, 0xc47a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc481

    const v3, 0xc4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc541

    const v3, 0xc55a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc561

    const v3, 0xc57a

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc581

    const v3, 0xc5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc641

    const v3, 0xc652

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc6a1

    const v3, 0xc6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc7a1

    const v3, 0xc7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xc8a1

    const v3, 0xc8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcaa1

    const v3, 0xcafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcba1

    const v3, 0xcbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcca1

    const v3, 0xccfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcda1

    const v3, 0xcdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcea1

    const v3, 0xcefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xcfa1

    const v3, 0xcffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd0a1

    const v3, 0xd0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd1a1

    const v3, 0xd1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd2a1

    const v3, 0xd2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd3a1

    const v3, 0xd3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd4a1

    const v3, 0xd4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd5a1

    const v3, 0xd5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd6a1

    const v3, 0xd6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd7a1

    const v3, 0xd7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd8a1

    const v3, 0xd8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xd9a1

    const v3, 0xd9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdaa1

    const v3, 0xdafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdba1

    const v3, 0xdbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdca1

    const v3, 0xdcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdda1

    const v3, 0xddfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdea1

    const v3, 0xdefe    # 7.9995E-41f

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xdfa1

    const v3, 0xdffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe0a1

    const v3, 0xe0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe1a1

    const v3, 0xe1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe2a1

    const v3, 0xe2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe3a1

    const v3, 0xe3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe4a1

    const v3, 0xe4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe5a1

    const v3, 0xe5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe6a1

    const v3, 0xe6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe7a1

    const v3, 0xe7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe8a1

    const v3, 0xe8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xe9a1

    const v3, 0xe9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeaa1

    const v3, 0xeafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeba1

    const v3, 0xebfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeca1

    const v3, 0xecfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeda1

    const v3, 0xedfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xeea1

    const v3, 0xeefe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xefa1

    const v3, 0xeffe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf0a1

    const v3, 0xf0fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf1a1

    const v3, 0xf1fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf2a1

    const v3, 0xf2fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf3a1

    const v3, 0xf3fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf4a1

    const v3, 0xf4fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf5a1

    const v3, 0xf5fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf6a1

    const v3, 0xf6fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf7a1

    const v3, 0xf7fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf8a1

    const v3, 0xf8fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xf9a1

    const v3, 0xf9fe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfaa1

    const v3, 0xfafe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfba1

    const v3, 0xfbfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfca1

    const v3, 0xfcfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    const v2, 0xfda1

    const v3, 0xfdfe

    invoke-direct {v1, v2, v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    sput v4, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_SHIFT_JIS:I

    .line 907
    sput v4, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_GBK:I

    .line 908
    sput v4, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_BIG5:I

    .line 909
    sput v4, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_EUC_KR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/pantech/audiotag/textcoder/TextCoder;-><init>()V

    return-void
.end method

.method public static charMatchesEncoding(ILjava/util/ArrayList;I)Z
    .registers 8
    .param p0, "ch"    # I
    .param p2, "rangeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/audiotag/textcoder/TextEncoding$Range;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 957
    .local p1, "encodingRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/audiotag/textcoder/TextEncoding$Range;>;"
    const/4 v2, 0x0

    .line 958
    .local v2, "low":I
    move v0, p2

    .line 960
    .local v0, "high":I
    :goto_2
    if-lt v2, v0, :cond_6

    .line 973
    const/4 v4, 0x0

    :goto_5
    return v4

    .line 962
    :cond_6
    add-int v4, v2, v0

    div-int/lit8 v1, v4, 0x2

    .line 963
    .local v1, "i":I
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;

    .line 965
    .local v3, "range":Lcom/pantech/audiotag/textcoder/TextEncoding$Range;
    invoke-static {v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->access$0(Lcom/pantech/audiotag/textcoder/TextEncoding$Range;)I

    move-result v4

    if-lt p0, v4, :cond_1e

    invoke-static {v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->access$1(Lcom/pantech/audiotag/textcoder/TextEncoding$Range;)I

    move-result v4

    if-gt p0, v4, :cond_1e

    .line 966
    const/4 v4, 0x1

    goto :goto_5

    .line 967
    :cond_1e
    invoke-static {v3}, Lcom/pantech/audiotag/textcoder/TextEncoding$Range;->access$1(Lcom/pantech/audiotag/textcoder/TextEncoding$Range;)I

    move-result v4

    if-le p0, v4, :cond_27

    .line 968
    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    .line 970
    :cond_27
    move v0, v1

    goto :goto_2
.end method

.method private static clearCount()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 979
    sput v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_SHIFT_JIS:I

    .line 980
    sput v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_GBK:I

    .line 981
    sput v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_BIG5:I

    .line 982
    sput v0, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_EUC_KR:I

    .line 983
    return-void
.end method

.method public static findPossibleEncodings(I)I
    .registers 4
    .param p0, "ch"    # I

    .prologue
    .line 920
    const/16 v1, 0x100

    if-ge p0, v1, :cond_7

    const/16 v0, 0xf

    .line 950
    :goto_6
    return v0

    .line 923
    :cond_7
    sget-object v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    sget-object v2, Lcom/pantech/audiotag/textcoder/TextEncoding;->kShiftJISRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/pantech/audiotag/textcoder/TextEncoding;->charMatchesEncoding(ILjava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_SHIFT_JIS:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_SHIFT_JIS:I

    .line 924
    :cond_1b
    sget-object v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    sget-object v2, Lcom/pantech/audiotag/textcoder/TextEncoding;->kGBKRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/pantech/audiotag/textcoder/TextEncoding;->charMatchesEncoding(ILjava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_GBK:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_GBK:I

    .line 925
    :cond_2f
    sget-object v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    sget-object v2, Lcom/pantech/audiotag/textcoder/TextEncoding;->kBig5Ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/pantech/audiotag/textcoder/TextEncoding;->charMatchesEncoding(ILjava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_43

    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_BIG5:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_BIG5:I

    .line 926
    :cond_43
    sget-object v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    sget-object v2, Lcom/pantech/audiotag/textcoder/TextEncoding;->kEUCKRRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/pantech/audiotag/textcoder/TextEncoding;->charMatchesEncoding(ILjava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_57

    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_EUC_KR:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_EUC_KR:I

    .line 938
    :cond_57
    const/4 v0, 0x0

    .line 940
    .local v0, "charset":I
    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_BIG5:I

    if-lez v1, :cond_5e

    or-int/lit8 v0, v0, 0x4

    .line 941
    :cond_5e
    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_SHIFT_JIS:I

    if-lez v1, :cond_64

    or-int/lit8 v0, v0, 0x1

    .line 942
    :cond_64
    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_GBK:I

    if-lez v1, :cond_6a

    or-int/lit8 v0, v0, 0x2

    .line 943
    :cond_6a
    sget v1, Lcom/pantech/audiotag/textcoder/TextEncoding;->COUNT_EUC_KR:I

    if-lez v1, :cond_70

    or-int/lit8 v0, v0, 0x8

    .line 945
    :cond_70
    invoke-static {}, Lcom/pantech/audiotag/textcoder/TextEncoding;->clearCount()V

    goto :goto_6
.end method

.method public static getEncodingStr(I)Ljava/lang/String;
    .registers 2
    .param p0, "encoding"    # I

    .prologue
    .line 988
    packed-switch p0, :pswitch_data_12

    .line 994
    :pswitch_3
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 990
    :pswitch_6
    const-string v0, "EUC-KR"

    goto :goto_5

    .line 991
    :pswitch_9
    const-string v0, "BIG5"

    goto :goto_5

    .line 992
    :pswitch_c
    const-string v0, "SHIFT_JIS"

    goto :goto_5

    .line 993
    :pswitch_f
    const-string v0, "GBK"

    goto :goto_5

    .line 988
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
