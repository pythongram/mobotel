.class public Lorg/telegram/ui/Cells/SharedLinkCell;
.super Landroid/widget/FrameLayout;
.source "SharedLinkCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;
    }
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

.field private description2Y:I

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionLayout2:Landroid/text/StaticLayout;

.field private descriptionTextPaint:Landroid/text/TextPaint;

.field private descriptionY:I

.field private drawLinkImageView:Z

.field private letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

.field private linkImageView:Lorg/telegram/messenger/ImageReceiver;

.field private linkLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private linkPreviewPressed:Z

.field private linkY:I

.field links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lorg/telegram/messenger/MessageObject;

.field private needDivider:Z

.field private pressedLink:I

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleTextPaint:Landroid/text/TextPaint;

.field private titleY:I

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v1, 0x41d80000    # 27.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v4, 0x42300000    # 44.0f

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    .line 70
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    .line 76
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    .line 87
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->setWillNotDraw(Z)V

    .line 98
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LetterDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 104
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c9

    const/4 v2, 0x5

    :goto_b5
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_cb

    move v3, v6

    :goto_bc
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_cd

    move v5, v4

    :goto_c1
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void

    .line 104
    :cond_c9
    const/4 v2, 0x3

    goto :goto_b5

    :cond_cb
    move v3, v4

    goto :goto_bc

    :cond_cd
    move v5, v6

    goto :goto_c1
.end method


