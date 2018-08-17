.class public interface abstract Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.super Ljava/lang/Object;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;,
        Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;,
        Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;,
        Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;,
        Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    }
.end annotation


# static fields
.field public static final VIEWTYPE_NORMAL:I = 0x0

.field public static final VIEWTYPE_SEPARATER:I = 0x1


# virtual methods
.method public abstract cmChangeCursor(Landroid/database/Cursor;)V
.end method

.method public abstract cmClearAll()V
.end method

.method public abstract cmGetCount()I
.end method

.method public abstract cmGetCursor()Landroid/database/Cursor;
.end method

.method public abstract cmGetCursorLock()Ljava/lang/Object;
.end method

.method public abstract cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
.end method

.method public abstract cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
.end method

.method public abstract cmGetItem(I)Landroid/database/Cursor;
.end method

.method public abstract cmGetItemCount()I
.end method

.method public abstract cmGetItemPosition(I)I
.end method

.method public abstract cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
.end method

.method public abstract cmGetViewPosition(I)I
.end method

.method public abstract cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
.end method

.method public abstract cmNotifyDataSetChanged()V
.end method

.method public abstract cmResetIndexbarPosition()V
.end method

.method public abstract cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
.end method
