.class Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$7$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_d

    .line 434
    :goto_c
    return-void

    .line 432
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2202(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_c
.end method
