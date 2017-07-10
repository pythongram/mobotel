.class Lorg/telegram/ui/ChatActivity$29;
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
    .line 2533
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 2551
    :goto_c
    return-void

    .line 2541
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-nez v0, :cond_69

    .line 2542
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v7, v0, v1

    .line 2547
    .local v7, "top":I
    :goto_3f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int v6, v7, v0

    .line 2548
    .local v6, "bottom":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$29;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2549
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2550
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$29;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$29;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 2544
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_69
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v7, v0, v1

    .restart local v7    # "top":I
    goto :goto_3f
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 2555
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2559
    :goto_8
    return-void

    .line 2558
    :cond_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_8
.end method
