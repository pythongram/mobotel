.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;
.super Ljava/util/TimerTask;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createCodeTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 709
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 713
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1500(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 714
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v5}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double/2addr v6, v2

    double-to-int v5, v6

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v4, v5}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1602(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;I)I

    .line 715
    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1502(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;D)D

    .line 716
    new-instance v4, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method
