.class Lorg/telegram/ui/Components/StickersAlert$10;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 361
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v3

    # getter for: Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$2700(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 366
    .local v17, "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v17, :cond_58

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 368
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 369
    .local v5, "inputStickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    .line 370
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    .line 371
    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2800(Lorg/telegram/ui/Components/StickersAlert;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    .line 372
    .local v2, "alert":Lorg/telegram/ui/Components/StickersAlert;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    .line 405
    .end local v2    # "alert":Lorg/telegram/ui/Components/StickersAlert;
    .end local v5    # "inputStickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .end local v17    # "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_58
    :goto_58
    return-void

    .line 375
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-eqz v3, :cond_58

    if-ltz p2, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_58

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2902(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;

    .line 380
    const/16 v18, 0x0

    .line 381
    .local v18, "set":Z
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_ed

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 383
    .local v15, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v15, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_1aa

    .line 384
    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v3, :cond_ed

    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ed

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const/16 v18, 0x1

    .line 391
    .end local v15    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_ed
    if-nez v18, :cond_123

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_123
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v10, 0x0

    const-string v11, "webp"

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    .local v16, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$1300(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$3200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 400
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 401
    .local v14, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert$10;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$3200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1ae

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 402
    const-wide/16 v6, 0xc8

    invoke-virtual {v14, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 403
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_58

    .line 381
    .end local v14    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v16    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1aa
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_93

    .line 401
    :array_1ae
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
