.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
.super Landroid/widget/FrameLayout;
.source "SharedPhotoVideoCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;,
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

.field private indeces:[I

.field private isFirst:Z

.field private itemsCount:I

.field private messageObjects:[Lorg/telegram/messenger/MessageObject;

.field private photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x6

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-array v1, v3, [Lorg/telegram/messenger/MessageObject;

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    .line 165
    new-array v1, v3, [Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    .line 166
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    .line 167
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_11
    if-ge v0, v3, :cond_51

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->addView(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 192
    :cond_51
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method


# virtual methods
.method public getImageView(I)Lorg/telegram/ui/Components/BackupImageView;
    .registers 3
    .param p1, "a"    # I

    .prologue
    .line 213
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-lt p1, v0, :cond_6

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_5
.end method

.method public getMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .registers 3
    .param p1, "a"    # I

    .prologue
    .line 220
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-lt p1, v0, :cond_6

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    .line 281
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 282
    const/high16 v3, 0x43f50000    # 490.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    div-int v1, v3, v5

    .line 287
    .local v1, "itemWidth":I
    :goto_1d
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1e
    iget v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-ge v0, v3, :cond_6a

    .line 288
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    if-eqz v3, :cond_65

    move v3, v4

    :goto_31
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 290
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 291
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 292
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 293
    const/16 v3, 0x33

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 284
    .end local v0    # "a":I
    .end local v1    # "itemWidth":I
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_52
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    div-int v1, v3, v5

    .restart local v1    # "itemWidth":I
    goto :goto_1d

    .line 289
    .restart local v0    # "a":I
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_65
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_31

    .line 297
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6a
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    if-eqz v3, :cond_7a

    :goto_6e
    add-int v3, v4, v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 298
    return-void

    .line 297
    :cond_7a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_6e
.end method

.method public setChecked(IZZ)V
    .registers 5
    .param p1, "a"    # I
    .param p2, "checked"    # Z
    .param p3, "animated"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setChecked(ZZ)V

    .line 232
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    .line 202
    return-void
.end method

.method public setIsFirst(Z)V
    .registers 2
    .param p1, "first"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    .line 228
    return-void
.end method

.method public setItem(IILorg/telegram/messenger/MessageObject;)V
    .registers 29
    .param p1, "a"    # I
    .param p2, "index"    # I
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    aput-object p3, v1, p1

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    aput p2, v1, p1

    .line 238
    if-eqz p3, :cond_146

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v23, v1, p1

    .line 242
    .local v23, "photoVideoView":Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 243
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_cf

    const/4 v1, 0x1

    :goto_40
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 245
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    const/16 v20, 0x0

    .line 247
    .local v20, "duration":I
    const/16 v19, 0x0

    .local v19, "b":I
    :goto_56
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_7e

    .line 248
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 249
    .local v18, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v18

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v1, :cond_d2

    .line 250
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v20, v0

    .line 254
    .end local v18    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_7e
    div-int/lit8 v21, v20, 0x3c

    .line 255
    .local v21, "minutes":I
    mul-int/lit8 v1, v21, 0x3c

    sub-int v24, v20, v1

    .line 256
    .local v24, "seconds":I
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$700(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_d5

    .line 258
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 259
    .local v7, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020217

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const-string v8, "b"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    .end local v7    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v19    # "b":I
    .end local v20    # "duration":I
    .end local v21    # "minutes":I
    .end local v23    # "photoVideoView":Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
    .end local v24    # "seconds":I
    :goto_ce
    return-void

    .line 243
    .restart local v23    # "photoVideoView":Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
    :cond_cf
    const/4 v1, 0x0

    goto/16 :goto_40

    .line 247
    .restart local v18    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v19    # "b":I
    .restart local v20    # "duration":I
    :cond_d2
    add-int/lit8 v19, v19, 0x1

    goto :goto_56

    .line 261
    .end local v18    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v21    # "minutes":I
    .restart local v24    # "seconds":I
    :cond_d5
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const v2, 0x7f020217

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_ce

    .line 263
    .end local v19    # "b":I
    .end local v20    # "duration":I
    .end local v21    # "minutes":I
    .end local v24    # "seconds":I
    :cond_e0
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_133

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_133

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_133

    .line 264
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v22

    .line 266
    .local v22, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, v22

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v15, "b"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_ce

    .line 268
    .end local v22    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_133
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const v2, 0x7f020217

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_ce

    .line 272
    .end local v23    # "photoVideoView":Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;
    :cond_146
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->clearAnimation()V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, p1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    goto/16 :goto_ce
.end method

.method public setItemsCount(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->clearAnimation()V

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v2, v1, v0

    if-ge v0, p1, :cond_1a

    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_1a
    const/4 v1, 0x4

    goto :goto_14

    .line 209
    :cond_1c
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    .line 210
    return-void
.end method

.method public updateCheckboxColor()V
    .registers 5

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1e

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$400(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    const-string v2, "checkbox"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "checkboxCheck"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_1e
    return-void
.end method
