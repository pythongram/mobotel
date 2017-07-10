.class Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 641
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;)V

    .line 638
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 644
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 759
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eq p2, v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    if-ne p2, v3, :cond_3b

    .line 760
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_bc

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v3

    if-nez v3, :cond_bc

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3a

    :cond_34
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    if-nez v3, :cond_bc

    .line 772
    :cond_3a
    :goto_3a
    return v1

    .line 763
    :cond_3b
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v3

    if-eq p2, v3, :cond_77

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v3

    if-eq p2, v3, :cond_77

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v3

    if-eq p2, v3, :cond_77

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    if-eq p2, v3, :cond_77

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eq p2, v3, :cond_77

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_bc

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p2, v3, :cond_bc

    .line 764
    :cond_77
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v3, v4, :cond_b5

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_b5

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    .line 765
    .local v0, "paddingBottom":I
    :goto_91
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_af

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v3, :cond_a7

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_af

    :cond_a7
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    if-gtz v3, :cond_af

    if-eqz v0, :cond_b7

    .line 766
    :cond_af
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v2, v1}, Lorg/telegram/ui/PhotoViewer;->access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_3a

    .end local v0    # "paddingBottom":I
    :cond_b5
    move v0, v1

    .line 764
    goto :goto_91

    .line 769
    .restart local v0    # "paddingBottom":I
    :cond_b7
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v3, v2}, Lorg/telegram/ui/PhotoViewer;->access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 772
    .end local v0    # "paddingBottom":I
    :cond_bc
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    if-eq p2, v3, :cond_3a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v1, v2

    goto/16 :goto_3a
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eqz v0, :cond_1f

    .line 753
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 755
    :cond_1f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildCount()I

    move-result v4

    .line 684
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-gt v12, v13, :cond_30

    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v12, :cond_30

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v9

    .line 686
    .local v9, "paddingBottom":I
    :goto_1e
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v4, :cond_d6

    .line 687
    invoke-virtual {p0, v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 688
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_32

    .line 686
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 684
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    :cond_30
    const/4 v9, 0x0

    goto :goto_1e

    .line 691
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v9    # "paddingBottom":I
    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 693
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 694
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 699
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 700
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_47

    .line 701
    const/16 v5, 0x33

    .line 704
    :cond_47
    and-int/lit8 v0, v5, 0x7

    .line 705
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 707
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_da

    .line 716
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 719
    .local v2, "childLeft":I
    :goto_52
    sparse-switch v10, :sswitch_data_e4

    .line 730
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 733
    .local v3, "childTop":I
    :goto_57
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    if-ne v1, v12, :cond_a3

    .line 734
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v3, v12

    .line 742
    :cond_6a
    :goto_6a
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2d

    .line 709
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_72
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 710
    .restart local v2    # "childLeft":I
    goto :goto_52

    .line 712
    .end local v2    # "childLeft":I
    :sswitch_7f
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 713
    .restart local v2    # "childLeft":I
    goto :goto_52

    .line 721
    :sswitch_87
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 722
    .restart local v3    # "childTop":I
    goto :goto_57

    .line 724
    .end local v3    # "childTop":I
    :sswitch_8a
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 725
    .restart local v3    # "childTop":I
    goto :goto_57

    .line 727
    .end local v3    # "childTop":I
    :sswitch_99
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 728
    .restart local v3    # "childTop":I
    goto :goto_57

    .line 735
    :cond_a3
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 736
    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v12, :cond_cb

    .line 737
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int v3, v12, v13

    goto :goto_6a

    .line 739
    :cond_cb
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getBottom()I

    move-result v3

    goto :goto_6a

    .line 745
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_d6
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->notifyHeightChanged()V

    .line 746
    return-void

    .line 707
    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_72
        0x5 -> :sswitch_7f
    .end sparse-switch

    .line 719
    :sswitch_data_e4
    .sparse-switch
        0x10 -> :sswitch_8a
        0x30 -> :sswitch_87
        0x50 -> :sswitch_99
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 648
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 649
    .local v17, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 651
    .local v14, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setMeasuredDimension(II)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v16

    .line 656
    .local v16, "inputFieldHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildCount()I

    move-result v13

    .line 657
    .local v13, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_33
    if-ge v15, v13, :cond_f0

    .line 658
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 659
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    if-ne v3, v2, :cond_50

    .line 657
    :cond_4d
    :goto_4d
    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    .line 662
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_79

    .line 663
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_77

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_66
    add-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 664
    .local v6, "heightSpec":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_4d

    .line 663
    .end local v6    # "heightSpec":I
    :cond_77
    const/4 v2, 0x0

    goto :goto_66

    .line 665
    :cond_79
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 666
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c9

    .line 667
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 668
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v5, v14, v16

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_4d

    .line 670
    :cond_b2
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v4, v14, v16

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_4d

    .line 673
    :cond_c9
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4d

    .line 676
    :cond_e2
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_4d

    .line 679
    .end local v3    # "child":Landroid/view/View;
    :cond_f0
    return-void
.end method
