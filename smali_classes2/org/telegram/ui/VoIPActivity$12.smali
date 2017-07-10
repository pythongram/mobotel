.class Lorg/telegram/ui/VoIPActivity$12;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 632
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 635
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-eqz v2, :cond_9

    .line 651
    :goto_8
    return v0

    .line 637
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 638
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1700(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 639
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/telegram/ui/VoIPActivity;->access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 641
    :cond_26
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    if-nez v3, :cond_2f

    move v0, v1

    :cond_2f
    # invokes: Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V
    invoke-static {v2, v0}, Lorg/telegram/ui/VoIPActivity;->access$1600(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    if-eqz v0, :cond_4e

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$12;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-instance v3, Lorg/telegram/ui/VoIPActivity$12$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPActivity$12$1;-><init>(Lorg/telegram/ui/VoIPActivity$12;)V

    # setter for: Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/telegram/ui/VoIPActivity;->access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    move v0, v1

    .line 651
    goto :goto_8
.end method
