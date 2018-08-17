.class Lcom/pantech/multimedia/common/URIUtils$URIEncoder;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/common/URIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URIEncoder"
.end annotation


# static fields
.field protected static final IPv4address:Ljava/util/BitSet;

.field protected static final IPv6address:Ljava/util/BitSet;

.field protected static final abs_path:Ljava/util/BitSet;

.field public static final allowed_abs_path:Ljava/util/BitSet;

.field protected static final alpha:Ljava/util/BitSet;

.field protected static final alphanum:Ljava/util/BitSet;

.field protected static final digit:Ljava/util/BitSet;

.field protected static final escaped:Ljava/util/BitSet;

.field protected static final hex:Ljava/util/BitSet;

.field protected static final hostname:Ljava/util/BitSet;

.field protected static final mark:Ljava/util/BitSet;

.field protected static final opaque_part:Ljava/util/BitSet;

.field protected static final param:Ljava/util/BitSet;

.field protected static final path:Ljava/util/BitSet;

.field protected static final path_segments:Ljava/util/BitSet;

.field protected static final pchar:Ljava/util/BitSet;

.field protected static final percent:Ljava/util/BitSet;

.field protected static final reg_name:Ljava/util/BitSet;

.field protected static final reserved:Ljava/util/BitSet;

.field protected static final scheme:Ljava/util/BitSet;

.field protected static final segment:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x24

    const/16 v6, 0x3a

    const/16 v5, 0x3b

    const/16 v4, 0x2b

    const/16 v3, 0x100

    .line 119
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->percent:Ljava/util/BitSet;

    .line 123
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->percent:Ljava/util/BitSet;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 138
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    .line 142
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_21
    const/16 v1, 0x39

    if-le v0, v1, :cond_382

    .line 160
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alpha:Ljava/util/BitSet;

    .line 164
    const/16 v0, 0x61

    :goto_2e
    const/16 v1, 0x7a

    if-le v0, v1, :cond_38b

    .line 168
    const/16 v0, 0x41

    :goto_34
    const/16 v1, 0x5a

    if-le v0, v1, :cond_394

    .line 186
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alphanum:Ljava/util/BitSet;

    .line 190
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alphanum:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 191
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alphanum:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 206
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    .line 210
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 211
    const/16 v0, 0x61

    :goto_5d
    const/16 v1, 0x66

    if-le v0, v1, :cond_39d

    .line 215
    const/16 v0, 0x41

    :goto_63
    const/16 v1, 0x46

    if-le v0, v1, :cond_3a6

    .line 233
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    .line 237
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->percent:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 238
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 253
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    .line 257
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 258
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 259
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 260
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 261
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 262
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 263
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 264
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 265
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 281
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    .line 285
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 286
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->mark:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 301
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    .line 305
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 306
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 307
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 308
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 309
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 310
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 311
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 312
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 313
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 314
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 329
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric:Ljava/util/BitSet;

    .line 333
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 334
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 335
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 350
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    .line 354
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 355
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 356
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 357
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 358
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 359
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 360
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 361
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 362
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 377
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->param:Ljava/util/BitSet;

    .line 391
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->segment:Ljava/util/BitSet;

    .line 395
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->segment:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 396
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->segment:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 397
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->segment:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->param:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 412
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path_segments:Ljava/util/BitSet;

    .line 416
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path_segments:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 417
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path_segments:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->segment:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 432
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->abs_path:Ljava/util/BitSet;

    .line 436
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->abs_path:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 437
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 452
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    .line 456
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 457
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 458
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 459
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 460
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 461
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 462
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 463
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 464
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 465
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 466
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 481
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->opaque_part:Ljava/util/BitSet;

    .line 486
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 487
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 502
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path:Ljava/util/BitSet;

    .line 506
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 507
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->path:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 522
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv4address:Ljava/util/BitSet;

    .line 526
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv4address:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 527
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv4address:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 542
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv6address:Ljava/util/BitSet;

    .line 546
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv6address:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 547
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 548
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv6address:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 563
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->toplabel:Ljava/util/BitSet;

    .line 567
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->toplabel:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 568
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->toplabel:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 583
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hostname:Ljava/util/BitSet;

    .line 587
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hostname:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 589
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hostname:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 605
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    .line 609
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 610
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 611
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 612
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 613
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 614
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 615
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 616
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 617
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 623
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    .line 627
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 628
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 629
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 630
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 631
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 632
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 647
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    .line 651
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 652
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 653
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 654
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 655
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 656
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 657
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 658
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 659
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 660
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 675
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    .line 678
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 679
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 680
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 681
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 682
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->scheme:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 688
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->allowed_abs_path:Ljava/util/BitSet;

    .line 692
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 694
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->percent:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 695
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->clear(I)V

    .line 112
    return-void

    .line 144
    :cond_382
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    .line 166
    :cond_38b
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    .line 170
    :cond_394
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_34

    .line 213
    :cond_39d
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5d

    .line 217
    :cond_3a6
    sget-object v1, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_63
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
