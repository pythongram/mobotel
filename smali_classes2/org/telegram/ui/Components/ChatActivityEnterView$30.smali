.class Lorg/telegram/ui/Components/ChatActivityEnterView$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 2132
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/16 v3, 0x8

    .line 2135
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2136
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2137
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2138
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2139
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2140
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2141
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 2142
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2144
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_56
    return-void
.end method
