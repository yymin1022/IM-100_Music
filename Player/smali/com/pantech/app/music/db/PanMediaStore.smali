.class public Lcom/pantech/app/music/db/PanMediaStore;
.super Ljava/lang/Object;
.source "PanMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;,
        Lcom/pantech/app/music/db/PanMediaStore$Folder;,
        Lcom/pantech/app/music/db/PanMediaStore$AudioEx;,
        Lcom/pantech/app/music/db/PanMediaStore$AudioColumnsEx;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method
