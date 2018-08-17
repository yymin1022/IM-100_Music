.class public interface abstract Lcom/pantech/app/music/db/MusicDBStore$SearchHistoryColumns;
.super Ljava/lang/Object;
.source "MusicDBStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchHistoryColumns"
.end annotation


# static fields
.field public static final SEARCH_KEYWORD_ADDEDTIME:Ljava/lang/String; = "data_added"

.field public static final SEARCH_KEYWORD_NAME:Ljava/lang/String; = "search_keyword_name"
