.class Lorg/telegram/ui/Components/ChatAttachAlert$20$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$20;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$20;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$20;

    .prologue
    .line 1535
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_b

    .line 1543
    :goto_a
    return-void

    .line 1541
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6302(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    goto :goto_a
.end method
