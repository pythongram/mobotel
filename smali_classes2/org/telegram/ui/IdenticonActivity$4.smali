.class Lorg/telegram/ui/IdenticonActivity$4;
.super Landroid/widget/FrameLayout;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/IdenticonActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 151
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 152
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 153
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 154
    .local v0, "x":I
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->codeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->linearLayout1:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 155
    .local v1, "y":I
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    # getter for: Lorg/telegram/ui/IdenticonActivity;->emojiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/IdenticonActivity;->access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 157
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_79
    return-void
.end method
