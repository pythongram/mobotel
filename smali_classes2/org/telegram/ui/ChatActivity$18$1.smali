.class Lorg/telegram/ui/ChatActivity$18$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$18;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$18;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$18;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$18;

    .prologue
    .line 2032
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2035
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2038
    :cond_16
    return-void
.end method
