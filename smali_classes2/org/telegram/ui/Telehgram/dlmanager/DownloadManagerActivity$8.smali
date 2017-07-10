.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "DownloadManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputFieldHeight:I

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 789
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 791
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->inputFieldHeight:I

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 795
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 796
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-ne p2, v1, :cond_1f

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 799
    :cond_1f
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 838
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getChildCount()I

    move-result v4

    .line 840
    .local v4, "count":I
    const/4 v9, 0x0

    .line 841
    .local v9, "paddingBottom":I
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->setBottomClip(I)V

    .line 843
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v4, :cond_d4

    .line 844
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 845
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1a

    .line 843
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 848
    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 850
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 851
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 856
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 857
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_2f

    .line 858
    const/16 v5, 0x33

    .line 861
    :cond_2f
    and-int/lit8 v0, v5, 0x7

    .line 862
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 864
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_de

    .line 873
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 876
    .local v2, "childLeft":I
    :goto_3a
    sparse-switch v10, :sswitch_data_e8

    .line 890
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 893
    .local v3, "childTop":I
    :cond_3f
    :goto_3f
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_aa

    .line 894
    iget v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->inputFieldHeight:I

    div-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v13}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    sub-int/2addr v3, v12

    .line 902
    :cond_59
    :goto_59
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_17

    .line 866
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_61
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 867
    .restart local v2    # "childLeft":I
    goto :goto_3a

    .line 869
    .end local v2    # "childLeft":I
    :sswitch_6e
    sub-int v12, p4, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 870
    .restart local v2    # "childLeft":I
    goto :goto_3a

    .line 878
    :sswitch_75
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getPaddingTop()I

    move-result v13

    add-int v3, v12, v13

    .line 879
    .restart local v3    # "childTop":I
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-eq v1, v12, :cond_3f

    .line 880
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_3f

    .line 884
    .end local v3    # "childTop":I
    :sswitch_91
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 885
    .restart local v3    # "childTop":I
    goto :goto_3f

    .line 887
    .end local v3    # "childTop":I
    :sswitch_a0
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 888
    .restart local v3    # "childTop":I
    goto :goto_3f

    .line 895
    :cond_aa
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->gifHintTextView:Landroid/widget/TextView;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/TextView;

    move-result-object v12

    if-ne v1, v12, :cond_b6

    .line 896
    iget v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->inputFieldHeight:I

    sub-int/2addr v3, v12

    goto :goto_59

    .line 897
    :cond_b6
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    if-eq v1, v12, :cond_59

    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-eq v1, v12, :cond_59

    .line 899
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-ne v1, v12, :cond_59

    .line 900
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getPaddingTop()I

    move-result v12

    sub-int/2addr v3, v12

    goto :goto_59

    .line 905
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_d4
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->updateMessagesVisisblePart()V
    invoke-static {v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->notifyHeightChanged()V

    .line 907
    return-void

    .line 864
    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_61
        0x5 -> :sswitch_6e
    .end sparse-switch

    .line 876
    :sswitch_data_e8
    .sparse-switch
        0x10 -> :sswitch_91
        0x30 -> :sswitch_75
        0x50 -> :sswitch_a0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 804
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 805
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 807
    .local v10, "heightSize":I
    invoke-virtual {p0, v13, v10}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->setMeasuredDimension(II)V

    .line 808
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getPaddingTop()I

    move-result v0

    sub-int/2addr v10, v0

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    .line 812
    .local v6, "actionBarHeight":I
    sub-int/2addr v10, v6

    .line 814
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getKeyboardHeight()I

    move-result v12

    .line 815
    .local v12, "keyboardSize":I
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getChildCount()I

    move-result v7

    .line 817
    .local v7, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_33
    if-ge v11, v7, :cond_a5

    .line 818
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 819
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4b

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne v1, v0, :cond_4e

    .line 817
    :cond_4b
    :goto_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 822
    :cond_4e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq v1, v0, :cond_5e

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_83

    .line 823
    :cond_5e
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 824
    .local v9, "contentWidthSpec":I
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->inputFieldHeight:I

    sub-int v2, v10, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 825
    .local v8, "contentHeightSpec":I
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4b

    .line 826
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    :cond_83
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_9b

    .line 827
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 828
    .restart local v9    # "contentWidthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 829
    .restart local v8    # "contentHeightSpec":I
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4b

    .line 831
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    :cond_9b
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$8;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_4b

    .line 834
    .end local v1    # "child":Landroid/view/View;
    :cond_a5
    return-void
.end method
