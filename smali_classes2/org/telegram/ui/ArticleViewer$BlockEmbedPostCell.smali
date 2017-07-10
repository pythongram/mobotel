.class Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockEmbedPostCell"
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:Z

.field private captionX:I

.field private captionY:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

.field private dateLayout:Landroid/text/StaticLayout;

.field private dateX:I

.field private lastCreatedWidth:I

.field private lineHeight:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameX:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v2, 0x42000000    # 32.0f

    .line 2906
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 2907
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2896
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    .line 2897
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    .line 2899
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionX:I

    .line 2908
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2910
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 2912
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 2913
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v1, 0x36

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    .line 2966
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-nez v0, :cond_a

    .line 2992
    :goto_9
    return-void

    .line 2969
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_13

    .line 2970
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2972
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3d

    .line 2973
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2974
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_a8

    move v0, v1

    :goto_1f
    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_ab

    const/high16 v0, 0x41200000    # 10.0f

    :goto_2d
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2975
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2976
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2978
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_62

    .line 2979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2980
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_ae

    :goto_48
    add-int/lit8 v0, v1, 0x20

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41e80000    # 29.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2981
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2984
    :cond_62
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_81

    .line 2985
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2986
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2987
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 2988
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2989
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2991
    :cond_81
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->level:I

    if-eqz v5, :cond_b0

    :goto_9c
    sub-int/2addr v0, v4

    int-to-float v4, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_a8
    move v0, v4

    .line 2974
    goto/16 :goto_1f

    :cond_ab
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_2d

    :cond_ae
    move v1, v4

    .line 2980
    goto :goto_48

    .line 2991
    :cond_b0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_9c
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2928
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 2929
    .local v10, "width":I
    const/4 v7, 0x0

    .line 2931
    .local v7, "height":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_109

    .line 2932
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lastCreatedWidth:I

    if-eq v0, v10, :cond_f6

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_6f

    .line 2934
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v9

    .line 2935
    .local v9, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v9, :cond_fd

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_6f

    .line 2936
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2937
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 2938
    .local v8, "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V

    .line 2941
    .end local v8    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v9    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_6f
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_100

    const/16 v0, 0x36

    :goto_7c
    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v10, v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v1, v2, v3, v0, v4}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Landroid/text/StaticLayout;

    .line 2942
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    if-eqz v0, :cond_105

    .line 2943
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_103

    const/16 v0, 0x36

    :goto_ae
    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v10, v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v1, v2, v3, v0, v4}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Landroid/text/StaticLayout;

    .line 2947
    :goto_bf
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 2948
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_f4

    .line 2949
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v10, v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    .line 2950
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_f4

    .line 2951
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 2954
    :cond_f4
    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    .line 2961
    :cond_f6
    :goto_f6
    invoke-virtual {p0, v10, v7}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setMeasuredDimension(II)V

    .line 2962
    return-void

    .line 2933
    :cond_fa
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 2935
    .restart local v9    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_fd
    const/4 v0, 0x0

    goto/16 :goto_29

    .line 2941
    .end local v9    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_100
    const/4 v0, 0x0

    goto/16 :goto_7c

    .line 2943
    :cond_103
    const/4 v0, 0x0

    goto :goto_ae

    .line 2945
    :cond_105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Landroid/text/StaticLayout;

    goto :goto_bf

    .line 2958
    :cond_109
    const/4 v7, 0x1

    goto :goto_f6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2923
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V
    .registers 3
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .prologue
    .line 2916
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 2917
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lastCreatedWidth:I

    .line 2918
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->requestLayout()V

    .line 2919
    return-void
.end method
