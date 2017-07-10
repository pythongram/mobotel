.class Lorg/telegram/ui/ChatActivity$67;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->addToSelectedMessages(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$newVisibility:I

.field final synthetic val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 5377
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$67;->val$newVisibility:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$67;->val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5389
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5390
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$15602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5392
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 5380
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5381
    iget v0, p0, Lorg/telegram/ui/ChatActivity$67;->val$newVisibility:I

    if-ne v0, v1, :cond_1f

    .line 5382
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67;->val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5385
    :cond_1f
    return-void
.end method
