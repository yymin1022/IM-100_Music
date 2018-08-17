.class Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/picker/MusicPickerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/pantech/app/music/utils/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field private mListView:Landroid/widget/ListView;

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/picker/MusicPickerList;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .registers 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "layout"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    const/4 v3, 0x0

    .line 225
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    .line 226
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 210
    iput-object v3, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 228
    iput-object p3, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 229
    const v0, 0x7f0801b8

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 230
    const v0, 0x7f0801b7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 231
    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;

    .line 238
    .local v12, "vh":Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mTitleIdx:I

    iget-object v14, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 240
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v14, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v14, v14, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v15, 0x0

    iget-object v0, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/widget/TextView;->setText([CII)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 250
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 252
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_45

    const-string v13, "<unknown>"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_134

    .line 254
    :cond_45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_4c
    const-string v13, " / "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    if-eqz v8, :cond_65

    const-string v13, "<unknown>"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_139

    .line 262
    :cond_65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 268
    .local v5, "len":I
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    if-eqz v13, :cond_79

    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v13, v13

    if-ge v13, v5, :cond_7d

    .line 269
    :cond_79
    new-array v13, v5, [C

    iput-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 271
    :cond_7d
    const/4 v13, 0x0

    iget-object v14, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v5, v14, v15}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 272
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v14, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 278
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 280
    .local v6, "id":J
    const-string v13, "MusicPicker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Binding id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-wide v0, v15, Lcom/pantech/app/music/picker/MusicPickerList;->mSelectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " playing="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-wide v0, v15, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cursor="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v13, v13, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v13, :cond_167

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v13, v13, Lcom/pantech/app/music/picker/MusicPickerList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v13

    if-eqz v13, :cond_167

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v13, v13, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v14, v14, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 286
    .local v10, "tempId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-wide v14, v13, Lcom/pantech/app/music/picker/MusicPickerList;->mPlayingId:J

    cmp-long v13, v10, v14

    if-nez v13, :cond_13e

    .line 287
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtn:Landroid/widget/ImageView;

    const v14, 0x7f0201d2

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0126

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 289
    .local v9, "playingColor":Landroid/content/res/ColorStateList;
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    .end local v9    # "playingColor":Landroid/content/res/ColorStateList;
    .end local v10    # "tempId":J
    :cond_133
    :goto_133
    return-void

    .line 256
    .end local v5    # "len":I
    .end local v6    # "id":J
    :cond_134
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4c

    .line 264
    :cond_139
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6c

    .line 292
    .restart local v5    # "len":I
    .restart local v6    # "id":J
    .restart local v10    # "tempId":J
    :cond_13e
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtn:Landroid/widget/ImageView;

    const v14, 0x7f0201d0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f01fd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 295
    .local v3, "colorLineMain":Landroid/content/res/ColorStateList;
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f01fe

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 297
    .local v4, "colorLineSub":Landroid/content/res/ColorStateList;
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_133

    .line 299
    .end local v3    # "colorLineMain":Landroid/content/res/ColorStateList;
    .end local v4    # "colorLineSub":Landroid/content/res/ColorStateList;
    .end local v10    # "tempId":J
    :cond_167
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtn:Landroid/widget/ImageView;

    if-eqz v13, :cond_133

    .line 300
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtn:Landroid/widget/ImageView;

    const v14, 0x7f0201d0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f01fd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 303
    .restart local v3    # "colorLineMain":Landroid/content/res/ColorStateList;
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f01fe

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 305
    .restart local v4    # "colorLineSub":Landroid/content/res/ColorStateList;
    iget-object v13, v12, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_133
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 361
    const-string v2, "MusicPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting cursor to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget-object v4, v4, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iput-object p1, v2, Lcom/pantech/app/music/picker/MusicPickerList;->mCursor:Landroid/database/Cursor;

    .line 366
    if-eqz p1, :cond_87

    .line 368
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIdIdx:I

    .line 370
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    const-string v3, "list_display_filename"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 373
    .local v1, "isFileName":Z
    if-nez v1, :cond_8d

    .line 374
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mTitleIdx:I

    .line 378
    :goto_4a
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mArtistIdx:I

    .line 380
    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mAlbumIdx:I

    .line 387
    iget v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexerSortMode:I

    iget-object v3, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget v3, v3, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    if-ne v2, v3, :cond_66

    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexer:Lcom/pantech/app/music/utils/MusicAlphabetIndexer;

    if-nez v2, :cond_9c

    .line 388
    :cond_66
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    iget v2, v2, Lcom/pantech/app/music/picker/MusicPickerList;->mSortMode:I

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexerSortMode:I

    .line 389
    iget v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mTitleIdx:I

    .line 390
    .local v0, "idx":I
    iget v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v2, :pswitch_data_a2

    .line 398
    :goto_73
    new-instance v2, Lcom/pantech/app/music/utils/MusicAlphabetIndexer;

    iget-object v3, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v3}, Lcom/pantech/app/music/picker/MusicPickerList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/pantech/app/music/utils/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexer:Lcom/pantech/app/music/utils/MusicAlphabetIndexer;

    .line 412
    .end local v0    # "idx":I
    .end local v1    # "isFileName":Z
    :cond_87
    :goto_87
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v2}, Lcom/pantech/app/music/picker/MusicPickerList;->makeListShown()V

    .line 413
    return-void

    .line 376
    .restart local v1    # "isFileName":Z
    :cond_8d
    const-string v2, "_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mTitleIdx:I

    goto :goto_4a

    .line 392
    .restart local v0    # "idx":I
    :pswitch_96
    iget v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mArtistIdx:I

    .line 393
    goto :goto_73

    .line 395
    :pswitch_99
    iget v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mAlbumIdx:I

    goto :goto_73

    .line 406
    .end local v0    # "idx":I
    :cond_9c
    iget-object v2, p0, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;->mIndexer:Lcom/pantech/app/music/utils/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/utils/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_87

    .line 390
    :pswitch_data_a2
    .packed-switch 0x2
        :pswitch_99
        :pswitch_96
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 312
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 313
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030090

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 316
    .local v4, "view":Landroid/view/View;
    new-instance v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;-><init>(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)V

    .line 318
    .local v3, "vh":Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;
    const v5, 0x7f100145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtnGroup:Landroid/view/ViewGroup;

    .line 319
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtnGroup:Landroid/view/ViewGroup;

    new-instance v6, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$1;-><init>(Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v5, 0x7f100146

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtn:Landroid/widget/ImageView;

    .line 336
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtnGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 337
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtnGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 338
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->imgBtnGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 340
    const v5, 0x7f100147

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 341
    const v5, 0x7f100148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 344
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 345
    const/16 v5, 0xc8

    new-array v5, v5, [C

    iput-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 348
    .local v0, "colorLineMain":Landroid/content/res/ColorStateList;
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 351
    .local v1, "colorLineSub":Landroid/content/res/ColorStateList;
    iget-object v5, v3, Lcom/pantech/app/music/picker/MusicPickerList$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 353
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    return-object v4
.end method
