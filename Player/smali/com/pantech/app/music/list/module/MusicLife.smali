.class public Lcom/pantech/app/music/list/module/MusicLife;
.super Ljava/lang/Object;
.source "MusicLife.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/MusicLife$GenreType;,
        Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;,
        Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static mMusicLifeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mGroupType:I

.field mResolver:Landroid/content/ContentResolver;

.field mSubType:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "items1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;>;"
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080052

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ub304\uc2a4"

    aput-object v6, v5, v8

    const-string v6, "\ub77d"

    aput-object v6, v5, v9

    const-string v6, "\ud799\ud569"

    aput-object v6, v5, v10

    const-string v6, "\uc77c\ub809\ud2b8\ub85c\ub2c9"

    aput-object v6, v5, v11

    const-string v6, "\ucee8\ud2b8\ub9ac"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "\uc2a4\uce74"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "dance"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "rock"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "hiphop"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "hip-hop"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "country"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "ska"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080055

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ubc1c\ub77c\ub4dc"

    aput-object v6, v5, v8

    const-string v6, "\ub274\uc5d0\uc774\uc9c0"

    aput-object v6, v5, v9

    const-string v6, "\uc54c\uc564\ube44"

    aput-object v6, v5, v10

    const-string v6, "Ballad"

    aput-object v6, v5, v11

    const-string v6, "NewAge"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "R&B"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080058

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\uce90\ub864"

    aput-object v6, v5, v8

    const-string v6, "\ud06c\ub9ac\uc2a4\ub9c8\uc2a4"

    aput-object v6, v5, v9

    const-string v6, "\uaca8\uc6b8"

    aput-object v6, v5, v10

    const-string v6, "Carol"

    aput-object v6, v5, v11

    const-string v6, "Christmas"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "xmas"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "x-mas"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "winter"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    const v5, 0x7f08004e

    invoke-direct {v4, v5, v0}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "items2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;>;"
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080053

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ub304\uc2a4"

    aput-object v6, v5, v8

    const-string v6, "\ub77d"

    aput-object v6, v5, v9

    const-string v6, "\ud3ec\ud06c"

    aput-object v6, v5, v10

    const-string v6, "\ud31d"

    aput-object v6, v5, v11

    const-string v6, "\uc2a4\uc719"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "\ub514\uc2a4\ucf54"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "\ub808\uac8c"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "dance"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "rock"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "fork"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "pop"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "swing"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "disco"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "reggae"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080057

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ubc1c\ub77c\ub4dc"

    aput-object v6, v5, v8

    const-string v6, "\uc54c\uc564\ube44"

    aput-object v6, v5, v9

    const-string v6, "\ube14\ub8e8\uc2a4"

    aput-object v6, v5, v10

    const-string v6, "\uc18c\uc6b8"

    aput-object v6, v5, v11

    const-string v6, "Ballad"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "R&B"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "Blues"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "Soul"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f08004f

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\uba54\ud0c8"

    aput-object v6, v5, v8

    const-string v6, "\ub77d"

    aput-object v6, v5, v9

    const-string v6, "\uac31\uc2a4\ud130"

    aput-object v6, v5, v10

    const-string v6, "\uc5bc\ud130\ub108\ud2f0\ube0c"

    aput-object v6, v5, v11

    const-string v6, "metal"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "rock"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "gangsta"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "alternative"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "\uc5bc\ud130\ub124\ud2f0\ube0c"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080050

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ubc1c\ub77c\ub4dc"

    aput-object v6, v5, v8

    const-string v6, "\uc54c\uc564\ube44"

    aput-object v6, v5, v9

    const-string v6, "\ud074\ub798\uc2dd"

    aput-object v6, v5, v10

    const-string v6, "\uc7ac\uc988"

    aput-object v6, v5, v11

    const-string v6, "\ub274\uc5d0\uc774\uc9c0"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "\ud53c\uc544\ub178"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "\uc5b8\ud50c\ub7ec\uadf8\ub4dc"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "ballad"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "r&b"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "classic"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "jazz"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "newage"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "piano"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "instrumental"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "unplugged"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    const v5, 0x7f08004c

    invoke-direct {v4, v5, v1}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "items3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;>;"
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080059

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ub304\uc2a4"

    aput-object v6, v5, v8

    const-string v6, "\ub77d"

    aput-object v6, v5, v9

    const-string v6, "\ud799\ud569"

    aput-object v6, v5, v10

    const-string v6, "\uc77c\ub809\ud2b8\ub85c\ub2c9"

    aput-object v6, v5, v11

    const-string v6, "\ud14c\ud06c\ub178"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "\ub77d"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "\uc5bc\ud130\ub108\ud2f0\ube0c"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "Dance"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "Rap"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "hip-hop"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "hiphop"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "electronic"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "techno"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "rock"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "alternative"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080051

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ub304\uc2a4"

    aput-object v6, v5, v8

    const-string v6, "\ub77d"

    aput-object v6, v5, v9

    const-string v6, "\ud799\ud569"

    aput-object v6, v5, v10

    const-string v6, "\ubc14\uce89\uc2a4"

    aput-object v6, v5, v11

    const-string v6, "\ub4dc\ub77c\uc774\ube0c"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "dance"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "rock"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "hiphop"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "hip-hop"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "vacation"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "driving"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080054

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\ud074\ub798\uc2dd"

    aput-object v6, v5, v8

    const-string v6, "\ud53c\uc544\ub178"

    aput-object v6, v5, v9

    const-string v6, "\uc7ac\uc988"

    aput-object v6, v5, v10

    const-string v6, "\ubc1c\ub77c\ub4dc"

    aput-object v6, v5, v11

    const-string v6, "\uac00\uc2a4\ud3a0"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "\ud790\ub9c1"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "classic"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "piano"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "jazz"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "ballad"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "gospel"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "healing"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    const v4, 0x7f080056

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "OST"

    aput-object v6, v5, v8

    const-string v6, "\ub4dc\ub77c\ub9c8"

    aput-object v6, v5, v9

    const-string v6, "\uc601\ud654"

    aput-object v6, v5, v10

    const-string v6, "\ucd94\uc5b5"

    aput-object v6, v5, v11

    const-string v6, "Original sound track"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "OST"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "drama"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "movie"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "7080"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "8090"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "70\'s"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "80\'s"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "90\'s"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    const v5, 0x7f08004d

    invoke-direct {v4, v5, v2}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupType"    # I
    .param p3, "subType"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MusicLife;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/MusicLife;->mResolver:Landroid/content/ContentResolver;

    .line 149
    iput p2, p0, Lcom/pantech/app/music/list/module/MusicLife;->mGroupType:I

    .line 150
    iput p3, p0, Lcom/pantech/app/music/list/module/MusicLife;->mSubType:I

    .line 151
    return-void
