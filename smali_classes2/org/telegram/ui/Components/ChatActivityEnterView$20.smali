.class Lorg/telegram/ui/Components/ChatActivityEnterView$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V
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
    .line 1250
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5602(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1256
    :cond_12
    return-void
.end method
