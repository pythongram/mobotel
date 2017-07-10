.class Lorg/telegram/ui/ChatActivity$14;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputFieldHeight:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1666
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1668
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1672
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1673
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-ne p2, v1, :cond_33

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1674
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v1

    :goto_30
    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 1676
    :cond_33
    return v0

    .line 1674
    :cond_34
    const/4 v1, 0x0

    goto :goto_30
.end method

.method protected isActionBarVisible()Z
    .registers 2

    .prologue
    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1776
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getChildCount()I

    move-result v4

    .line 1778
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getKeyboardHeight()I

    move-result v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-gt v12, v13, :cond_31

    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v12, :cond_31

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v9

    .line 1779
    .local v9, "paddingBottom":I
    :goto_1c
    invoke-virtual {p0, v9}, Lorg/telegram/ui/ChatActivity$14;->setBottomClip(I)V

    .line 1781
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_20
    if-ge v7, v4, :cond_178

    .line 1782
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ChatActivity$14;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1783
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_33

    .line 1781
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1778
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    :cond_31
    const/4 v9, 0x0

    goto :goto_1c

    .line 1786
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v9    # "paddingBottom":I
    :cond_33
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1788
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1789
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1794
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1795
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_48

    .line 1796
    const/16 v5, 0x33

    .line 1799
    :cond_48
    and-int/lit8 v0, v5, 0x7

    .line 1800
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 1802
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_182

    .line 1811
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1814
    .local v2, "childLeft":I
    :goto_53
    sparse-switch v10, :sswitch_data_18c

    .line 1828
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1831
    .local v3, "childTop":I
    :cond_58
    :goto_58
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_cd

    .line 1832
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v3, v12

    .line 1852
    :cond_70
    :goto_70
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2e

    .line 1804
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_78
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 1805
    .restart local v2    # "childLeft":I
    goto :goto_53

    .line 1807
    .end local v2    # "childLeft":I
    :sswitch_85
    sub-int v12, p4, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 1808
    .restart local v2    # "childLeft":I
    goto :goto_53

    .line 1816
    :sswitch_8c
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v13

    add-int v3, v12, v13

    .line 1817
    .restart local v3    # "childTop":I
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-eq v1, v12, :cond_58

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v12

    if-nez v12, :cond_58

    .line 1818
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_58

    .line 1822
    .end local v3    # "childTop":I
    :sswitch_b4
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 1823
    .restart local v3    # "childTop":I
    goto :goto_58

    .line 1825
    .end local v3    # "childTop":I
    :sswitch_c3
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 1826
    .restart local v3    # "childTop":I
    goto :goto_58

    .line 1833
    :cond_cd
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_df

    .line 1834
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v3, v12

    goto :goto_70

    .line 1835
    :cond_df
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_10a

    .line 1836
    iget v12, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    div-int/lit8 v13, v12, 0x2

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v12

    if-nez v12, :cond_108

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    :goto_103
    sub-int v12, v13, v12

    sub-int/2addr v3, v12

    goto/16 :goto_70

    :cond_108
    const/4 v12, 0x0

    goto :goto_103

    .line 1837
    :cond_10a
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_139

    .line 1838
    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v12, :cond_12f

    .line 1839
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int v3, v12, v13

    goto/16 :goto_70

    .line 1841
    :cond_12f
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBottom()I

    move-result v3

    goto/16 :goto_70

    .line 1843
    :cond_139
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->gifHintTextView:Landroid/widget/TextView;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v12

    if-ne v1, v12, :cond_146

    .line 1844
    iget v12, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int/2addr v3, v12

    goto/16 :goto_70

    .line 1845
    :cond_146
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    if-eq v1, v12, :cond_156

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_169

    .line 1846
    :cond_156
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 1847
    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v3, v12

    goto/16 :goto_70

    .line 1849
    :cond_169
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-ne v1, v12, :cond_70

    .line 1850
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v12

    sub-int/2addr v3, v12

    goto/16 :goto_70

    .line 1855
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_178
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateMessagesVisisblePart()V
    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)V

    .line 1856
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->notifyHeightChanged()V

    .line 1857
    return-void

    .line 1802
    nop

    :sswitch_data_182
    .sparse-switch
        0x1 -> :sswitch_78
        0x5 -> :sswitch_85
    .end sparse-switch

    .line 1814
    :sswitch_data_18c
    .sparse-switch
        0x10 -> :sswitch_b4
        0x30 -> :sswitch_8c
        0x50 -> :sswitch_c3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1686
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1687
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1689
    .local v13, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/ChatActivity$14;->setMeasuredDimension(II)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v2

    sub-int/2addr v13, v2

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v8

    .line 1694
    .local v8, "actionBarHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42

    .line 1695
    sub-int/2addr v13, v8

    .line 1698
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getKeyboardHeight()I

    move-result v15

    .line 1700
    .local v15, "keyboardSize":I
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v15, v2, :cond_5d

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_5d

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    sub-int/2addr v13, v2

    .line 1704
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getChildCount()I

    move-result v9

    .line 1706
    .local v9, "childCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    .line 1709
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_81
    if-ge v14, v9, :cond_2dd

    .line 1710
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ChatActivity$14;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1711
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_a5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v3, v2, :cond_a5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v3, v2, :cond_a8

    .line 1709
    :cond_a5
    :goto_a5
    add-int/lit8 v14, v14, 0x1

    goto :goto_81

    .line 1714
    :cond_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eq v3, v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_f6

    .line 1715
    :cond_bc
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1716
    .local v11, "contentWidthSpec":I
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v5, v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v2

    if-eqz v2, :cond_f4

    const/16 v2, 0x30

    :goto_de
    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1717
    .local v10, "contentHeightSpec":I
    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    goto :goto_a5

    .line 1716
    .end local v10    # "contentHeightSpec":I
    :cond_f4
    const/4 v2, 0x0

    goto :goto_de

    .line 1718
    .end local v11    # "contentWidthSpec":I
    :cond_f6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_112

    .line 1719
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1720
    .restart local v11    # "contentWidthSpec":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1721
    .restart local v10    # "contentHeightSpec":I
    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    goto :goto_a5

    .line 1722
    .end local v10    # "contentHeightSpec":I
    .end local v11    # "contentWidthSpec":I
    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 1723
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_176

    .line 1724
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 1725
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v5, v13, v5

    add-int/2addr v5, v8

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a5

    .line 1727
    :cond_154
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v4, v13, v4

    add-int/2addr v4, v8

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a5

    .line 1730
    :cond_176
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a5

    .line 1732
    :cond_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_2d0

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 1735
    .local v16, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$6702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_25c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getRowsCount(I)I

    move-result v18

    .line 1739
    .local v18, "size":I
    mul-int/lit8 v17, v18, 0x66

    .line 1740
    .local v17, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v2

    if-eqz v2, :cond_1f9

    .line 1742
    add-int/lit8 v17, v17, 0x22

    .line 1745
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    sub-int v4, v13, v2

    if-eqz v17, :cond_25a

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_20d
    add-int v12, v4, v2

    .line 1746
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    const v7, 0x42f4cccc

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v12, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1763
    :goto_232
    move-object/from16 v0, v16

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1764
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$6702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1767
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a5

    .line 1745
    .end local v12    # "height":I
    :cond_25a
    const/4 v2, 0x0

    goto :goto_20d

    .line 1748
    .end local v17    # "maxHeight":I
    .end local v18    # "size":I
    :cond_25c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v18

    .line 1749
    .restart local v18    # "size":I
    const/16 v17, 0x0

    .line 1750
    .restart local v17    # "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v2

    if-eqz v2, :cond_28a

    .line 1752
    add-int/lit8 v17, v17, 0x24

    .line 1753
    add-int/lit8 v18, v18, -0x1

    .line 1755
    :cond_28a
    mul-int/lit8 v2, v18, 0x44

    add-int v17, v17, v2

    .line 1759
    :goto_28e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    sub-int v4, v13, v2

    if-eqz v17, :cond_2ce

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_2a2
    add-int v12, v4, v2

    .line 1760
    .restart local v12    # "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    const v7, 0x42f4cccc

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v12, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_232

    .line 1757
    .end local v12    # "height":I
    :cond_2c9
    mul-int/lit8 v2, v18, 0x24

    add-int v17, v17, v2

    goto :goto_28e

    .line 1759
    :cond_2ce
    const/4 v2, 0x0

    goto :goto_2a2

    .line 1769
    .end local v16    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "maxHeight":I
    .end local v18    # "size":I
    :cond_2d0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_a5

    .line 1772
    .end local v3    # "child":Landroid/view/View;
    :cond_2dd
    return-void
.end method