.end method

.method public static compareGenreName(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "srcGenres"    # Ljava/lang/String;
    .param p1, "destGenres"    # [Ljava/lang/String;

    .prologue
    .line 161
    const-string v5, "\\p{Space}"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "convertedGenreName":Ljava/lang/String;
    const-string v5, "[^\uac00-\ud7a3xfe0-9a-zA-Z\\s&]"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_36

    aget-object v2, v0, v3

    .line 166
    .local v2, "genre":Ljava/lang/String;
    const-string v5, "\\p{Space}"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_33

    .line 168
    const/4 v5, 0x1

    .line 172
    .end local v2    # "genre":Ljava/lang/String;
    :goto_32
    return v5

    .line 164
    .restart local v2    # "genre":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 172
    .end local v2    # "genre":Ljava/lang/String;
    :cond_36
    const/4 v5, 0x0

    goto :goto_32
.end method

.method public static getGenres(II)[Ljava/lang/String;
    .registers 5
    .param p0, "groupType"    # I
    .param p1, "subType"    # I

    .prologue
    .line 109
    sget-object v1, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    iget-object v1, v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    iget-object v0, v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;->mAssosiatedGenres:[Ljava/lang/String;

    .line 110
    .local v0, "genres":[Ljava/lang/String;
    const-string v1, "VMusic"

    const-string v2, "\uc7a5\ub974:"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/music/utils/MLog;->list(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-object v0
.end method

.method public static getSubTitles(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 97
    sget-object v1, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    .line 99
    .local v0, "group":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
    if-eqz v0, :cond_f

    .line 101
    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->getTitles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getTitles(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    .line 86
    .local v1, "item":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
    iget v3, v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mGroudResID:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 89
    .end local v1    # "item":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_39
    return-object v3

    :cond_3a
    const/4 v3, 0x0

    goto :goto_39
.end method


# virtual methods
.method public call()Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;
    .registers 25

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 193
    .local v22, "startTime":J
    const/16 v19, 0x0

    .line 195
    .local v19, "musicLifeSongArray":[Lcom/pantech/app/music/list/MusicItemInfo;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v17, "mGenreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/module/MusicLife$GenreType;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/MusicLife;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 199
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 201
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_23
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v12, v3, :cond_5a

    .line 203
    invoke-interface {v9, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 205
    const-string v3, "name"

    invoke-static {v9, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "genreName":Ljava/lang/String;
    const-string v3, "_id"

    invoke-static {v9, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 208
    .local v10, "genreID":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/music/list/module/MusicLife;->mGroupType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/music/list/module/MusicLife;->mSubType:I

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/module/MusicLife;->getGenres(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/pantech/app/music/list/module/MusicLife;->compareGenreName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 210
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$GenreType;

    invoke-direct {v3, v10, v11}, Lcom/pantech/app/music/list/module/MusicLife$GenreType;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v10    # "genreID":I
    .end local v11    # "genreName":Ljava/lang/String;
    :cond_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    .line 216
    .end local v12    # "i":I
    :cond_5a
    if-eqz v9, :cond_5f

    .line 217
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_5f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_113

    .line 221
    const/4 v12, 0x0

    .line 222
    .restart local v12    # "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v8, v3, [Landroid/database/Cursor;

    .line 224
    .local v8, "arrCursor":[Landroid/database/Cursor;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_70
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/pantech/app/music/list/module/MusicLife$GenreType;

    .line 226
    .local v15, "item":Lcom/pantech/app/music/list/module/MusicLife$GenreType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/pantech/app/music/list/module/MusicLife$GenreType;->genreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Query List START"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 228
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/module/MusicLife;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget v6, v15, Lcom/pantech/app/music/list/module/MusicLife$GenreType;->genreID:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v8, v12

    move v12, v13

    .line 229
    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_70

    .line 231
    .end local v15    # "item":Lcom/pantech/app/music/list/module/MusicLife$GenreType;
    :cond_bc
    new-instance v18, Landroid/database/MergeCursor;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 233
    .local v18, "mergedCursor":Landroid/database/MergeCursor;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v20, "musicLifeSongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    if-eqz v18, :cond_ee

    .line 237
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_cc
    invoke-virtual/range {v18 .. v18}, Landroid/database/MergeCursor;->getCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_ee

    .line 239
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 241
    new-instance v3, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_eb
    add-int/lit8 v16, v16, 0x1

    goto :goto_cc

    .line 246
    .end local v16    # "j":I
    :cond_ee
    if-eqz v18, :cond_f3

    invoke-virtual/range {v18 .. v18}, Landroid/database/MergeCursor;->close()V

    .line 248
    :cond_f3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_113

    .line 251
    new-instance v3, Lcom/pantech/app/music/list/module/MusicLife$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/pantech/app/music/list/module/MusicLife$1;-><init>(Lcom/pantech/app/music/list/module/MusicLife;)V

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "musicLifeSongArray":[Lcom/pantech/app/music/list/MusicItemInfo;
    check-cast v19, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 268
    .end local v8    # "arrCursor":[Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "mergedCursor":Landroid/database/MergeCursor;
    .end local v20    # "musicLifeSongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v19    # "musicLifeSongArray":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_113
    invoke-static/range {v22 .. v23}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->guarentee1SecSleep(J)V

    .line 270
    new-instance v2, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v6, 0x0

    const-string v7, ""

    invoke-direct/range {v2 .. v7}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 272
    .local v2, "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    new-instance v3, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    new-instance v4, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    sget-object v5, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v5, v6}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;Z)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;-><init>([Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;)V

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/MusicLife;->call()Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    move-result-object v0

    return-object v0
.end method
