.class Lorg/telegram/ui/ChannelIntroActivity$2;
.super Landroid/view/ViewGroup;
.source "ChannelIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelIntroActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelIntroActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const v8, 0x3d4ccccd

    const/4 v7, 0x0

    .line 79
    sub-int v1, p4, p2

    .line 80
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 82
    .local v0, "height":I
    if-le p4, p5, :cond_a7

    .line 83
    int-to-float v4, v0

    mul-float/2addr v4, v8

    float-to-int v3, v4

    .line 84
    .local v3, "y":I
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 85
    int-to-float v4, v1

    const v5, 0x3ecccccd

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 86
    .local v2, "x":I
    int-to-float v4, v0

    const v5, 0x3e0f5c29

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 87
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 88
    int-to-float v4, v0

    const v5, 0x3f1c28f6

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 89
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 90
    int-to-float v4, v1

    const v5, 0x3ee66666

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 91
    int-to-float v4, v0

    const v5, 0x3e9eb852

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 92
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 104
    :goto_a6
    return-void

    .line 94
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_a7
    int-to-float v4, v0

    mul-float/2addr v4, v8

    float-to-int v3, v4

    .line 95
    .restart local v3    # "y":I
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 96
    int-to-float v4, v0

    const v5, 0x3f170a3d

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 97
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 98
    int-to-float v4, v0

    const v5, 0x3f2e147b

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 99
    int-to-float v4, v1

    mul-float/2addr v4, v8

    float-to-int v2, v4

    .line 100
    .restart local v2    # "x":I
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 101
    int-to-float v4, v0

    const v5, 0x3f5c28f6

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 102
    iget-object v4, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v6}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_a6
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x41c00000    # 24.0f

    const v8, 0x3f19999a

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 60
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    .local v0, "height":I
    if-le v1, v0, :cond_75

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v1

    const v4, 0x3ee66666

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-float v4, v0

    const v5, 0x3f47ae14

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 64
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v1

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 65
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 66
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v1

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 74
    :goto_71
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ChannelIntroActivity$2;->setMeasuredDimension(II)V

    .line 75
    return-void

    .line 68
    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-float v4, v0

    const v5, 0x3ee147ae

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v1

    const v4, 0x3f666666

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 71
    iget-object v2, p0, Lorg/telegram/ui/ChannelIntroActivity$2;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    # getter for: Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelIntroActivity;->access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    goto :goto_71
.end method