# virtual methods
.method public getLink(I)Ljava/lang/String;
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 411
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 412
    :cond_a
    const/4 v0, 0x0

    .line 414
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 347
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_c

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 350
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 339
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_c

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 342
    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_21

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d3

    move v0, v1

    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 439
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4b

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 442
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_38
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    :cond_4b
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v0, :cond_75

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_dd

    move v0, v1

    :goto_62
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    :cond_75
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string v2, "windowBackgroundWhiteLinkText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 457
    const/4 v8, 0x0

    .line 458
    .local v8, "offset":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_8a
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_e5

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/StaticLayout;

    .line 460
    .local v7, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_d0

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e1

    move v0, v1

    :goto_a8
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 463
    iget v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    if-ne v0, v6, :cond_bf

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 466
    :cond_bf
    invoke-virtual {v7, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 458
    :cond_d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 434
    .end local v6    # "a":I
    .end local v7    # "layout":Landroid/text/StaticLayout;
    .end local v8    # "offset":I
    :cond_d3
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_e

    .line 442
    :cond_d8
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_38

    .line 450
    :cond_dd
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto :goto_62

    .line 462
    .restart local v6    # "a":I
    .restart local v7    # "layout":Landroid/text/StaticLayout;
    .restart local v8    # "offset":I
    :cond_e1
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto :goto_a8

    .line 473
    .end local v6    # "a":I
    .end local v7    # "layout":Landroid/text/StaticLayout;
    .end local v8    # "offset":I
    :cond_e5
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LetterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_f3

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 478
    :cond_f3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    if-eqz v0, :cond_11d

    .line 479
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_11e

    .line 480
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    :cond_11d
    :goto_11d
    return-void

    .line 482
    :cond_11e
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_11d
.end method

.method protected onMeasure(II)V
    .registers 45
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    .line 111
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 112
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    .line 113
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    .line 114
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 118
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v7, v4, v6

    .line 120
    .local v7, "maxWidth":I
    const/16 v36, 0x0

    .line 121
    .local v36, "title":Ljava/lang/String;
    const/16 v25, 0x0

    .line 122
    .local v25, "description":Ljava/lang/String;
    const/16 v26, 0x0

    .line 123
    .local v26, "description2":Ljava/lang/String;
    const/16 v39, 0x0

    .line 124
    .local v39, "webPageLink":Ljava/lang/String;
    const/16 v30, 0x0

    .line 126
    .local v30, "hasPhoto":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_ae

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v4, :cond_ae

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v38, v0

    .line 128
    .local v38, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_84

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_84

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 131
    :cond_84
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_105

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_105

    const/16 v30, 0x1

    .line 132
    :goto_94
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 133
    if-nez v36, :cond_a2

    .line 134
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 136
    :cond_a2
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 137
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 139
    .end local v38    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_2ef

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2ef

    .line 140
    const/16 v21, 0x0

    .local v21, "a":I
    :goto_c4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2ef

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 142
    .local v28, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v4, :cond_102

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v4, :cond_102

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_108

    .line 140
    :cond_102
    :goto_102
    add-int/lit8 v21, v21, 0x1

    goto :goto_c4

    .line 131
    .end local v21    # "a":I
    .end local v28    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v38    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_105
    const/16 v30, 0x0

    goto :goto_94

    .line 144
    .end local v38    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local v21    # "a":I
    .restart local v28    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_108
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_134

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v28

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v4, v6

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 147
    :cond_134
    if-nez v21, :cond_16b

    if-eqz v39, :cond_16b

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v4, :cond_150

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_16b

    .line 148
    :cond_150
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_259

    .line 149
    if-nez v25, :cond_16b

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 157
    :cond_16b
    :goto_16b
    const/16 v33, 0x0

    .line 158
    .local v33, "link":Ljava/lang/String;
    :try_start_16d
    move-object/from16 v0, v28

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v4, :cond_179

    move-object/from16 v0, v28

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v4, :cond_26d

    .line 159
    :cond_179
    move-object/from16 v0, v28

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v4, :cond_265

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 164
    :goto_198
    if-eqz v36, :cond_1a0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_21b

    .line 165
    :cond_1a0
    move-object/from16 v36, v33

    .line 166
    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 167
    .local v37, "uri":Landroid/net/Uri;
    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v36

    .line 168
    if-nez v36, :cond_1ae

    .line 169
    move-object/from16 v36, v33

    .line 172
    :cond_1ae
    if-eqz v36, :cond_1f9

    const/16 v4, 0x2e

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v32

    .local v32, "index":I
    if-ltz v32, :cond_1f9

    .line 173
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 174
    const/16 v4, 0x2e

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v32

    if-ltz v32, :cond_1d5

    .line 175
    add-int/lit8 v4, v32, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 177
    :cond_1d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 179
    .end local v32    # "index":I
    :cond_1f9
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v4, :cond_211

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_21b

    .line 180
    :cond_211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 192
    .end local v37    # "uri":Landroid/net/Uri;
    :cond_21b
    :goto_21b
    if-eqz v33, :cond_102

    .line 193
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e4

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "mailto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e4

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_251} :catch_253

    goto/16 :goto_102

    .line 199
    :catch_253
    move-exception v27

    .line 200
    .local v27, "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_102

    .line 153
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v33    # "link":Ljava/lang/String;
    :cond_259
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    goto/16 :goto_16b

    .line 162
    .restart local v33    # "link":Ljava/lang/String;
    :cond_265
    :try_start_265
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    move-object/from16 v33, v0

    goto/16 :goto_198

    .line 183
    :cond_26d
    move-object/from16 v0, v28

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v4, :cond_21b

    .line 184
    if-eqz v36, :cond_27b

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_21b

    .line 185
    :cond_27b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v13

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v28

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 187
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v4, :cond_2d8

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_21b

    .line 188
    :cond_2d8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_21b

    .line 196
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_2ed} :catch_253

    goto/16 :goto_102

    .line 204
    .end local v21    # "a":I
    .end local v28    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v33    # "link":Ljava/lang/String;
    :cond_2ef
    if-eqz v39, :cond_304

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_304

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_304
    if-eqz v36, :cond_34f

    .line 210
    :try_start_306
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v40, v0

    .line 211
    .local v40, "width":I
    const/16 v4, 0xa

    const/16 v6, 0x20

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v40

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 212
    .local v5, "titleFinal":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_346} :catch_470

    .line 216
    .end local v5    # "titleFinal":Ljava/lang/CharSequence;
    .end local v40    # "width":I
    :goto_346
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 219
    :cond_34f
    if-eqz v25, :cond_38f

    .line 221
    :try_start_351
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v8, v25

    move v10, v7

    move v11, v7

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_38f

    .line 223
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_38f} :catch_476

    .line 230
    :cond_38f
    :goto_38f
    if-eqz v26, :cond_3ca

    .line 232
    :try_start_391
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v8, v26

    move v10, v7

    move v11, v7

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v31

    .line 234
    .local v31, "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_3ca

    .line 235
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I
    :try_end_3ca
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3ca} :catch_47c

    .line 242
    .end local v31    # "height":I
    :cond_3ca
    :goto_3ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_487

    .line 243
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_3d6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_487

    .line 245
    :try_start_3e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 246
    .restart local v33    # "link":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v40, v0

    .line 247
    .restart local v40    # "width":I
    const/16 v4, 0xa

    const/16 v6, 0x20

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v40

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 248
    .local v9, "linkFinal":Ljava/lang/CharSequence;
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v11, v7

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 249
    .local v8, "layout":Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v4, :cond_465

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_465

    .line 251
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    .line 253
    :cond_465
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46c
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_46c} :catch_482

    .line 243
    .end local v8    # "layout":Landroid/text/StaticLayout;
    .end local v9    # "linkFinal":Ljava/lang/CharSequence;
    .end local v33    # "link":Ljava/lang/String;
    .end local v40    # "width":I
    :goto_46c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3d6

    .line 213
    .end local v21    # "a":I
    :catch_470
    move-exception v27

    .line 214
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_346

    .line 225
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_476
    move-exception v27

    .line 226
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_38f

    .line 237
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_47c
    move-exception v27

    .line 238
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3ca

    .line 254
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v21    # "a":I
    :catch_482
    move-exception v27

    .line 255
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_46c

    .line 260
    .end local v21    # "a":I
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_487
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    .line 261
    .local v34, "maxPhotoWidth":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_61d

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int v41, v4, v34

    .line 262
    .local v41, "x":I
    :goto_49e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v10, v41, v34

    const/high16 v11, 0x42780000    # 62.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move/from16 v0, v41

    invoke-virtual {v4, v0, v6, v10, v11}, Lorg/telegram/ui/Components/LetterDrawable;->setBounds(IIII)V

    .line 264
    if-eqz v30, :cond_572

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move/from16 v0, v34

    invoke-static {v4, v0, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v23

    .line 266
    .local v23, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v6, 0x50

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v24

    .line 267
    .local v24, "currentPhotoObjectThumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4d8

    .line 268
    const/16 v24, 0x0

    .line 270
    :cond_4d8
    const/4 v4, -0x1

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 271
    if-eqz v24, :cond_4e4

    .line 272
    const/4 v4, -0x1

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 274
    :cond_4e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move/from16 v0, v41

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v4, v0, v6, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 275
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v29

    .line 276
    .local v29, "fileName":Ljava/lang/String;
    const/16 v35, 0x1

    .line 277
    .local v35, "photoExist":Z
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v22

    .line 278
    .local v22, "cacheFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_50c

    .line 279
    const/16 v35, 0x0

    .line 281
    :cond_50c
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d_%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-static {v4, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 282
    .local v12, "filter":Ljava/lang/String;
    if-nez v35, :cond_53e

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v4

    if-nez v4, :cond_53e

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_628

    .line 283
    :cond_53e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, v23

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v24, :cond_625

    move-object/from16 v0, v24

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_54c
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d_%d_b"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v4, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 291
    :goto_56d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    .line 294
    .end local v12    # "filter":Ljava/lang/String;
    .end local v22    # "cacheFile":Ljava/io/File;
    .end local v23    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v24    # "currentPhotoObjectThumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v29    # "fileName":Ljava/lang/String;
    .end local v35    # "photoExist":Z
    :cond_572
    const/16 v31, 0x0

    .line 295
    .restart local v31    # "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_598

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_598

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v31, v31, v4

    .line 298
    :cond_598
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_5bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_5bc

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v31, v31, v4

    .line 301
    :cond_5bc
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v4, :cond_5ee

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_5ee

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v31, v31, v4

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_5ee

    .line 304
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v31, v31, v4

    .line 307
    :cond_5ee
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_5f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_666

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    .line 309
    .restart local v8    # "layout":Landroid/text/StaticLayout;
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_61a

    .line 310
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v31, v31, v4

    .line 307
    :cond_61a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5f0

    .line 261
    .end local v8    # "layout":Landroid/text/StaticLayout;
    .end local v21    # "a":I
    .end local v31    # "height":I
    .end local v41    # "x":I
    :cond_61d
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v41

    goto/16 :goto_49e

    .line 283
    .restart local v12    # "filter":Ljava/lang/String;
    .restart local v22    # "cacheFile":Ljava/io/File;
    .restart local v23    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v24    # "currentPhotoObjectThumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v29    # "fileName":Ljava/lang/String;
    .restart local v35    # "photoExist":Z
    .restart local v41    # "x":I
    :cond_625
    const/4 v13, 0x0

    goto/16 :goto_54c

    .line 285
    :cond_628
    if-eqz v24, :cond_65a

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d_%d_b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v11

    invoke-static {v4, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_56d

    .line 288
    :cond_65a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56d

    .line 313
    .end local v12    # "filter":Ljava/lang/String;
    .end local v22    # "cacheFile":Ljava/io/File;
    .end local v23    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v24    # "currentPhotoObjectThumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v29    # "fileName":Ljava/lang/String;
    .end local v35    # "photoExist":Z
    .restart local v21    # "a":I
    .restart local v31    # "height":I
    :cond_666
    if-eqz v30, :cond_674

    .line 314
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 316
    :cond_674
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v6, v10}, Lorg/telegram/ui/Components/CheckBox;->measure(II)V

    .line 317
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int v10, v10, v31

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    if-eqz v4, :cond_6b7

    const/4 v4, 0x1

    :goto_6b0
    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setMeasuredDimension(II)V

    .line 318
    return-void

    .line 317
    :cond_6b7
    const/4 v4, 0x0

    goto :goto_6b0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    const/4 v7, 0x0

    .line 355
    .local v7, "result":Z
    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_120

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_120

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    if-eqz v11, :cond_120

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-interface {v11}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->canPerformActions()Z

    move-result v11

    if-eqz v11, :cond_120

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_2a

    iget-boolean v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-eqz v11, :cond_115

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_115

    .line 357
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 358
    .local v9, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 359
    .local v10, "y":I
    const/4 v5, 0x0

    .line 360
    .local v5, "offset":I
    const/4 v6, 0x0

    .line 361
    .local v6, "ok":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_a9

    .line 362
    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .line 363
    .local v3, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    if-lez v11, :cond_111

    .line 364
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    .line 365
    .local v2, "height":I
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_b8

    const/high16 v11, 0x41000000    # 8.0f

    :goto_5d
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 366
    .local v4, "linkPosX":I
    int-to-float v11, v9

    int-to-float v12, v4

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_110

    int-to-float v11, v9

    int-to-float v12, v4

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v13

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_110

    iget v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v11, v5

    if-lt v10, v11, :cond_110

    iget v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v11, v5

    add-int/2addr v11, v2

    if-gt v10, v11, :cond_110

    .line 367
    const/4 v6, 0x1

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_c1

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 370
    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    .line 371
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    .line 373
    :try_start_93
    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v3, v12, v13}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    .line 374
    const/4 v11, 0x0

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v3, v11, v12, v13}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a8} :catch_bc

    .line 378
    :goto_a8
    const/4 v7, 0x1

    .line 398
    .end local v2    # "height":I
    .end local v3    # "layout":Landroid/text/StaticLayout;
    .end local v4    # "linkPosX":I
    :cond_a9
    :goto_a9
    if-nez v6, :cond_ae

    .line 399
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 407
    .end local v0    # "a":I
    .end local v5    # "offset":I
    .end local v6    # "ok":Z
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_ae
    :goto_ae
    if-nez v7, :cond_b6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_124

    :cond_b6
    const/4 v11, 0x1

    :goto_b7
    return v11

    .line 365
    .restart local v0    # "a":I
    .restart local v2    # "height":I
    .restart local v3    # "layout":Landroid/text/StaticLayout;
    .restart local v5    # "offset":I
    .restart local v6    # "ok":Z
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_b8
    sget v11, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v11

    goto :goto_5d

    .line 375
    .restart local v4    # "linkPosX":I
    :catch_bc
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c1
    iget-boolean v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-eqz v11, :cond_a9

    .line 381
    :try_start_c5
    iget v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    if-nez v11, :cond_f7

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v11, :cond_f7

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 382
    .local v8, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :goto_d9
    if-eqz v8, :cond_f9

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_f9

    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v11, :cond_f9

    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_f9

    .line 383
    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-interface {v11, v8}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f2} :catch_10b

    .line 390
    .end local v8    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :goto_f2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 391
    const/4 v7, 0x1

    goto :goto_a9

    .line 381
    :cond_f7
    const/4 v8, 0x0

    goto :goto_d9

    .line 385
    .restart local v8    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_f9
    :try_start_f9
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v11, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    iget v13, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10a} :catch_10b

    goto :goto_f2

    .line 387
    .end local v8    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :catch_10b
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f2

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_110
    add-int/2addr v5, v2

    .line 361
    .end local v2    # "height":I
    .end local v4    # "linkPosX":I
    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_37

    .line 401
    .end local v0    # "a":I
    .end local v3    # "layout":Landroid/text/StaticLayout;
    .end local v5    # "offset":I
    .end local v6    # "ok":Z
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_ae

    .line 402
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    goto :goto_ae

    .line 405
    :cond_120
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    goto :goto_ae

    .line 407
    :cond_124
    const/4 v11, 0x0

    goto :goto_b7
.end method

.method protected resetPressedLink()V
    .registers 2

    .prologue
    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    .line 420
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->invalidate()V

    .line 421
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 5
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 427
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 428
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V
    .registers 2
    .param p1, "sharedLinkCellDelegate"    # Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .prologue
    .line 329
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .line 330
    return-void
.end method

.method public setLink(Lorg/telegram/messenger/MessageObject;Z)V
    .registers 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "divider"    # Z

    .prologue
    .line 321
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 323
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->requestLayout()V

    .line 326
    return-void
.end method
