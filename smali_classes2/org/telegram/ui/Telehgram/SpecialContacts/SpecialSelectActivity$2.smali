.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;
.super Landroid/view/ViewGroup;
.source "SpecialSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 416
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eq p2, v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-ne p2, v1, :cond_27

    .line 417
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 419
    :cond_27
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/widget/ScrollView;->layout(IIII)V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->layout(IIII)V

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->layout(IIII)V

    .line 411
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 392
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 393
    .local v0, "height":I
    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->setMeasuredDimension(II)V

    .line 395
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_15

    if-le v0, v2, :cond_69

    .line 396
    :cond_15
    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 401
    .local v1, "maxSize":I
    :goto_1b
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ScrollView;->measure(II)V

    .line 402
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->measure(II)V

    .line 403
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->measure(II)V

    .line 404
    return-void

    .line 398
    .end local v1    # "maxSize":I
    :cond_69
    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .restart local v1    # "maxSize":I
    goto :goto_1b
.end method
