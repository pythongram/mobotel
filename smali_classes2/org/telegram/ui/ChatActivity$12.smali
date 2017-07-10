.class Lorg/telegram/ui/ChatActivity$12;
.super Landroid/widget/FrameLayout;
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
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1570
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1590
    sub-int v0, p5, p3

    .line 1593
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_b3

    .line 1594
    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$12;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_b0

    const/high16 v2, 0x40000000    # 2.0f

    :goto_37
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v1, v3, v2

    .line 1598
    .local v1, "textTop":I
    :goto_3d
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 1600
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_af

    .line 1601
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$12;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_8b

    :cond_8b
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 1602
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 1604
    :cond_af
    return-void

    .line 1594
    .end local v1    # "textTop":I
    :cond_b0
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_37

    .line 1596
    :cond_b3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "textTop":I
    goto/16 :goto_3d
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x2

    const/high16 v5, -0x80000000

    .line 1574
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1575
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1577
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ChatActivity$12;->setMeasuredDimension(II)V

    .line 1579
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$12;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_85

    const/16 v2, 0x12

    :goto_28
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1580
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 1582
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_84

    .line 1583
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_88

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$12;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_88

    const/16 v2, 0xe

    :goto_6a
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1584
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeSubTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 1586
    :cond_84
    return-void

    .line 1579
    :cond_85
    const/16 v2, 0x14

    goto :goto_28

    .line 1583
    :cond_88
    const/16 v2, 0x10

    goto :goto_6a
.end method
