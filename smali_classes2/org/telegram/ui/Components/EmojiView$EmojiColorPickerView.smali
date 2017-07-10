.class Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
.super Landroid/view/View;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiColorPickerView"
.end annotation


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private arrowX:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentEmoji:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private selection:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 534
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 507
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    .line 508
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    .line 536
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 537
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 538
    return-void
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 542
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getMeasuredWidth()I

    move-result v10

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_df

    const/high16 v6, 0x42700000    # 60.0f

    :goto_10
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 543
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v6, v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_e3

    const/high16 v6, 0x425e0000    # 55.5f

    :goto_30
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_e7

    const/high16 v6, 0x425e0000    # 55.5f

    :goto_45
    const/high16 v11, 0x41000000    # 8.0f

    add-float/2addr v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 548
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v6, :cond_fa

    .line 550
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_59
    const/4 v6, 0x6

    if-ge v0, v6, :cond_fa

    .line 551
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    mul-int/2addr v6, v0

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int v4, v6, v7

    .line 552
    .local v4, "x":I
    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 553
    .local v5, "y":I
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v6, v0, :cond_b4

    .line 554
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v7, v4

    const/high16 v8, 0x40600000    # 3.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    float-to-int v8, v8

    sub-int v8, v5, v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v10}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v10

    add-int/2addr v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 555
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 557
    :cond_b4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 558
    .local v1, "code":Ljava/lang/String;
    if-eqz v0, :cond_c1

    .line 560
    packed-switch v0, :pswitch_data_fc

    .line 577
    const-string v2, ""

    .line 579
    .local v2, "color":Ljava/lang/String;
    :goto_bd
    # invokes: Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$1800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .end local v2    # "color":Ljava/lang/String;
    :cond_c1
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 582
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_db

    .line 583
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 584
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 550
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_59

    .line 542
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_df
    const/high16 v6, 0x42500000    # 52.0f

    goto/16 :goto_10

    .line 545
    :cond_e3
    const/high16 v6, 0x423e0000    # 47.5f

    goto/16 :goto_30

    :cond_e7
    const/high16 v6, 0x423e0000    # 47.5f

    goto/16 :goto_45

    .line 562
    .restart local v0    # "a":I
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :pswitch_eb
    const-string v2, "\ud83c\udffb"

    .line 563
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_bd

    .line 565
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_ee
    const-string v2, "\ud83c\udffc"

    .line 566
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_bd

    .line 568
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_f1
    const-string v2, "\ud83c\udffd"

    .line 569
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_bd

    .line 571
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_f4
    const-string v2, "\ud83c\udffe"

    .line 572
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_bd

    .line 574
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_f7
    const-string v2, "\ud83c\udfff"

    .line 575
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_bd

    .line 588
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_fa
    return-void

    .line 560
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_ee
        :pswitch_f1
        :pswitch_f4
        :pswitch_f7
    .end packed-switch
.end method

.method public setEmoji(Ljava/lang/String;I)V
    .registers 5
    .param p1, "emoji"    # Ljava/lang/String;
    .param p2, "arrowPosition"    # I

    .prologue
    .line 511
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 512
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    .line 515
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 522
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v0, p1, :cond_5

    .line 527
    :goto_4
    return-void

    .line 525
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    goto :goto_4
.end method
